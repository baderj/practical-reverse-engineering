unsigned int system_info(void arg1, unsigned int nr_bytes, struct1 *result)
{
    unsigned int nr_of_copied_bytes = 0;
    if ( nr_bytes >= 26 ) {
        SYSTEMTIME SystemTime;
        GetSystemTime(&SystemTime);
        memcpy(result, &SystemTime, sizeof(struct SYSTEMTIME));
        nr_of_copied_bytes += sizeof(struct SYSTEMTIME);
    }
    if ( nr_bytes >= 18 ) {
        result->dwProcessId = GetCurrentProcessId();
        nr_of_copied_bytes += sizeof(DWORD);
    }
    if ( nr_bytes >= 14 ) {
        result->dwTickCount = GetTickCount()
        nr_of_copied_bytes += sizeof(DWORD);
    }
    if ( nr_bytes >= 10 ) {
        LARGE_INTEGER perfCounter;
        QueryPerformanceCounter(&perfCounter);
        result->liPerformanceCounter = perfCounter;
        nr_of_copied_bytes += sizeof(LARGE_INTEGER);
    }
    return nr_of_copied_bytes;
}
