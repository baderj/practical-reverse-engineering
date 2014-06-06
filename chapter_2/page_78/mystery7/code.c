unsigned int strlen(const char *s) {
    unsigned int len = 0;
    while( s[len] != '\0' )
        len++;
    return len;    
}