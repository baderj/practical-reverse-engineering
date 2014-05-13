#include <windows.h> 
#include <TlHelp32.h> 
#include <intrin.h> 

typedef struct _IDTR {
	DWORD base;
	SHORT limit;
} IDTR, *PIDTR;

BOOL APIENTRY DllMain(HMODULE hModule,
	DWORD ul_reason_for_call,
	LPVOID lpReserved
	) // line 1
{
	// line 2 ---
	IDTR idtr;
	__sidt(&idtr);	
	if (idtr.base > 0x8003F400 && idtr.base < 0x80047400) {
		return FALSE;
	}
	// --- line 17
	// line 19 ---
	PROCESSENTRY32 procentry;
	memset(&procentry, 0, sizeof(PROCESSENTRY32));
	procentry.dwSize = sizeof(procentry); // 0x128
	HANDLE h;	
	h = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
	if (h == INVALID_HANDLE_VALUE)
		return FALSE;
	// --- line 34
	// line 36 ---
	int ret = Process32First(h, &procentry);
	while (ret) {
		// line 44 - line 51 AND line 59 - line 65
		if (!wcscmp(procentry.szExeFile, L"explorer.exe")) {						
			break;
		}
		ret = Process32Next(h, &procentry);
	}
	// --- line 65
	// line 66 --
	if (ret)		
		if (procentry.th32ParentProcessID == procentry.th32ProcessID)
			return FALSE;	
	// --- line 81
	// line 70 ---
	else 
		if (ul_reason_for_call == DLL_PROCESS_DETACH)
			return FALSE;	
	// --- line 81

	// line 82
	if (ul_reason_for_call == DLL_PROCESS_ATTACH)
		CreateThread(0, 0, (LPTHREAD_START_ROUTINE)0x100032D0, 0, 0, 0);
	return TRUE;
}
