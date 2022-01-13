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
	.align	1
	.global	fact2_func
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	fact2_func, %function
fact2_func:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	b	.L2
.L3:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	mul	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L2:
	ldr	r3, [r7, #8]
	tst	r3, r3 ;thay thees lenhj cmp r3,0
	bne	.L3
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	fact2_func, .-fact2_func
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movw	r3, #16960
	movt	r3, 15
	str	r3, [r7, #4]
	ldr	r0, [r7, #4]
	bl	fact2_func(PLT)
	ands	r3, #0 ; thay thế lệnh movs
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
