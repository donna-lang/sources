.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str81:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str120:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str154:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str174:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str182:
	.ascii "/"
	.byte 0
/* end data */

.text
.balign 16
.globl donna_files_read
donna_files_read:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_file_read
	ldp	x29, x30, [sp], 16
	ret
.type donna_files_read, @function
.size donna_files_read, .-donna_files_read
/* end function donna_files_read */

.text
.balign 16
.globl donna_files_write
donna_files_write:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_file_write
	ldp	x29, x30, [sp], 16
	ret
.type donna_files_write, @function
.size donna_files_write, .-donna_files_write
/* end function donna_files_write */

.text
.balign 16
.globl donna_files_append
donna_files_append:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_file_append
	ldp	x29, x30, [sp], 16
	ret
.type donna_files_append, @function
.size donna_files_append, .-donna_files_append
/* end function donna_files_append */

.text
.balign 16
.globl donna_files_exists
donna_files_exists:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_file_exists
	cmp	x0, #1
	cset	x0, eq
	ldp	x29, x30, [sp], 16
	ret
.type donna_files_exists, @function
.size donna_files_exists, .-donna_files_exists
/* end function donna_files_exists */

.text
.balign 16
.globl donna_files_is_file
donna_files_is_file:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_file_is_file
	cmp	x0, #1
	cset	x0, eq
	ldp	x29, x30, [sp], 16
	ret
.type donna_files_is_file, @function
.size donna_files_is_file, .-donna_files_is_file
/* end function donna_files_is_file */

.text
.balign 16
.globl donna_files_is_dir
donna_files_is_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_file_is_dir
	cmp	x0, #1
	cset	x0, eq
	ldp	x29, x30, [sp], 16
	ret
.type donna_files_is_dir, @function
.size donna_files_is_dir, .-donna_files_is_dir
/* end function donna_files_is_dir */

.text
.balign 16
.globl donna_files_mkdir
donna_files_mkdir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_file_mkdir
	ldp	x29, x30, [sp], 16
	ret
.type donna_files_mkdir, @function
.size donna_files_mkdir, .-donna_files_mkdir
/* end function donna_files_mkdir */

.text
.balign 16
.globl donna_files_delete
donna_files_delete:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_file_delete
	ldp	x29, x30, [sp], 16
	ret
.type donna_files_delete, @function
.size donna_files_delete, .-donna_files_delete
/* end function donna_files_delete */

.text
.balign 16
.globl donna_files_copy
donna_files_copy:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_file_copy
	ldp	x29, x30, [sp], 16
	ret
.type donna_files_copy, @function
.size donna_files_copy, .-donna_files_copy
/* end function donna_files_copy */

.text
.balign 16
.globl donna_files_list_dir
donna_files_list_dir:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	donna_ffi_file_list_dir
	mov	x19, x0
	bl	strlen
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	cset	x1, eq
	cmp	x1, #1
	beq	.L20
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	mov	x2, #0
	mov	x1, #0
	bl	donna_files_split_lines
	b	.L21
.L20:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L21:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_files_list_dir, @function
.size donna_files_list_dir, .-donna_files_list_dir
/* end function donna_files_list_dir */

.text
.balign 16
donna_files_split_lines:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x21, x3
	mov	x22, x2
	mov	x19, x1
	mov	x20, x0
	bl	strlen
	mov	x2, x22
	mov	x1, x0
	mov	x0, x20
	cmp	x2, x1
	cset	x3, eq
	sub	x1, x2, x19
	mov	x22, x2
	add	x2, x0, x19
	cmp	x3, #1
	beq	.L27
	add	x3, x0, x22
	ldrb	w3, [x3]
	cmp	x3, #10
	cset	x3, eq
	mov	x4, #16
	mov	x20, x19
	sub	sp, sp, x4
	mov	x19, sp
	mov	x4, #1
	add	x23, x22, x4
	cmp	x3, #1
	beq	.L25
	mov	x3, x21
	mov	x2, x23
	mov	x1, x20
	mov	x21, x0
	bl	donna_files_split_lines
	str	x0, [x19]
	b	.L32
.L25:
	mov	x20, x21
	mov	x21, x0
	mov	x0, x2
	bl	strndup
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x23
	mov	x3, x0
	mov	x0, x22
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #8
	add	x2, x3, x2
	str	x21, [x2]
	mov	x2, #16
	add	x2, x3, x2
	str	x20, [x2]
	mov	x2, x1
	bl	donna_files_split_lines
	str	x0, [x19]
	b	.L32
.L27:
	mov	x0, x2
	mov	x20, x21
	mov	x2, x22
	cmp	x19, x2
	cset	x2, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L30
	bl	strndup
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	donna_files_reverse
	str	x0, [x19]
	b	.L32
.L30:
	mov	x0, x20
	bl	donna_files_reverse
	str	x0, [x19]
.L32:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type donna_files_split_lines, @function
.size donna_files_split_lines, .-donna_files_split_lines
/* end function donna_files_split_lines */

.text
.balign 16
donna_files_reverse:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	donna_files_reverse_acc
	ldp	x29, x30, [sp], 16
	ret
.type donna_files_reverse, @function
.size donna_files_reverse, .-donna_files_reverse
/* end function donna_files_reverse */

.text
.balign 16
donna_files_reverse_acc:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L37
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	bl	donna_files_reverse_acc
	b	.L38
.L37:
	mov	x0, x19
.L38:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type donna_files_reverse_acc, @function
.size donna_files_reverse_acc, .-donna_files_reverse_acc
/* end function donna_files_reverse_acc */

