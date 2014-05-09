	.file	"code.c"
	.intel_syntax noprefix
	.text
	.globl	test_return
	.type	test_return, @function
test_return:
	push	ebp
	mov	ebp, esp
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], 7
	mov	DWORD PTR [eax+4], 5
	pop	ebp
	ret	4
	.size	test_return, .-test_return
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	push	ebp
	mov	eax, 12
	mov	ebp, esp
	pop	ebp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
