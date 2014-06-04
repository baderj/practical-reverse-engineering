#include <stdlib.h>

bool copymembers(struct_arg1 *s1, struct_arg2 *s2)
{
	s1->field00_i = s2->field08_i;
	s1->field04_i = s2->field0c_i;
	return false;
}
