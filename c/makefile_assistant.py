import os

INSTR_DIR = 'instr'


def register_all_c():
    return os.popen("find . -mindepth 2 -name '*.c'").read().split('\n')[:-1]


def prepare_instr_dir(file_path):
    target_path = [INSTR_DIR] + file_path.split("/")[1:-1]

    for i in range(len(target_path)):
        assert not os.system("mkdir -p {}".format("/".join(target_path[:i+1])))


def instrument_c(c_file):
    assert c_file[-2:] == '.c'
    intr_file = c_file[:-1] + 'instr'
    prepare_instr_dir(intr_file)
    os.system("make {}".format(intr_file))


def estimate_c_complexity(c_file):
    # print(c_file)
    sloc = "sloccount {} | grep 'Effort' |  grep -oP '(?<=\()[\.0-9]+'".format(
        c_file)x
    try:
        effort = float(os.popen(sloc).read())
    except ValueError:
        effort = None
    return effort


def estimate_all():
    for c_file in register_all_c():
        estimate_c_complexity(c_file)


def instrument_below_threshold(threshold):
    for c_file in register_all_c():
        complexity = estimate_c_complexity(c_file)
        if complexity is None or complexity > threshold:
            continue
        instrument_c(c_file)


def instrument_all():
    for c_file in register_all_c():
        instrument_c(c_file)


def clean_all():
    assert not os.system("rm -rf {}".format(INSTR_DIR))


if __name__ == "__main__":
    # instrument_all()
    # clean_all()
    # estimate_all()
    instrument_below_threshold(0.05)
