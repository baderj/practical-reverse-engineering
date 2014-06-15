VOID KeInitializeQueue(
  _Out_  PRKQUEUE Queue,
  _In_   ULONG Count
)
{
    Queue->Header.Type = 4;
    Queue->Header.Abandoned = 0;
    Queue->Header.Size = 10; 
    Queue->Header.SignalState = 0;


    Queue->WaitListHead.Blink = &Queue->WaitListHead;
    Queue->WaitListHead.Flink = &Queue->WaitListHead;

    Queue->EntryListHead.Blink = &(Queue->EntryListHead);
    Queue->EntryListHead.Flink = &(Queue->EntryListHead);

    Queue->ThreadListHead.Blink = &(Queue->ThreadListHead);
    Queue->ThreadListHead.Flink = &(Queue->ThreadListHead);

    Queue->CurrentCount = Count;
    if( Count == 0 )
        Queue->MaximumCount = [nt!KeNumberProcessors]
    else
        Queue->MaximumCount = Count
    return
}
