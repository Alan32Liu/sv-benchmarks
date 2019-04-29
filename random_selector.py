"""Randomly selects the file to instrument and test with."""

import json
import os
import pdb
import random
import re
import threading
import subprocess


NUM_FILES = 0
NUM_NEEDS = 1
BLACKLIST = 'BlacklistBenchmarks'
LENGTH_DICT_FILE = 'length_dict_i'
SLOC_MEASURE = "grep 'Total Physical Source Lines of Code (SLOC)' | grep -o '[0-9,]*'"
GCOV_CMD = "gcc -fprofile-arcs -ftest-coverage -o "
LEGION_DIR = "../../Principes"
INPUTS_DIR = "{}/inputs".format(LEGION_DIR)

TIME_RESTRICTION = int(1/6 * 60 * 60)   # seconds
MEMO_RESTRICTION = 64 * 1000 * 1000  # KB
RESTRICTED_LEGION = 'restricted_legion.sh'
RESTRICTION = "ulimit -t {} -m {} -v {}\n".format(
    TIME_RESTRICTION, MEMO_RESTRICTION, MEMO_RESTRICTION)
print(RESTRICTION)
LEGION_CMD_PREFIX = "python3 principes.py ../Benchmarks/sv-benchmarks/c/instr"
# pdb.set_trace()


def parse_target_dirs():
    with open('target_dirs', 'r') as file_targets:
        return [target[:-7] for target in file_targets.readlines()]


def parse_blacklist():
    with open(BLACKLIST, 'r') as blacklist_file:
        # .instr\n are the last six chars,
        # we want to leave it as .i
        return [target[:-5] for target in blacklist_file.readlines()]


def get_length_dict():
    return read_length_dict() or generate_length_dict()


def read_length_dict():
    global NUM_FILES
    length_dict = {}
    try:
        with open(LENGTH_DICT_FILE, 'r') as dict_file:
            for k, v in json.load(dict_file).items():
                length_dict[int(k)] = v
                NUM_FILES += len(v)
    except FileNotFoundError:
        print("No code length file found")
    return length_dict


def generate_length_dict():
    target_is, tmp_length_dict = [], {}
    for target_dir in TARGET_DIRS:
        for file in os.listdir("c/{}".format(target_dir)):
            process_file(target_dir, file, tmp_length_dict)

    with open(LENGTH_DICT_FILE, 'w') as f:
        json.dump(tmp_length_dict, f)

    return tmp_length_dict


def process_file(target_dir, file, length_dict):
    if file[-4:] != '.yml':
        return
    with open("c/{}/{}".format(target_dir, file), 'r') as target_yml:
        target_i, num_line = parse_yml(target_yml, target_dir)
    if num_line is None:
        return
    record_file(target_i, num_line, length_dict)


def parse_yml(target_yml, target_dir):
    content = target_yml.read()
    match_i = re.search(r"input_files: '(.*?)'\n", content)
    if not match_i:
        return None, None
    target_i = "{}/{}".format(
        target_dir, match_i.groups()[0])
    if target_i[-1] != 'i':
        return None, None
    target_c = target_i[:-1] + 'c'
    try:
        num_repr = os.popen(
            'sloccount c/{} | {}'.format(
                target_c, SLOC_MEASURE)).read()
        num_line = int(num_repr.replace(',', ''))
        return target_i, num_line
    except ValueError:
        pass
    return None, None


def record_file(target_i, num_line, length_dict):
    global NUM_FILES
    if num_line not in length_dict:
        length_dict[num_line] = []
    length_dict[num_line].append(target_i)
    NUM_FILES += 1


def execute_legion(instr):
    legion_cmd = '(cd {}; {}/{} 0);\n'.format(LEGION_DIR, LEGION_CMD_PREFIX, instr)

    with open(RESTRICTED_LEGION, 'w') as restrictor:
        restrictor.writelines([RESTRICTION, legion_cmd, 'echo $?'])

    # pdb.set_trace()
    print(os.system('bash {}'.format(RESTRICTED_LEGION)))
    # sp_command = ['bash', RESTRICTED_LEGION]
    # print(subprocess.check_output(sp_command, cwd=LEGION_DIR))
    # try:
    #     print("Start running Legion")
    #     # report = subprocess.check_output(sp_command, cwd=LEGION_DIR)
    # except:
    #     pass
        # report = os.popen(command)
        # print(report)
    # pdb.set_trace()


