	.file	"code.c"
	.text
	.globl	test_return
	.align	16, 0x90
	.type	test_return,@function
test_return:                            # @test_return
# BB#0:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], 7
	mov	dword ptr [ebp - 4], 5
	movsd	xmm0, qword ptr [ebp - 8]
	movsd	qword ptr [eax], xmm0
	add	esp, 8
	pop	ebp
	ret	4
.Ltmp0:
	.size	test_return, .Ltmp0-test_return

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	push	ebp
	mov	ebp, esp
	sub	esp, 40
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, dword ptr [ebp + 8]
	lea	edx, dword ptr [ebp - 32]
	mov	dword ptr [ebp - 4], 0
	mov	dword ptr [ebp - 8], ecx
	mov	dword ptr [ebp - 12], eax
	mov	dword ptr [esp], edx
	call	test_return
	sub	esp, 4
	mov	eax, dword ptr [ebp - 32]
	mov	dword ptr [ebp - 24], eax
	mov	eax, dword ptr [ebp - 28]
	mov	dword ptr [ebp - 20], eax
	mov	eax, dword ptr [ebp - 24]
	add	eax, dword ptr [ebp - 20]
	mov	dword ptr [ebp - 36], eax
	mov	eax, dword ptr [ebp - 36]
	add	esp, 40
	pop	ebp
	ret
.Ltmp1:
	.size	main, .Ltmp1-main


	.ident	"Ubuntu clang version 3.5-1ubuntu1 (trunk) (based on LLVM 3.5)"
	.section	".note.GNU-stack","",@progbits
