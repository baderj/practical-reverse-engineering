VOID FASTCALL ObFastDereferenceObject	(	
    IN PEX_FAST_REF 	FastRef,
    IN PVOID 	Object 
)	
{
    while( FastRef-&gt;Object == Object &amp;&amp; FastRef-&gt;RefCnt &lt; 7 ) {
        _Atomic(EX_FAST_REF) *FastRef;
        EX_FAST_REF oldVal = *atomic_load(FastRef);
        EX_FAST_REF newVal = old;
        newVal.RefCnt += 1;
        if( atomic_compare_exchange_strong(FastRef, *oldVal, newVal) )
            return; // Successful
    }
    // fast dereference didn't work out, try the regular dereference routine
    ObfDereferenceObejct(Object);
}
