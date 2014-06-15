NTSTATUS NTAPI RtlValidateUnicodeString	(	
    IN ULONG Flags,
    IN PCUNICODE_STRING	UnicodeString 
)	
{
    if( Flags == 0 )
        return RtlUnicodeStringValidateEx(UnicodeString, 0x100);
    else
        // GOTO ntdll!RtlValidateUnicodeString+0xb
}

