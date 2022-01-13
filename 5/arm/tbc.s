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
	.file	"tbc.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Tong: %f\000"
	.align	2
.LC1:
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, #0
	str	r3, [r7]	@ float
	movw	r3, #16960
	movt	r3, 15
	str	r3, [r7, #8]
	movs	r3, #1
	str	r3, [r7, #4]
	b	.L2
.L3:
	ldr	r3, [r7, #4]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s14, [r7]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L3
	vldr.32	s15, [r7]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L5
.LPIC0:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, [r7]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #12]
	vldr.32	s15, [r7, #12]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L5+4
.LPIC1:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
