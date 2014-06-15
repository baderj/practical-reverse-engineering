VOID NTAPI KiInitializeTSS	(	
    IN PKTSS 	Tss
)	
{
    Tss->Flags = 0;
    Tss->LDT = 0;
    Tss->IoMapBase = 0x20AC;
    Tss->Ss0 = 0x10;
}
