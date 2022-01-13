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
	.file	"SNT.c"
	.text
	.global	__aeabi_idivmod
	.align	1
	.global	laSoNguyenTo1
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	laSoNguyenTo1, %function
laSoNguyenTo1:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bgt	.L2
	ands	r3, #0 ; thay thế lệnh mov
	b	.L3
.L2:
	movs	r3, #2
	str	r3, [r7, #12]
	b	.L4
.L6:
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	cmp	r3, #0
	bne	.L5
	ands	r3, #0 ; thay thế lệnh mov
	b	.L3
.L5:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L4:
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	cmp	r2, r3
	blt	.L6
	movs	r3, #1
.L3:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	laSoNguyenTo1, .-laSoNguyenTo1
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Nhap so can kiem tra\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"La so nguyen to\000"
	.align	2
.LC3:
	.ascii	"Khong phai so nguyen to\000"
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
	ldr	r2, .L12
.LPIC4:
	add	r2, pc
	ldr	r3, .L12+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #4]
	and	r3,#0 ; thay thế lệnh mov
	ldr	r3, .L12+8
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	mov	r3, r7
	mov	r1, r3
	ldr	r3, .L12+12
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, [r7]
	mov	r0, r3
	bl	laSoNguyenTo1(PLT)
	mov	r3, r0
	tst	r3, r3 ; thay lệnh cmp
	beq	.L8
	ldr	r3, .L12+16
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	b	.L9
.L8:
	ldr	r3, .L12+20
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
.L9:
	ands	r3, #0 ; thay thế lệnh mov
	ldr	r1, .L12+24
.LPIC5:
	add	r1, pc
	ldr	r2, .L12+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L11
	bl	__stack_chk_fail(PLT)
.L11:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC3-(.LPIC3+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
