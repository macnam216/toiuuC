	.file	"tu.c"
	.text
	.section	.rodata
.LC0:
	.string	"Tong: %d"
.LC1:
	.string	"\n trung binh cong : %f"
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
	subq	$32, %rsp
	movl	$0, -28(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -24(%rbp)
	movl	$1000000, -8(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L2
.L3:
	movl	-20(%rbp), %eax
	addl	%eax, -28(%rbp)
    movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
    movl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
    movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -24(%rbp)
	addl	$4, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L3
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-24(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	leaq	.LC1(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
