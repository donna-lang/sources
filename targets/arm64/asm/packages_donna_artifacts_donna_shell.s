.data
.balign 8
str9:
	.ascii " 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str12:
	.ascii "cd "
	.byte 0
/* end data */

.data
.balign 8
str14:
	.ascii " && "
	.byte 0
/* end data */

.data
.balign 8
str25:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str36:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str61:
	.ascii " "
	.byte 0
/* end data */

.text
.balign 16
.globl donna_shell_getenv
donna_shell_getenv:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_rt_getenv
	ldp	x29, x30, [sp], 16
	ret
.type donna_shell_getenv, @function
.size donna_shell_getenv, .-donna_shell_getenv
/* end function donna_shell_getenv */

.text
.balign 16
.globl donna_shell_flush
donna_shell_flush:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_rt_flush
	ldp	x29, x30, [sp], 16
	ret
.type donna_shell_flush, @function
.size donna_shell_flush, .-donna_shell_flush
/* end function donna_shell_flush */

.text
.balign 16
.globl donna_shell_run
donna_shell_run:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_shell_exec
	ldp	x29, x30, [sp], 16
	ret
.type donna_shell_run, @function
.size donna_shell_run, .-donna_shell_run
/* end function donna_shell_run */

.text
.balign 16
.globl donna_shell_capture
donna_shell_capture:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_shell_capture
	ldp	x29, x30, [sp], 16
	ret
.type donna_shell_capture, @function
.size donna_shell_capture, .-donna_shell_capture
/* end function donna_shell_capture */

.text
.balign 16
.globl donna_shell_exec
donna_shell_exec:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_shell_build_cmd
	bl	donna_ffi_shell_exec
	ldp	x29, x30, [sp], 16
	ret
.type donna_shell_exec, @function
.size donna_shell_exec, .-donna_shell_exec
/* end function donna_shell_exec */

.text
.balign 16
.globl donna_shell_output
donna_shell_output:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_shell_build_cmd
	bl	donna_ffi_shell_capture
	ldp	x29, x30, [sp], 16
	ret
.type donna_shell_output, @function
.size donna_shell_output, .-donna_shell_output
/* end function donna_shell_output */

.text
.balign 16
.globl donna_shell_output_with_err
donna_shell_output_with_err:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_shell_build_cmd
	adrp	x1, str9
	add	x1, x1, #:lo12:str9
	bl	__rt_str_concat
	bl	donna_ffi_shell_capture
	ldp	x29, x30, [sp], 16
	ret
.type donna_shell_output_with_err, @function
.size donna_shell_output_with_err, .-donna_shell_output_with_err
/* end function donna_shell_output_with_err */

.text
.balign 16
.globl donna_shell_exec_in
donna_shell_exec_in:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, x2
	mov	x19, x0
	adrp	x0, str12
	add	x0, x0, #:lo12:str12
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str14
	add	x1, x1, #:lo12:str14
	bl	__rt_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_shell_build_cmd
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	bl	donna_ffi_shell_exec
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_shell_exec_in, @function
.size donna_shell_exec_in, .-donna_shell_exec_in
/* end function donna_shell_exec_in */

.text
.balign 16
donna_shell_build_cmd:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	ldr	x1, [x19]
	cmp	x1, #0
	beq	.L18
	adrp	x1, str25
	add	x1, x1, #:lo12:str25
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_shell_join_args
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
.L18:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_shell_build_cmd, @function
.size donna_shell_build_cmd, .-donna_shell_build_cmd
/* end function donna_shell_build_cmd */

.text
.balign 16
donna_shell_join_args:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L27
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L23
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L24
.L23:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L24:
	cmp	w1, #0
	bne	.L26
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	adrp	x1, str61
	add	x1, x1, #:lo12:str61
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_shell_join_args
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L28
.L26:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L28
.L27:
	adrp	x0, str36
	add	x0, x0, #:lo12:str36
.L28:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_shell_join_args, @function
.size donna_shell_join_args, .-donna_shell_join_args
/* end function donna_shell_join_args */

.text
.balign 16
__rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	strlen
	mov	x19, x0
	mov	x0, x20
	bl	strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	malloc
	mov	x1, x19
	mov	x19, x0
	bl	strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
