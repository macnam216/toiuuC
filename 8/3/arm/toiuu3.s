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
	.file	"toiuu3.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"toiyeukma\000"
	.align	2
.LC1:
	.ascii	"So ki tu: %d\012\000"
	.align	2
.LC2:
	.ascii	"Ket qua: \011 %d \011 %d \011 %d\000"
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	ldr	r3, .L5
.LPIC0:
	add	r3, pc
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	movs	r3, #1
	str	r3, [r7, #8]
	b	.L2
.L3:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L2:
	ldr	r2, [r7, #8]
	mov	r3, #57600
	movt	r3, 1525
	cmp	r2, r3
	ble	.L3
	ldr	r3, [r7, #16]
	addw	r3, r3, #2106
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	movw	r2, #2106
	mul	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	mul	r3, r3, r3
	str	r3, [r7, #28]
	ldr	r1, [r7, #16]
	ldr	r3, .L5+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #20]
	ldr	r0, .L5+8
.LPIC2:
	add	r0, pc
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
