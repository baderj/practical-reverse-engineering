NTKERNELAPI VOID KeInitializeApc(
    PKAPC Apc,
    PKTHREAD Thread,
    KAPC_ENVIRONMENT Environment,
    PKKERNEL_ROUTINE KernelRoutine,
    PKRUNDOWN_ROUTINE RundownRoutine,
    PKNORMAL_ROUTINE NormalRoutine,
    KPROCESSOR_MODE ProcessorMode,
    PVOID NormalContext
);
{
    Apc->Type = 0x12;
    Apc-Thread = 0x30;

    if( Environment == CurrentApcEnvironment)
        Apc->ApcStateIndex == Thread->ApcStateIndex;
    else
        Apc->ApcStateIndex = Environment;

    Apc->Environment = Thread;
    Apc->KernelRoutine = KernelRoutine;    
    Apc->RundownRoutine = RundownRoutine;
    Apc->NormalRoutine = NormalRoutine;

    if( NormalRoutine == NULL) {
        Apc->ApcMode = 0;
        Apc->NormalContext = NULL;
    }
    else {
        Apc->ApcMode = ProcessMode;
        Apc->NormalContext = NormalContext;
    }
    Apc->Inserted = 0;
    return 
}
