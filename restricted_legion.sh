ulimit -t 600 -m 64000000 -v 64000000
(cd ../../Principes; python3 principes.py ../Benchmarks/sv-benchmarks/c/instr/heap-manipulation/sll_to_dll_rev-11.instr 0);
echo $?