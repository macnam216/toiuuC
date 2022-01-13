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
	.file	"toiuu.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Cac so chia het cho 5: \000"
	.align	2
.LC1:
	.ascii	"%d \011\000"
	.align	2
.LC2:
	.ascii	"Tong: %f\000"
	.align	2
.LC3:
	.ascii	"\012 trung binh cong : %f\000"
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	mov	r3, #0
	str	r3, [r7, #4]	@ float
	movw	r3, #16960
	movt	r3, 15
	str	r3, [r7, #16]
	ldr	r3, .L7
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L2
.L4:
	ldr	r1, [r7, #8]
	movw	r3, #26215
	movt	r3, 26214
	smull	r2, r3, r3, r1
	asrs	r2, r3, #1
	asrs	r3, r1, #31
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	subs	r2, r1, r3
	cmp	r2, #0
	bne	.L3
	ldr	r1, [r7, #8]
	ldr	r3, .L7+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
.L3:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L2:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L4
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L5
.L6:
	ldr	r3, [r7, #12]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s14, [r7, #4]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L5:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L6
	vldr.32	s15, [r7, #4]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L7+8
.LPIC2:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #16]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, [r7, #4]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #20]
	vldr.32	s15, [r7, #20]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L7+12
.LPIC3:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC3-(.LPIC3+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
