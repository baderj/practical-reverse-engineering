struct _arg_1 {
    /* 8 bytes of other members */
    int off_8h;
    /* 58 bytes of other members */
    int off_3Ch;
} arg_1;


int __userpurge sub_1172E(struct _arg_1 *arg_1, struct _arg_1 **arg_2, 
        int *arg_3, int arg_4)
{
    switch ( arg_4 )
    {
    case 1:
        arg_1 += 64;
        break;
    case 2:
        arg_1 += 68;
        break;
    case 3:
        arg_1 += 94;
        break;
    case 12:
        arg_1 += 12;
        break;
    default:
        return arg_1;
    }

    if( arg_1 == 12 )
        *arg_3 = (arg_1->off_8h) / 2;
    else
        *arg_3 = (arg_1->off_3Ch) / 2;

    *arg_2 = arg_1;
    return arg_1;
}
