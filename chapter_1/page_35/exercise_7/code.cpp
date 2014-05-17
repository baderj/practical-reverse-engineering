#include <Windows.h>


IMAGE_SECTION_HEADER* get_section(char* pe_file, char* criterion)
{
	// line 1: mov eax, [esp+4]
	IMAGE_DOS_HEADER* dos_header = (IMAGE_DOS_HEADER*)pe_file;

	// lines 2-4: mov esi, [eax+3Ch]
	unsigned int pe_header_offset = dos_header->e_lfanew;

	// line 5: add esi, eax
	IMAGE_NT_HEADERS* nt_header = (IMAGE_NT_HEADERS*)(pe_file + pe_header_offset);

	// line 6: movzx eax, word ptr [esi+14h]
	unsigned short size_of_optional_header = nt_header->FileHeader.SizeOfOptionalHeader;

	// line 10: lea, [eax+esi+18h]
	IMAGE_OPTIONAL_HEADER* optional_header = &nt_header->OptionalHeader; // esi + 18h
	IMAGE_SECTION_HEADER* img_section_header = (IMAGE_SECTION_HEADER*)(optional_header + size_of_optional_header);
	
	// for loop in lines 7,8, 11 and 21, 23, 24, 25
	for (int i = 0; i < nt_header->FileHeader.NumberOfSections; i++)
	{
		// lines 14-16: call ds:dword_0_169A4
		int ret = check_section(img_section_header, criterion);

		// lines 17-20:
		if (!ret)
		{
			// lines 17-19, 30-34: mov eax, edi
			return img_section_header;
		}

		// line 22: add edi, 28h (28h = sizeof(IMAGE_SECTION_HEADER))
		img_section_header += sizeof(IMAGE_SECTION_HEADER); 
	}
	// lines 27-34: xor eax, eax
	return NULL;
}