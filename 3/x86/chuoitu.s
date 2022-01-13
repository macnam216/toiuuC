	.file	"toiuu3.c"
	.text
	.section	.rodata
.LC0:
	.string	"toiyeukma"
.LC1:
	.string	"So ki tu: %d\n"
.LC2:
	.string	"Ket qua: \t %d \t %d \t %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax   
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -24(%rbp) ;đặt biến -24(%rbp) làm biến chung
	movl	$1, -40(%rbp)
	jmp	.L2
.L3:
	movl	-24(%rbp), %eax
	addl	%eax, -32(%rbp)
	addl	$1, -40(%rbp)
.L2:
	cmpl	$100000000, -40(%rbp)
	jle	.L3
	movl	-24(%rbp), %eax
	addl	$2106, %eax
	movl	%eax, -36(%rbp)
	movl	-24(%rbp), %eax
	imull	$2106, %eax, %eax
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~36.04) 9.3.0"
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
