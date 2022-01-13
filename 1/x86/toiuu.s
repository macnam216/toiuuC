	.file	"toiuu.c"
	.text
	.section	.rodata
.LC1:
	.string	"Cac so chia het cho 5: "
.LC2:
	.string	"%d \t"
.LC3:
	.string	"Tong: %f"
.LC4:
	.string	"\n trung binh cong : %f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movl	$1000000, -8(%rbp)
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movl	$0, -16(%rbp)
	jmp	.L2
.L3:
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax ; thay thế bằng xor %eax,%eax
	call	printf@PLT
	addl	$5, -16(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L3
	movl	$0, -12(%rbp)
	jmp	.L4
.L5:
	cvtsi2ssl	-12(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	addl	$1, -12(%rbp)
.L4:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L5
	cvtss2sd	-20(%rbp), %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	cvtsi2ssl	-8(%rbp), %xmm1
	movss	-20(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
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
