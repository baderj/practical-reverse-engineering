VOID KeInitializeDpc(
        _Out_     PRKDPC Dpc,
        _In_      PKDEFERRED_ROUTINE DeferredRoutine,
        _In_opt_  PVOID DeferredContext
)
{
    Dpc->DpcData = 0;
    Dpc->DeferredRoutine = DeferredRoutine;
    DeferredRoutine = DeferredContext;
    Dpc->Type = 0x13;
    Dpc->Importance = 1;
    Dpc->Number = 0;
    Dpc->DeferredContext = DeferredContext;
}