def execute_binary():
    print("Compile source code for gcov...")
    os.system("(cd gcov; {} {src} {src}.i ../c/__VERIFIER.c)".format(GCOV_CMD, src=src_name[:-2]))
    print("Compute coverage...")
    ordered_inputs = sorted([float(infile) for infile in os.listdir(
        "{}/{}".format(INPUTS_DIR, src_name[:-2]))])
    # pdb.set_trace()
    print(len(ordered_inputs))
    # pdb.set_trace()
    for input_str in ordered_inputs:
        print("    Execute binary with input...")
        input_path = "{}/{}/{}".format(INPUTS_DIR, src_name[:-2], input_str)
        command = "(cd gcov; ./{} < ../{})".format(src_name[:-2], input_path)
        report = os.popen(command)
        print(report.read())
        # os.system("(cd gcov; ./{} < ../{})".format(src_name[:-2], input_path))
        print("    Computing the coverage...")
        percentage = os.popen("(cd gcov; gcov -b -c -a -u {} | grep 'Taken at least once:' | grep -o [0-9.]*%)".format(src_name[:-2])).read()
        percentages.append(float(percentage[:-2]))


def cleanup():
    os.system("rm -rf gcov/*")
    os.system("rm -rf c/instr/*")
    os.system("rm -rf ../../Principes/inputs/*")


cleanup()
TARGET_DIRS = parse_target_dirs()
# {line of source code : file name}
unfiltered_length_dict = get_length_dict()
blacklist = parse_blacklist()

length_dict = {k: [file for file in v if file not in blacklist]
               for k, v in unfiltered_length_dict.items()}

sorted_lengths = list(sorted(length_dict.keys()))
group_size = int(len(sorted_lengths)/NUM_NEEDS)
grouped_lengths = \
    [sorted_lengths[group_size*i:group_size*(i+1)-1]
        for i in range(NUM_NEEDS)]

# print(grouped_lengths)
print(NUM_FILES)

# Assume we prefer diversity in length,
# it is better to first select randomly in length
# and then randomly pick files in each length selected
lengths = [random.choice(group) for group in grouped_lengths]
print(lengths)
selected = [random.choice(list(length_dict[length])) for length in lengths]
print(selected)
selected = ['heap-manipulation/sll_to_dll_rev-11.i']
all_percentages = []
for code in selected:
    src_dir, src_name = code.split("/")
    print("Instrumenting source code...")
    os.system("(cd c; mkdir instr/{}; make {}instr)".format(
        src_dir, code[:-1]))
    if not os.listdir("c/instr/{}".format(src_dir)):
        print("Instrumentation unsuccessful, cleanup...")
        os.system("rm -rf c/instr/{}".format(src_dir))
        continue
    print("Copy preprocessed code to gcov")
    os.system("cp c/{}i gcov/".format(code[:-1]))
    # os.system("{} {} {}.c".format(GCOV_CMD, src_dir, code[:-1]))


# selected = ['array-examples/sanfoundry_24-1.instr']
    percentages = []
    try:
        print("Run Legion...")
        execute_legion(code[:-1] + 'instr')
    except:
        pdb.set_trace()
        pass

    # execute_legion(code[:-1] + 'instr')

    try:
        execute_binary()
        # print("Compile source code for gcov...")
        # os.system("(cd gcov; {} {src} {src}.i ../c/__VERIFIER.c)".format(GCOV_CMD, src=src_name[:-2]))
        # print("Compute coverage...")
        # for input_str in os.listdir("{}/{}".format(INPUTS_DIR, src_name[:-2])):
        #     print("    Execute binary with input...")
        #     input_path = "{}/{}/{}".format(INPUTS_DIR, src_name[:-2], input_str)
        #     os.system("(cd gcov; ./{} < ../{})".format(src_name[:-2], input_path))
        #     print("    Computing the coverage...")
        #     percentage = os.popen("(cd gcov; gcov -b -c -a -u {} | grep 'Taken at least once:' | grep -o [0-9.]*\%)".format(src_name[:-2])).read()
        #     percentages.append(float(percentage[:-2]))
    except:
        pass    
    all_percentages.append(percentages)

print(all_percentages)