.text
.balign 16
.globl donna_files_join
donna_files_join:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	adrp	x1, str81
	add	x1, x1, #:lo12:str81
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_files_join, @function
.size donna_files_join, .-donna_files_join
/* end function donna_files_join */

.text
.balign 16
.globl donna_files_basename
donna_files_basename:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #0
	mov	x1, #0
	bl	donna_files_last_segment
	ldp	x29, x30, [sp], 16
	ret
.type donna_files_basename, @function
.size donna_files_basename, .-donna_files_basename
/* end function donna_files_basename */

.text
.balign 16
donna_files_last_segment:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x19, x1
	mov	x20, x0
	bl	strlen
	mov	x1, x0
	mov	x0, x20
	cmp	x21, x1
	cset	x2, eq
	cmp	x2, #1
	beq	.L47
	add	x1, x0, x21
	ldrb	w1, [x1]
	cmp	x1, #47
	cset	x2, eq
	mov	x1, #16
	mov	x20, x19
	sub	sp, sp, x1
	mov	x19, sp
	mov	x1, #1
	add	x1, x21, x1
	cmp	x2, #1
	beq	.L46
	mov	x2, x1
	mov	x1, x20
	bl	donna_files_last_segment
	str	x0, [x19]
	b	.L48
.L46:
	mov	x2, x1
	bl	donna_files_last_segment
	str	x0, [x19]
	b	.L48
.L47:
	sub	x1, x1, x19
	add	x0, x0, x19
	bl	strndup
.L48:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_files_last_segment, @function
.size donna_files_last_segment, .-donna_files_last_segment
/* end function donna_files_last_segment */

.text
.balign 16
.globl donna_files_dirname
donna_files_dirname:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	strlen
	mov	x1, x0
	mov	x0, x19
	mov	x2, #1
	sub	x1, x1, x2
	mov	x19, x0
	bl	donna_files_find_last_slash
	mov	x1, x0
	mov	x0, x19
	cmn	x1, #1
	cset	x2, eq
	cmp	x2, #1
	beq	.L51
	bl	strndup
	b	.L52
.L51:
	adrp	x0, str120
	add	x0, x0, #:lo12:str120
.L52:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_files_dirname, @function
.size donna_files_dirname, .-donna_files_dirname
/* end function donna_files_dirname */

.text
.balign 16
donna_files_find_last_slash:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	cmp	x1, #0
	cset	x2, lt
	cmp	x2, #1
	beq	.L58
	add	x2, x0, x1
	ldrb	w2, [x2]
	cmp	x2, #47
	cset	x2, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L56
	mov	x2, #1
	sub	x1, x1, x2
	bl	donna_files_find_last_slash
	str	x0, [x19]
	b	.L59
.L56:
	mov	x0, x1
	str	x0, [x19]
	b	.L59
.L58:
	mov	x0, #-1
.L59:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_files_find_last_slash, @function
.size donna_files_find_last_slash, .-donna_files_find_last_slash
/* end function donna_files_find_last_slash */

.text
.balign 16
.globl donna_files_extension
donna_files_extension:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	bl	donna_files_basename
	mov	x19, x0
	mov	x0, x19
	bl	strlen
	mov	x1, #1
	sub	x1, x0, x1
	mov	x0, x19
	bl	donna_files_find_last_dot
	mov	x20, x0
	cmn	x20, #1
	cset	x0, eq
	cmp	x0, #1
	beq	.L62
	mov	x0, x19
	bl	strlen
	sub	x1, x0, x20
	add	x0, x19, x20
	bl	strndup
	b	.L63
.L62:
	adrp	x0, str154
	add	x0, x0, #:lo12:str154
.L63:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_files_extension, @function
.size donna_files_extension, .-donna_files_extension
/* end function donna_files_extension */

.text
.balign 16
.globl donna_files_drop_extension
donna_files_drop_extension:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	bl	donna_files_basename
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	donna_files_dirname
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	mov	x0, x20
	bl	strlen
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	sub	x1, x1, x2
	mov	x21, x0
	mov	x0, x20
	bl	donna_files_find_last_dot
	mov	x1, x0
	mov	x0, x21
	cmn	x1, #1
	cset	x2, eq
	cmp	x2, #1
	beq	.L70
	mov	x0, x20
	bl	strndup
	mov	x20, x0
	mov	x0, x19
	adrp	x1, str174
	add	x1, x1, #:lo12:str174
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L68
	adrp	x1, str182
	add	x1, x1, #:lo12:str182
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L70
.L68:
	mov	x0, x20
	str	x0, [x19]
.L70:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_files_drop_extension, @function
.size donna_files_drop_extension, .-donna_files_drop_extension
/* end function donna_files_drop_extension */

.text
.balign 16
donna_files_find_last_dot:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	cmp	x1, #0
	cset	x2, lt
	cmp	x2, #1
	beq	.L76
	add	x2, x0, x1
	ldrb	w2, [x2]
	cmp	x2, #46
	cset	x2, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L74
	mov	x2, #1
	sub	x1, x1, x2
	bl	donna_files_find_last_dot
	str	x0, [x19]
	b	.L77
.L74:
	mov	x0, x1
	str	x0, [x19]
	b	.L77
.L76:
	mov	x0, #-1
.L77:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_files_find_last_dot, @function
.size donna_files_find_last_dot, .-donna_files_find_last_dot
/* end function donna_files_find_last_dot */

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
