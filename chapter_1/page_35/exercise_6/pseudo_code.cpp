/* sizeof(s1) = 36 */
struct _s1 {
    char off_0h;
    /* (13h bytes of other members) */
    struct _arg_2 *off_14h;
    /* other members */
}

struct _arg_1 {
    /* (23h bytes of other members) */
    char off_23h;
    /* (36h bytes of other members) */
    struct _s1 off_60h[??];
}

struct _s2 {
    /* (38h bytes of other members) */
    int* off_38[...];
}

struct _arg_2 {
    /* (8 bytes of other members) */
    struct _s2 off_8h;
}

unknown_type __fastcall sub_13842(struct _arg_1 *arg_1, struct* _arg_2 arg_2) {
    struct _v1 *v1 = arg_1->off_60h;
    struct _v2 *v2 = arg_2->off_8h;
    arg_1->off_23h--;
    v1 -= 36;
    arg_1->off_60h = v1;
    v1->off_14h = arg_2;
    char index = v1->off_0h;
    int *func = v2->off_38h[index];
    unknown_type return_value = (*func)(arg_2, arg_1);
    return return_value;
}
