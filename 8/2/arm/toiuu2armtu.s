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
	.file	"toiuu2.c"
	.text
	.global	__aeabi_idivmod
	.align	1
	.global	UCLN
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	UCLN, %function
UCLN:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r7]
	mov	r0, r3
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r3, [r7]
	str	r3, [r7, #4]
	ldr	r3, [r7, #12]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r7]
	mov	r0, r3
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #12]
	tst	r3, r3 ; thay thế cmp	r3, #0 
	bne	.L3
	ldr	r3, [r7]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	UCLN, .-UCLN
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012 UCLN (%d, %d) = %d\000"
	.text
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
	movs	r3, #9
	str	r3, [r7]
	movw	r3, #52532
	movt	r3, 8969
	str	r3, [r7, #4]
	ldr	r1, [r7, #4]
	ldr	r0, [r7]
	bl	UCLN(PLT)
	mov	r3, r0
	ldr	r2, [r7, #4]
	ldr	r1, [r7]
	ldr	r0, .L7
.LPIC0:
	add	r0, pc
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	.LC0-(.LPIC0+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
