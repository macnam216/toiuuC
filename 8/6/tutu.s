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
.LC1:
	.ascii	"%c , %c ,%c\000"
	.align	2
.LC0:
	.ascii	"nguamatlentroihandoivodoiupmatxuonggoivo\000"
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
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	ldr	r2, .L3
.LPIC2:
	add	r2, pc
	ldr	r3, .L3+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	and	r3,#0 ; thay lenh mov
	ldr	r3, .L3+8
.LPIC0:
	add	r3, pc
	add	r4, r7, #8
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2}
	stmia	r4!, {r0, r1}
	strb	r2, [r4]
	ldrb	r3, [r7, #8]
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #9]
	strb	r3, [r7, #6]
	ldrb	r3, [r7, #10]
	strb	r3, [r7, #7]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r0, .L3+12
.LPIC1:
	add	r0, pc
	bl	printf(PLT)
	nop
	ldr	r2, .L3+16
.LPIC3:
	add	r2, pc
	ldr	r3, .L3+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	eors	r2, r3, r2
	and	r3, #0 ; thay lenh mov
	beq	.L2
	bl	__stack_chk_fail(PLT)
.L2:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L4:
	.align	2
.L3:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
