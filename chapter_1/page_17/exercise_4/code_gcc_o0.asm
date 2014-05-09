	.file	"code.c"
	.intel_syntax noprefix
	.text
	.globl	test_return
	.type	test_return, @function
test_return:
	push	ebp
	mov	ebp, esp
	sub	esp, 16
	mov	DWORD PTR [ebp-8], 7
	mov	DWORD PTR [ebp-4], 5
	mov	ecx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp-4]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR [ebp+8]
	leave
	ret	4
	.size	test_return, .-test_return
	.globl	main
	.type	main, @function
main:
	push	ebp
	mov	ebp, esp
	sub	esp, 20
	lea	eax, [ebp-8]
	mov	DWORD PTR [esp], eax
	call	test_return
	sub	esp, 4
	mov	edx, DWORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp-4]
	add	eax, edx
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-12]
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
