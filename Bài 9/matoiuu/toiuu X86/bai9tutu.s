	.file	"bai9tu.c"
	.text
	.section	.rodata
.LC1:
	.string	"thoi gian %f seconds"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4064, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -4060(%rbp)
	movl	$5, -4056(%rbp)
	movl	$25, -4052(%rbp)
	movl	$7, -4048(%rbp)
	call	clock@PLT
	movq	%rax, -4040(%rbp)
	movl	-4052(%rbp), %eax
	cltd
	idivl	-4048(%rbp)
	movl	%edx, %eax
	imull	-4060(%rbp), %eax
	cltd
	idivl	-4056(%rbp)
	cltd
	idivl	-4048(%rbp)
	movl	%edx, -4044(%rbp)
	movl	$0, -4064(%rbp)
	jmp	.L2
.L3:
	movl	-4044(%rbp), %eax
	imull	-4064(%rbp), %eax
	movl	%eax, %edx
	movl	-4064(%rbp), %eax
	cltq
	movl	%edx, -4016(%rbp,%rax,4)
	addl	$1, -4064(%rbp)
.L2:
	cmpl	$999, -4064(%rbp)
	jle	.L3
	call	clock@PLT
	movq	%rax, -4032(%rbp)
	movq	-4032(%rbp), %rax
	subq	-4040(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -4024(%rbp)
	movq	-4024(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax 
	inc 	%eax
	call	printf@PLT
	xorl %eax, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	movq   %rbp, %rsp    
	popq   %rbp 
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
