	.file	"tu.c"
	.text
	.globl	laSoNguyenTo2
	.type	laSoNguyenTo2, @function
laSoNguyenTo2:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jg	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	cmpl	$2, -20(%rbp)
	jne	.L4
	movl	$1, %eax
	jmp	.L3
.L4:
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L3
.L5:
	movl	$3, -4(%rbp)
	jmp	.L6
.L8:
	movl	-20(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L3
.L7:
	addl	$2, -4(%rbp)
.L6:
	cvtsi2sdl	-4(%rbp), %xmm1
	movsd	%xmm1, -32(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm0
	call	sqrt@PLT
	comisd	-32(%rbp), %xmm0
	jnb	.L8
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	laSoNguyenTo2, .-laSoNguyenTo2
	.section	.rodata
.LC0:
	.string	"Nhap so can kiem tra"
.LC1:
	.string	"%d"
.LC2:
	.string	"La so nguyen to"
.LC3:
	.string	"Khong phai so nguyen to"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	laSoNguyenTo2
	testb	%al, %al
	je	.L10
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L11
.L10:
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L11:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
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
