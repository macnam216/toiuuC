	.file	"bai10tu.c"
	.text
	.p2align 4
	.globl	tong
	.type	tong, @function
tong:
.LFB23:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	jle	.L8
	leal	-1(%rdi), %eax
	cmpl	$17, %eax
	jbe	.L9
	movl	%edi, %edx
	movdqa	.LC0(%rip), %xmm1
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movdqa	.LC1(%rip), %xmm3
	shrl	$2, %edx
	.p2align 4,,10
	.p2align 3
.L4:
	movdqa	%xmm1, %xmm2
	addl	$1, %eax
	paddd	%xmm3, %xmm1
	paddd	%xmm2, %xmm0
	cmpl	%edx, %eax
	jne	.L4
	movdqa	%xmm0, %xmm1
	movl	%edi, %ecx
	psrldq	$8, %xmm1
	andl	$-4, %ecx
	paddd	%xmm1, %xmm0
	leal	1(%rcx), %edx
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpl	%ecx, %edi
	je	.L13
	.p2align 4,,10
	.p2align 3
.L7:
	addl	%edx, %eax
	addl	$1, %edx
	cmpl	%edx, %edi
	jge	.L7
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	xorl	%eax, %eax
	ret
.L9:
	movl	$1, %edx
	xorl	%eax, %eax
	jmp	.L7
	.cfi_endproc
.LFE23:
	.size	tong, .-tong
	.p2align 4
	.globl	tongGiaiThua
	.type	tongGiaiThua, @function
tongGiaiThua:
.LFB24:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	jle	.L17
	leal	-1(%rdi), %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	addq	$2, %rsi
	.p2align 4,,10
	.p2align 3
.L16:
	imulq	%rdx, %rcx
	addq	$1, %rdx
	addq	%rcx, %rax
	cmpq	%rdx, %rsi
	jne	.L16
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE24:
	.size	tongGiaiThua, .-tongGiaiThua
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Tong tu 1 den %d l\303\240 %d.\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"Tong giai thua tu 1! den %d! la %ld. \n"
	.align 8
.LC5:
	.string	"Ket qua cac bieu thuc y v\303\240 z: \t %d \t %d \n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	n(%rip), %r8d
	testl	%r8d, %r8d
	jle	.L26
	leal	-1(%r8), %esi
	cmpl	$17, %esi
	jbe	.L27
	movl	%r8d, %edx
	movdqa	.LC0(%rip), %xmm1
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movdqa	.LC1(%rip), %xmm3
	shrl	$2, %edx
	.p2align 4,,10
	.p2align 3
.L22:
	movdqa	%xmm1, %xmm2
	addl	$1, %eax
	paddd	%xmm3, %xmm1
	paddd	%xmm2, %xmm0
	cmpl	%eax, %edx
	jne	.L22
	movdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	psrldq	$8, %xmm1
	andl	$-4, %edx
	paddd	%xmm1, %xmm0
	leal	1(%rdx), %eax
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ecx
	cmpl	%r8d, %edx
	je	.L23
	.p2align 4,,10
	.p2align 3
.L24:
	addl	%eax, %ecx
	addl	$1, %eax
	cmpl	%eax, %r8d
	jge	.L24
.L23:
	addq	$2, %rsi
	xorl	%eax, %eax 
	inc 	%eax
	xorl	%r12d, %r12d
	movl	$1, %edx
	.p2align 4,,10
	.p2align 3
.L25:
	imulq	%rax, %rdx
	addq	$1, %rax
	addq	%rdx, %r12
	cmpq	%rsi, %rax
	jne	.L25
.L20:
	movl	%ecx, %eax
	movl	%r8d, %edx
	movl	$1, %edi
	imull	%r12d, %eax
	leaq	.LC2(%rip), %rsi
	leal	(%rax,%rax,2), %ebx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	n(%rip), %edx
	movq	%r12, %rcx
	xorl	%eax, %eax
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	pxor	%xmm0, %xmm0
	leal	1(%rbx), %edx
	xorl	%eax, %eax
	cvtsi2sdl	%ebx, %xmm0
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	addsd	.LC4(%rip), %xmm0
	cvttsd2sil	%xmm0, %ecx
	call	__printf_chk@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	xorl	%ecx, %ecx
	xorl	%r12d, %r12d
	jmp	.L20
.L27:
	xorl	%eax, %eax 
	inc 	%eax
	xorl	%ecx, %ecx
	jmp	.L24
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.globl	n
	.data
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.long	10
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	1
	.long	2
	.long	3
	.long	4
	.align 16
.LC1:
	.long	4
	.long	4
	.long	4
	.long	4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	0
	.long	1083129856
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
