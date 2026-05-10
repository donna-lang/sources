.data
.balign 8
str0:
	.ascii ".ssa"
	.byte 0
/* end data */

.data
.balign 8
str3:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
str10:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
str12:
	.ascii "qbe"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str19:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str30:
	.ascii "error: qbe failed with status "
	.byte 0
/* end data */

.data
.balign 8
str39:
	.ascii "error: C compiler not found"
	.byte 0
/* end data */

.data
.balign 8
str46:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str58:
	.ascii "error: C compiler failed with status "
	.byte 0
/* end data */

.data
.balign 8
str61:
	.ascii "ok"
	.byte 0
/* end data */

.data
.balign 8
str71:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
str78:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
str105:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
str109:
	.ascii "1"
	.byte 0
/* end data */

.data
.balign 8
str113:
	.ascii "2"
	.byte 0
/* end data */

.data
.balign 8
str117:
	.ascii "3"
	.byte 0
/* end data */

.data
.balign 8
str121:
	.ascii "4"
	.byte 0
/* end data */

.data
.balign 8
str125:
	.ascii "5"
	.byte 0
/* end data */

.data
.balign 8
str129:
	.ascii "6"
	.byte 0
/* end data */

.data
.balign 8
str133:
	.ascii "7"
	.byte 0
/* end data */

.data
.balign 8
str137:
	.ascii "8"
	.byte 0
/* end data */

.data
.balign 8
str138:
	.ascii "9"
	.byte 0
/* end data */

.text
.balign 16
.globl builder_build_ssa_path
builder_build_ssa_path:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, str0
	add	x1, x1, #:lo12:str0
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	bl	donna_files_join
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_build_ssa_path, @function
.size builder_build_ssa_path, .-builder_build_ssa_path
/* end function builder_build_ssa_path */

.text
.balign 16
.globl builder_build_asm_path
builder_build_asm_path:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, str3
	add	x1, x1, #:lo12:str3
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	bl	donna_files_join
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_build_asm_path, @function
.size builder_build_asm_path, .-builder_build_asm_path
/* end function builder_build_asm_path */

.text
.balign 16
.globl builder_build_bin_path
builder_build_bin_path:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_files_join
	ldp	x29, x30, [sp], 16
	ret
.type builder_build_bin_path, @function
.size builder_build_bin_path, .-builder_build_bin_path
/* end function builder_build_bin_path */

.text
.balign 16
.globl builder_build_build
builder_build_build:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x0, x3
	mov	x20, x2
	mov	x19, x1
	bl	compiler_codegen_codegen_generate
	mov	x1, x0
	mov	x0, x19
	bl	donna_files_write
	mov	x0, x19
	bl	donna_files_drop_extension
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str10
	add	x1, x1, #:lo12:str10
	bl	__rt_str_concat
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x19
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #24
	bl	malloc
	mov	x2, x20
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	mov	x20, x2
	add	x2, x1, x0
	adrp	x0, str19
	add	x0, x0, #:lo12:str19
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x19, [x0]
	adrp	x0, str12
	add	x0, x0, #:lo12:str12
	bl	donna_shell_exec
	cmp	x0, #0
	cset	x1, eq
	cmp	x1, #0
	beq	.L15
	bl	builder_pipeline_c_compiler_available
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #0
	beq	.L13
	mov	x0, #24
	bl	malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	mov	x2, x20
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x2, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str46
	add	x1, x1, #:lo12:str46
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	builder_pipeline_c_command
	bl	donna_shell_run
	cmp	x0, #0
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	.L11
	adrp	x0, str61
	add	x0, x0, #:lo12:str61
	str	x0, [x20]
	adrp	x0, str61
	add	x0, x0, #:lo12:str61
	b	.L12
.L11:
	bl	builder_build_int_to_str
	mov	x1, x0
	adrp	x0, str58
	add	x0, x0, #:lo12:str58
	bl	__rt_str_concat
	str	x0, [x20]
.L12:
	str	x0, [x19]
	b	.L16
.L13:
	adrp	x0, str39
	add	x0, x0, #:lo12:str39
	str	x0, [x19]
	adrp	x0, str39
	add	x0, x0, #:lo12:str39
	b	.L16
.L15:
	bl	builder_build_int_to_str
	mov	x1, x0
	adrp	x0, str30
	add	x0, x0, #:lo12:str30
	bl	__rt_str_concat
.L16:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_build_build, @function
.size builder_build_build, .-builder_build_build
/* end function builder_build_build */

.text
.balign 16
builder_build_int_to_str:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	cmp	x0, #0
	cset	x1, eq
	cmp	x1, #1
	beq	.L21
	cmp	x0, #0
	cset	x1, lt
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L20
	bl	builder_build_pos_int_to_str
	str	x0, [x19]
	b	.L22
.L20:
	mov	x1, #0
	sub	x0, x1, x0
	bl	builder_build_pos_int_to_str
	mov	x1, x0
	adrp	x0, str78
	add	x0, x0, #:lo12:str78
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L22
.L21:
	adrp	x0, str71
	add	x0, x0, #:lo12:str71
.L22:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type builder_build_int_to_str, @function
.size builder_build_int_to_str, .-builder_build_int_to_str
/* end function builder_build_int_to_str */

.text
.balign 16
builder_build_pos_int_to_str:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	cmp	x0, #10
	cset	x1, lt
	cmp	x1, #1
	beq	.L25
	mov	x19, x0
	mov	x0, #10
	sdiv	x0, x19, x0
	bl	builder_build_pos_int_to_str
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #10
	sdiv	x1, x0, x1
	mov	x2, #10
	mul	x1, x1, x2
	sub	x0, x0, x1
	bl	builder_build_digit_char
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L26
.L25:
	bl	builder_build_digit_char
.L26:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_build_pos_int_to_str, @function
.size builder_build_pos_int_to_str, .-builder_build_pos_int_to_str
/* end function builder_build_pos_int_to_str */

.text
.balign 16
builder_build_digit_char:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x0, #0
	beq	.L45
	cmp	x0, #1
	beq	.L44
	cmp	x0, #2
	beq	.L43
	cmp	x0, #3
	beq	.L42
	cmp	x0, #4
	beq	.L41
	cmp	x0, #5
	beq	.L40
	cmp	x0, #6
	beq	.L39
	cmp	x0, #7
	beq	.L38
	cmp	x0, #8
	beq	.L37
	adrp	x0, str138
	add	x0, x0, #:lo12:str138
	b	.L46
.L37:
	adrp	x0, str137
	add	x0, x0, #:lo12:str137
	b	.L46
.L38:
	adrp	x0, str133
	add	x0, x0, #:lo12:str133
	b	.L46
.L39:
	adrp	x0, str129
	add	x0, x0, #:lo12:str129
	b	.L46
.L40:
	adrp	x0, str125
	add	x0, x0, #:lo12:str125
	b	.L46
.L41:
	adrp	x0, str121
	add	x0, x0, #:lo12:str121
	b	.L46
.L42:
	adrp	x0, str117
	add	x0, x0, #:lo12:str117
	b	.L46
.L43:
	adrp	x0, str113
	add	x0, x0, #:lo12:str113
	b	.L46
.L44:
	adrp	x0, str109
	add	x0, x0, #:lo12:str109
	b	.L46
.L45:
	adrp	x0, str105
	add	x0, x0, #:lo12:str105
.L46:
	ldp	x29, x30, [sp], 16
	ret
.type builder_build_digit_char, @function
.size builder_build_digit_char, .-builder_build_digit_char
/* end function builder_build_digit_char */

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
