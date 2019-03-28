#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <assert.h>

void __VERIFIER_error() {
	exit(100);
}

int __my_read_int(int len) {
	char str[len];
	read(0, str, len);
	// scanf("%s", str);
	return atoi(str);
}

int __VERIFIER_nondet_int() {
	int x = __my_read_int(4);
	// printf("x = %d\n", x);
	return x;
}

int __VERIFIER_nondet_short() {
	return __my_read_int(2);
}

int __VERIFIER_nondet_ulong() {
	return __my_read_int(4);
}

int __VERIFIER_nondet_char() {
	return __my_read_int(4);
}

int __VERIFIER_assume(int b) {
	return b;
}

// int __VERIFIER_nondet_const_char_pointer() {

// }

//int __VERIFIER_nondet_S8() {
	// How many bytes in S8?
//	return __my_read_int(8);
//}
