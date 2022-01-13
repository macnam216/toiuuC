	.file	"mang.c"
	.text
	.section	.rodata
.LC0:
	.string	"ngua "
.LC1:
	.string	"mat"
.LC2:
	.string	"len"
.LC3:
	.string	"troi"
.LC4:
	.string	"han"
.LC5:
	.string	"doi"
.LC6:
	.string	"up"
.LC7:
	.string	"xuong"
.LC8:
	.string	"goi"
.LC9:
	.string	"vo"
.LC10:
	.string	"%c , %c ,%c "
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
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -115(%rbp)
	movq	-112(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, -114(%rbp)
	movq	-112(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, -113(%rbp)
	movsbl	-113(%rbp), %ecx
	movsbl	-114(%rbp), %edx
	movsbl	-115(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
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
