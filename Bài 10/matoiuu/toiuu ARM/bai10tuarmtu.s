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
	.file	"bai10tu.c"
	.text
	.global	n
	.data
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.word	10
	.text
	.align	1
	.global	tong
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	tong, %function
tong:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ands	r3, #0
	str	r3, [r7, #8]
	ands	r3, #1
	adds	r3, #1
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L3
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tong, .-tong
	.align	1
	.global	tongGiaiThua
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	tongGiaiThua, %function
tongGiaiThua:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r7, #16]
	mov	r2, #1
	mov	r3, #0
	strd	r2, [r7, #24]
	ands	r3, #1
	adds	r3, #1
	str	r3, [r7, #12]
	b	.L6
.L7:
	ldr	r3, [r7, #12]
	mov	r2, r3
	asr	r3, r2, #31
	ldr	r1, [r7, #28]
	mul	r0, r2, r1
	ldr	r1, [r7, #24]
	mul	r1, r3, r1
	add	r1, r1, r0
	ldr	r0, [r7, #24]
	umull	r2, r3, r0, r2
	add	r1, r1, r3
	mov	r3, r1
	strd	r2, [r7, #24]
	strd	r2, [r7, #24]
	ldrd	r0, [r7, #16]
	ldrd	r2, [r7, #24]
	adds	r4, r0, r2
	adc	r5, r1, r3
	strd	r4, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L6:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L7
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	tongGiaiThua, .-tongGiaiThua
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Tong tu 1 den %d l\303\240 %d.\012\000"
	.align	2
.LC1:
	.ascii	"Tong giai thua tu 1! den %d! la %ld. \012\000"
	.align	2
.LC2:
	.ascii	"Ket qua cac bieu thuc y v\303\240 z: \011 %d \011 %"
	.ascii	"d \012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	movw	r3, #27004
	movt	r3, 22
	str	r3, [r7, #12]
	movw	r3, #44515
	movt	r3, 74
	str	r3, [r7, #16]
	ldr	r3, .L13+8
.LPIC0:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	bl	tong(PLT)
	str	r0, [r7, #20]
	ldr	r3, .L13+12
.LPIC1:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	bl	tongGiaiThua(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #20]
	mul	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L10
	ldr	r3, [r7, #28]
	str	r3, [r7, #8]
	ldr	r3, [r7, #28]
	add	r3, r3, #456
	str	r3, [r7, #4]
	b	.L11
.L10:
	ldr	r3, [r7, #28]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L13
	vadd.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [r7, #4]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L11:
	ldr	r3, .L13+16
.LPIC2:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	mov	r1, r3
	ldr	r3, .L13+20
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, .L13+24
.LPIC4:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	mov	r1, r3
	ldr	r3, .L13+28
.LPIC5:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r3, .L13+32
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ands	r3, #0
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	3
.L13:
	.word	0
	.word	1083129856
	.word	n-(.LPIC0+4)
	.word	n-(.LPIC1+4)
	.word	n-(.LPIC2+4)
	.word	.LC0-(.LPIC3+4)
	.word	n-(.LPIC4+4)
	.word	.LC1-(.LPIC5+4)
	.word	.LC2-(.LPIC6+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
