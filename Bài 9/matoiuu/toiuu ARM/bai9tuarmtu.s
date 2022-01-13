	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"bai9tu.c"
	.text
	.global	__aeabi_idivmod
	.global	__aeabi_idiv
	.section	.rodata
	.align	2
.LC0:
	.ascii	"thoi gian %f seconds\000"
	.text
	.align	1
	.global	main
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 4048
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	subw	sp, sp, #4052
	add	r7, sp, #0
	ldr	r2, .L6+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L6+12
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #4044]
	mov	r3,#0
	adds	r3, r7, #4
	ands	r2, #1
	adds	r2, #1
	str	r2, [r3]
	add	r3, r7, #8
	ands	r2, #5
	adds	r2, #5
	str	r2, [r3]
	add	r3, r7, #12
	ands	r2, #25
	adds	r2, #25
	str	r2, [r3]
	add	r3, r7, #16
	ands	r2, #7
	adds	r2, #7
	str	r2, [r3]
	add	r4, r7, #20
	bl	clock(PLT)
	str	r0, [r4]
	add	r2, r7, #12
	add	r3, r7, #16
	ldr	r2, [r2]
	ldr	r1, [r3]
	mov	r0, r2
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	mul	r2, r3, r2
	add	r3, r7, #8
	ldr	r1, [r3]
	mov	r0, r2
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	mov	r2, r3
	add	r4, r7, #24
	add	r3, r7, #16
	ldr	r1, [r3]
	mov	r0, r2
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	str	r3, [r4]
	mov	r3, r7
	ands	r2, #0
	str	r2, [r3]
	b	.L2
.L3:
	add	r3, r7, #24
	mov	r2, r7
	ldr	r3, [r3]
	ldr	r2, [r2]
	mul	r1, r2, r3
	add	r3, r7, #44
	mov	r2, r7
	ldr	r2, [r2]
	str	r1, [r3, r2, lsl #2]
	mov	r3, r7
	mov	r2, r7
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L2:
	mov	r3, r7
	ldr	r3, [r3]
	cmp	r3, #1000
	blt	.L3
	add	r4, r7, #28
	bl	clock(PLT)
	str	r0, [r4]
	add	r2, r7, #28
	add	r3, r7, #20
	ldr	r2, [r2]
	ldr	r3, [r3]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	add	r3, r7, #32
	vldr.64	d5, .L6
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r3]
	add	r3, r7, #32
	ldrd	r2, [r3]
	ldr	r1, .L6+16
.LPIC0:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ands	r3, #0
	ldr	r1, .L6+20
.LPIC2:
	add	r1, pc
	ldr	r2, .L6+12
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #4044]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L5
	bl	__stack_chk_fail(PLT)
.L5:
	mov	r0, r3
	addw	r7, r7, #4052
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L7:
	.align	3
.L6:
	.word	0
	.word	1093567616
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
