.data
.balign 8
_str0:
	.ascii ".ssa"
	.byte 0
/* end data */

.data
.balign 8
_str3:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
_str10:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
_str12:
	.ascii "qbe"
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str19:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
_str30:
	.ascii "error: qbe failed with status "
	.byte 0
/* end data */

.data
.balign 8
_str39:
	.ascii "error: C compiler not found"
	.byte 0
/* end data */

.data
.balign 8
_str46:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
_str58:
	.ascii "error: C compiler failed with status "
	.byte 0
/* end data */

.data
.balign 8
_str61:
	.ascii "ok"
	.byte 0
/* end data */

.data
.balign 8
_str71:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
_str78:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
_str105:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
_str109:
	.ascii "1"
	.byte 0
/* end data */

.data
.balign 8
_str113:
	.ascii "2"
	.byte 0
/* end data */

.data
.balign 8
_str117:
	.ascii "3"
	.byte 0
/* end data */

.data
.balign 8
_str121:
	.ascii "4"
	.byte 0
/* end data */

.data
.balign 8
_str125:
	.ascii "5"
	.byte 0
/* end data */

.data
.balign 8
_str129:
	.ascii "6"
	.byte 0
/* end data */

.data
.balign 8
_str133:
	.ascii "7"
	.byte 0
/* end data */

.data
.balign 8
_str137:
	.ascii "8"
	.byte 0
/* end data */

.data
.balign 8
_str138:
	.ascii "9"
	.byte 0
/* end data */

.text
.balign 4
.globl _builder_build_ssa_path
_builder_build_ssa_path:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, _str0@page
	add	x1, x1, _str0@pageoff
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
	bl	_donna_files_join
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_build_ssa_path */

.text
.balign 4
.globl _builder_build_asm_path
_builder_build_asm_path:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, _str3@page
	add	x1, x1, _str3@pageoff
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
	bl	_donna_files_join
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_build_asm_path */

.text
.balign 4
.globl _builder_build_bin_path
_builder_build_bin_path:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_donna_files_join
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_build_bin_path */

.text
.balign 4
.globl _builder_build_build
_builder_build_build:
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
	bl	_compiler_codegen_codegen_generate
	mov	x1, x0
	mov	x0, x19
	bl	_donna_files_write
	mov	x0, x19
	bl	_donna_files_drop_extension
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str10@page
	add	x1, x1, _str10@pageoff
	bl	___rt_str_concat
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x19
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x2, x20
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	mov	x20, x2
	add	x2, x1, x0
	adrp	x0, _str19@page
	add	x0, x0, _str19@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x19, [x0]
	adrp	x0, _str12@page
	add	x0, x0, _str12@pageoff
	bl	_donna_shell_exec
	cmp	x0, #0
	cset	x1, eq
	cmp	x1, #0
	beq	L15
	bl	_builder_pipeline_c_compiler_available
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #0
	beq	L13
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str46@page
	add	x1, x1, _str46@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	_builder_pipeline_c_command
	bl	_donna_shell_run
	cmp	x0, #0
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	L11
	adrp	x0, _str61@page
	add	x0, x0, _str61@pageoff
	str	x0, [x20]
	adrp	x0, _str61@page
	add	x0, x0, _str61@pageoff
	b	L12
L11:
	bl	_builder_build_int_to_str
	mov	x1, x0
	adrp	x0, _str58@page
	add	x0, x0, _str58@pageoff
	bl	___rt_str_concat
	str	x0, [x20]
L12:
	str	x0, [x19]
	b	L16
L13:
	adrp	x0, _str39@page
	add	x0, x0, _str39@pageoff
	str	x0, [x19]
	adrp	x0, _str39@page
	add	x0, x0, _str39@pageoff
	b	L16
L15:
	bl	_builder_build_int_to_str
	mov	x1, x0
	adrp	x0, _str30@page
	add	x0, x0, _str30@pageoff
	bl	___rt_str_concat
L16:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_build_build */

.text
.balign 4
_builder_build_int_to_str:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	cmp	x0, #0
	cset	x1, eq
	cmp	x1, #1
	beq	L21
	cmp	x0, #0
	cset	x1, lt
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L20
	bl	_builder_build_pos_int_to_str
	str	x0, [x19]
	b	L22
L20:
	mov	x1, #0
	sub	x0, x1, x0
	bl	_builder_build_pos_int_to_str
	mov	x1, x0
	adrp	x0, _str78@page
	add	x0, x0, _str78@pageoff
	bl	___rt_str_concat
	str	x0, [x19]
	b	L22
L21:
	adrp	x0, _str71@page
	add	x0, x0, _str71@pageoff
L22:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_build_int_to_str */

.text
.balign 4
_builder_build_pos_int_to_str:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	cmp	x0, #10
	cset	x1, lt
	cmp	x1, #1
	beq	L25
	mov	x19, x0
	mov	x0, #10
	sdiv	x0, x19, x0
	bl	_builder_build_pos_int_to_str
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #10
	sdiv	x1, x0, x1
	mov	x2, #10
	mul	x1, x1, x2
	sub	x0, x0, x1
	bl	_builder_build_digit_char
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L26
L25:
	bl	_builder_build_digit_char
L26:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_build_pos_int_to_str */

.text
.balign 4
_builder_build_digit_char:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x0, #0
	beq	L45
	cmp	x0, #1
	beq	L44
	cmp	x0, #2
	beq	L43
	cmp	x0, #3
	beq	L42
	cmp	x0, #4
	beq	L41
	cmp	x0, #5
	beq	L40
	cmp	x0, #6
	beq	L39
	cmp	x0, #7
	beq	L38
	cmp	x0, #8
	beq	L37
	adrp	x0, _str138@page
	add	x0, x0, _str138@pageoff
	b	L46
L37:
	adrp	x0, _str137@page
	add	x0, x0, _str137@pageoff
	b	L46
L38:
	adrp	x0, _str133@page
	add	x0, x0, _str133@pageoff
	b	L46
L39:
	adrp	x0, _str129@page
	add	x0, x0, _str129@pageoff
	b	L46
L40:
	adrp	x0, _str125@page
	add	x0, x0, _str125@pageoff
	b	L46
L41:
	adrp	x0, _str121@page
	add	x0, x0, _str121@pageoff
	b	L46
L42:
	adrp	x0, _str117@page
	add	x0, x0, _str117@pageoff
	b	L46
L43:
	adrp	x0, _str113@page
	add	x0, x0, _str113@pageoff
	b	L46
L44:
	adrp	x0, _str109@page
	add	x0, x0, _str109@pageoff
	b	L46
L45:
	adrp	x0, _str105@page
	add	x0, x0, _str105@pageoff
L46:
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_build_digit_char */

.text
.balign 4
___rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	_strlen
	mov	x19, x0
	mov	x0, x20
	bl	_strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	bl	_strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	_strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function __rt_str_concat */

