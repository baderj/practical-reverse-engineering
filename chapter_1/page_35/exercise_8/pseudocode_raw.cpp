int __userpurge sub_1172E(struct _arg_1 *arg_1, struct _arg_1 **arg_2, 
                int *arg_3, int a4)
{
    int tmp;

    switch ( a4 )
    {
    case 1:
        tmp = (arg_1->off_3Ch) / 2;
        arg_1 += 64;
        break;
    case 2:
        tmp = (arg_1->off_3Ch) / 2;
        arg_1 += 68;
        break;
    case 3:
        tmp = (arg_1->off_3Ch) / 2;
        arg_1 += 94;
        break;
    default:
        if ( a4 != 12 )
            return arg_1;
        tmp = (arg_1->off_8h)/2;
        arg_1 += 12;
        break;
    }
    *arg_3 = tmp;
    *arg_2 = arg_1;
    return arg_1;
}
