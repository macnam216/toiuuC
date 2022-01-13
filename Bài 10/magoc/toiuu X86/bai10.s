	.file	"bai10.c"
	.text
	.globl	n
	.data
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.long	10
	.text
	.globl	tong
	.type	tong, @function
tong:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L3
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	tong, .-tong
	.globl	tongPhanSo
	.type	tongPhanSo, @function
tongPhanSo:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L6
.L7:
	cvtsi2sdl	-12(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
.L6:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L7
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	tongPhanSo, .-tongPhanSo
	.globl	tongGiaiThua
	.type	tongGiaiThua, @function
tongGiaiThua:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movq	$0, -16(%rbp)
	movq	$1, -8(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L9
.L10:
	movl	-20(%rbp), %eax
	cltq
	movq	-8(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -16(%rbp)
	addl	$1, -20(%rbp)
.L9:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L10
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	tongGiaiThua, .-tongGiaiThua
	.section	.rodata
.LC3:
	.string	"Tong tu 1 den %d l\303\240 %d.\n"
	.align 8
.LC4:
	.string	"Tong giai thua tu 1! den %d! la %ld. \n"
	.align 8
.LC5:
	.string	"Ket qua cac bieu thuc y v\303\240 z: \t %d \t %d \n"
.LC7:
	.string	"\ntime: %f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$1468796, -44(%rbp)
	movl	$4894179, -40(%rbp)
	movl	n(%rip), %eax
	movl	%eax, %edi
	call	tong
	movl	%eax, -36(%rbp)
	movl	n(%rip), %eax
	movl	%eax, %edi
	call	tongGiaiThua
	movq	%rax, -32(%rbp)
	call	clock@PLT
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.L13
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	imull	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	imull	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$456, %eax
	movl	%eax, -52(%rbp)
	jmp	.L14
.L13:
	movl	-36(%rbp), %eax
	cltq
	imulq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	movsd	.LC2(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	imull	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.L14:
	movl	n(%rip), %eax
	movl	-36(%rbp), %edx
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	n(%rip), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	call	clock@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC6(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1083129856
	.align 8
.LC6:
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
