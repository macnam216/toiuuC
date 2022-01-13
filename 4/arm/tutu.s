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
	.file	"tu.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"nhap n\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"nhap m\000"
	.align	2
.LC3:
	.ascii	"tong = %f\000"
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
	ldr	r2, .L4
.LPIC5:
	add	r2, pc
	ldr	r3, .L4+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	and	r3,#0 ; thay thees mov
	ldr	r3, .L4+8
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	mov	r3, r7
	mov	r1, r3
	ldr	r3, .L4+12
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, .L4+16
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r3, .L4+20
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, [r7, #4]
	lsls	r2, r3, #1
	ldr	r3, [r7]
	add	r3, r3, r2
	ldr	r2, [r7]
	mul	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vmov.f64	d5, #2.0e+0
	vdiv.f64	d7, d6, d5
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r7, #8]
	vldr.32	s15, [r7, #8]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L4+24
.LPIC4:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	ldr	r1, .L4+28
.LPIC6:
	add	r1, pc
	ldr	r2, .L4+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L3
	bl	__stack_chk_fail(PLT)
.L3:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC1-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
