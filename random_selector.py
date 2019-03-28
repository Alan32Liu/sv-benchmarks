"""Randomly selects the file to instrument and test with."""

import csv
import json
import os
import pdb
import random
import re
import threading
import subprocess
from matplotlib import pyplot


NUM_FILES = 0
NUM_NEEDS = 4
LENGTH_DICT_FILE = 'length_dict_i'
SLOC_MEASURE = "grep 'Total Physical Source Lines of Code (SLOC)' | grep -o '[0-9,]*'"
GCOV_CMD = "gcc -fprofile-arcs -ftest-coverage -o "
LEGION_CMD = "python3 principes.py ../Benchmarks/sv-benchmarks/c/instr/"
LEGION_DIR = "../../Principes"
LEGION_RUNTIME = 60
INPUTS_DIR = "{}/inputs".format(LEGION_DIR)


def parse_target_dirs():
    with open('target_dirs', 'r') as file_targets:
        return [target[:-7] for target in file_targets.readlines()]


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
    target_is, length_dict = [], {}
    for target_dir in TARGET_DIRS:
        for file in os.listdir("c/{}".format(target_dir)):
            process_file(target_dir, file, length_dict)

    with open(LENGTH_DICT_FILE, 'w') as f:
        json.dump(length_dict, f)

    return length_dict


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


def execute_legion(code):
    def on_timeout(proc, status_dict):
        """Kill process on timeout and note as status_dict['timeout']=True"""
        # a container used to pass status back to calling thread
        status_dict['timeout'] = True
        print("timed out")
        proc.kill()
    status_dict = {'timeout': False}
    command = "{}{} 0".format(LEGION_CMD, code).split(" ")
    proc = subprocess.Popen(args=command, cwd=LEGION_DIR)
    timer = threading.Timer(LEGION_RUNTIME, on_timeout, (proc, status_dict))
    timer.start()
    proc.wait()
    timer.cancel()
    print(status_dict)

TARGET_DIRS = parse_target_dirs()
# {line of source code : file name}
length_dict = get_length_dict()
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

# for code in selected:
#     src_dir, src_name = code.split("/")
#     os.system("(cd c; mkdir instr/{}; make {}instr)".format(
#         src_dir, code[:-1]))
#     if not os.listdir("c/instr/{}".format(src_dir)):
#         os.system("rm -rf c/instr/{}".format(src_dir))
#         continue
#     os.system("cp c/{}c gcov/".format(src_name[:-1]))
#     os.system("{} {} {}.c".format(GCOV_CMD, src_dir, code[:-1]))


selected = ['array-examples/sanfoundry_24-1.instr']
percentages = []
for code in selected:
    src_dir, src_name = code.split("/")
    execute_legion(code)
    os.system("(cd gcov; {} {src} {src}.c ../c/__VERIFIER.c)".format(GCOV_CMD, src=src_name[:-6]))
    for input_str in os.listdir("{}/{}".format(INPUTS_DIR, src_name[:-6])):
        input_path = "{}/{}/{}".format(INPUTS_DIR, src_name[:-6], input_str) 
        os.system("(cd gcov; ./{} < ../{})".format(src_name[:-6], input_path))
        percentage = os.popen("(cd gcov; gcov -b -c -a -u {} | grep 'Taken at least once:' | grep -o [0-9.]*\%)".format(src_name[:-6])).read()
        percentages.append(float(percentage[:-2]))

print(percentages)
pyplot.plot(percentages)
pyplot.show()
