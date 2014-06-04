#include <stdlib.h>

int retrieve_value_at_minus8(int* something)
{
	if (!something)
		return 0;
	else
		return *(something - 8);
}
