char* strrchr(const char *cp, char ch) {
    int len = 0;
    do
    {    
        len++;                
    } while ( *(char *)cp++ );
    while( len >= 0 ) 
    {
        if( *(char *)cp == ch)
            return cp;
        len--;
        cp--;
    }
    return 0;
}