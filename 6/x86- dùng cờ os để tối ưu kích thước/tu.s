	.file	"tu.c"
	.text
	.section	.rodata
.LC0:
	.string	"%c , %c ,%c"
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
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$7814978375809066862, %rax
	movabsq	$7018975946639437413, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movabsq	$8026662990246798446, %rax
	movabsq	$8464643461439583593, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$8031722912658976367, %rax
	movq	%rax, -32(%rbp)
	movb	$0, -24(%rbp)
	movzbl	-64(%rbp), %eax
	movb	%al, -67(%rbp)
	movzbl	-63(%rbp), %eax
	movb	%al, -66(%rbp)
	movzbl	-62(%rbp), %eax
	movb	%al, -65(%rbp)
	movsbl	-65(%rbp), %ecx
	movsbl	-66(%rbp), %edx
	movsbl	-67(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2
	call	__stack_chk_fail@PLT
.L2:
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
