#include <stdlib.h>

bool string2integer(char *str, int *result) {
	int index = 0;
	long res = 0;
	char sign = 1;

	// parse the(optional) sign
	if (str[index] == '+') {
		index++;
	}
	else if (str[index] == '-') {
		index++;
		sign = -1;
	}

	// skip any leading zeros
	while (str[index] == '0')
		index++;

	// parse the number
	while ('0' <= str[index] <= '9')
		res = res * 10 + (str[index] - '0');

	if (abs(res) >= 2 ^ 31)
		return false;
	else {
		*result = res;
		return true;
	}
}
