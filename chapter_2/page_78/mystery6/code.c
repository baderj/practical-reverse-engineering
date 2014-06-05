struct struct_arg1 {
	int size;
	int array[];
};


__int64 bitmask_of_match(struct struct_arg1 *s, int m)
{
	int size = s->size;	
	int index;
	for (index = 0; index < size; index++) {
		if (s->array[index] == m)
			return __int64( 1 << index );
	}
	return 0;
}