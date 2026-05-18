.data
.balign 8
str3:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str9:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
str15:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
str21:
	.ascii "update"
	.byte 0
/* end data */

.data
.balign 8
str27:
	.ascii "tree"
	.byte 0
/* end data */

.data
.balign 8
str33:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str35:
	.ascii ": unknown deps command "
	.byte 0
/* end data */

.data
.balign 8
str56:
	.ascii "nothing to clean"
	.byte 0
/* end data */

.data
.balign 8
str58:
	.ascii "rm"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str62:
	.ascii "-rf"
	.byte 0
/* end data */

.data
.balign 8
str67:
	.ascii "Cleaned"
	.byte 0
/* end data */

.data
.balign 8
str69:
	.ascii " dependency cache"
	.byte 0
/* end data */

.data
.balign 8
str74:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
str83:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str85:
	.ascii ": donna.toml not found"
	.byte 0
/* end data */

.data
.balign 8
str87:
	.ascii "donna.lock"
	.byte 0
/* end data */

.data
.balign 8
str97:
	.ascii "rm"
	.byte 0
/* end data */

.data
.balign 8
str102:
	.ascii "-rf"
	.byte 0
/* end data */

.data
.balign 8
str122:
	.ascii "Updated"
	.byte 0
/* end data */

.data
.balign 8
str124:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str128:
	.ascii " dependencies"
	.byte 0
/* end data */

.data
.balign 8
str134:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
str154:
	.ascii "no dependencies"
	.byte 0
/* end data */

.data
.balign 8
str156:
	.ascii "Dependencies"
	.byte 0
/* end data */

.data
.balign 8
str158:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str160:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str175:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str179:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str184:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str189:
	.ascii "Usage:"
	.byte 0
/* end data */

.data
.balign 8
str191:
	.ascii " donna deps "
	.byte 0
/* end data */

.data
.balign 8
str193:
	.ascii "<COMMAND>"
	.byte 0
/* end data */

.data
.balign 8
str196:
	.ascii "Commands:"
	.byte 0
/* end data */

.data
.balign 8
str198:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str199:
	.ascii "clean [NAME]"
	.byte 0
/* end data */

.data
.balign 8
str202:
	.ascii "    Remove cached packages"
	.byte 0
/* end data */

.data
.balign 8
str204:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str205:
	.ascii "update [NAME]"
	.byte 0
/* end data */

.data
.balign 8
str208:
	.ascii "   Refresh lockfile dependencies"
	.byte 0
/* end data */

.data
.balign 8
str210:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str211:
	.ascii "tree"
	.byte 0
/* end data */

.data
.balign 8
str214:
	.ascii "            Show resolved dependencies"
	.byte 0
/* end data */

.data
.balign 8
str216:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str232:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str239:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str243:
	.ascii "donna deps - manage package dependencies"
	.byte 0
/* end data */

.data
.balign 8
str247:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str255:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str268:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str297:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str310:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_deps_run
cli_cmd_deps_run:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	mov	x0, x19
	bl	cli_cmd_deps_first_positional
	adrp	x1, str3
	add	x1, x1, #:lo12:str3
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L13
	adrp	x1, str9
	add	x1, x1, #:lo12:str9
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L12
	adrp	x1, str15
	add	x1, x1, #:lo12:str15
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L10
	adrp	x1, str21
	add	x1, x1, #:lo12:str21
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L8
	adrp	x1, str27
	add	x1, x1, #:lo12:str27
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L6
	mov	x19, x0
	adrp	x0, str33
	add	x0, x0, #:lo12:str33
	bl	utilities_colors_red
	adrp	x1, str35
	add	x1, x1, #:lo12:str35
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L14
.L6:
	mov	x0, x19
	bl	cli_cmd_deps_tree
	b	.L14
.L8:
	mov	x0, x19
	bl	cli_cmd_deps_update
	b	.L14
.L10:
	mov	x0, x19
	bl	cli_cmd_deps_clean
	b	.L14
.L12:
	bl	cli_cmd_deps_help_text
	b	.L14
.L13:
	bl	cli_cmd_deps_help_text
.L14:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_deps_run, @function
.size cli_cmd_deps_run, .-cli_cmd_deps_run
/* end function cli_cmd_deps_run */

.text
.balign 16
cli_cmd_deps_clean:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	bl	cli_cmd_deps_second_positional
	mov	x19, x0
	bl	builder_dependencies_cache_dir
	mov	x21, x0
	mov	x0, x19
	bl	donna_string_is_empty
	mov	x1, x19
	cmp	x0, #1
	beq	.L17
	mov	x0, x21
	bl	donna_files_join
	mov	x21, x0
.L17:
	mov	x0, x21
	bl	donna_files_exists
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #0
	beq	.L19
	mov	x0, #24
	bl	malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	add	x1, x20, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x2, x1, x0
	adrp	x0, str62
	add	x0, x0, #:lo12:str62
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x20, [x0]
	adrp	x0, str58
	add	x0, x0, #:lo12:str58
	bl	donna_shell_exec
	adrp	x0, str67
	add	x0, x0, #:lo12:str67
	bl	utilities_colors_orange
	mov	x20, x0
	adrp	x0, str69
	add	x0, x0, #:lo12:str69
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L20
.L19:
	adrp	x0, str56
	add	x0, x0, #:lo12:str56
	bl	utilities_colors_dim
	str	x0, [x19]
.L20:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_deps_clean, @function
.size cli_cmd_deps_clean, .-cli_cmd_deps_clean
/* end function cli_cmd_deps_clean */

.text
.balign 16
cli_cmd_deps_update:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	bl	cli_cmd_deps_second_positional
	mov	x1, x0
	mov	x19, x1
	adrp	x1, str75
	add	x1, x1, #:lo12:str75
	adrp	x0, str74
	add	x0, x0, #:lo12:str74
	bl	donna_files_join
	mov	x20, x0
	bl	donna_files_exists
	mov	x1, x19
	cmp	x0, #0
	beq	.L30
	mov	x22, x1
	adrp	x1, str87
	add	x1, x1, #:lo12:str87
	adrp	x0, str74
	add	x0, x0, #:lo12:str74
	bl	donna_files_join
	mov	x21, x0
	bl	builder_dependencies_cache_dir
	mov	x19, x0
	mov	x0, x22
	bl	donna_string_is_empty
	mov	x1, x22
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L25
	mov	x23, x1
	bl	donna_files_join
	mov	x22, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x23
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x2, #1
	str	x2, [x21]
	mov	x2, #8
	add	x2, x21, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x21, x2
	mov	x22, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, str102
	add	x2, x2, #:lo12:str102
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x21, [x2]
	mov	x21, x0
	adrp	x0, str97
	add	x0, x0, #:lo12:str97
	bl	donna_shell_exec
	mov	x0, x21
	mov	x21, x0
	bl	builder_lock_read
	mov	x1, x22
	bl	builder_lock_remove
	mov	x1, x0
	mov	x0, x21
	bl	builder_lock_write
	str	x0, [x19]
	mov	x0, x20
	b	.L27
.L25:
	mov	x0, x21
	bl	donna_files_delete
	mov	x1, x0
	mov	x0, x20
	str	x1, [x19]
.L27:
	adrp	x1, str74
	add	x1, x1, #:lo12:str74
	bl	builder_dependencies_resolve_all_checked
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L29
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, str122
	add	x0, x0, #:lo12:str122
	bl	utilities_colors_orange
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_list_length
	bl	donna_string_from_int
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str124
	add	x0, x0, #:lo12:str124
	bl	__rt_str_concat
	adrp	x1, str128
	add	x1, x1, #:lo12:str128
	bl	__rt_str_concat
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L31
.L29:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x19]
	b	.L31
.L30:
	adrp	x0, str83
	add	x0, x0, #:lo12:str83
	bl	utilities_colors_red
	adrp	x1, str85
	add	x1, x1, #:lo12:str85
	bl	__rt_str_concat
.L31:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type cli_cmd_deps_update, @function
.size cli_cmd_deps_update, .-cli_cmd_deps_update
/* end function cli_cmd_deps_update */

.text
.balign 16
cli_cmd_deps_tree:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	adrp	x1, str135
	add	x1, x1, #:lo12:str135
	adrp	x0, str134
	add	x0, x0, #:lo12:str134
	bl	donna_files_join
	adrp	x1, str134
	add	x1, x1, #:lo12:str134
	bl	builder_dependencies_resolve_all_checked
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L36
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x19, x0
	bl	donna_list_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L35
	mov	x20, x0
	adrp	x0, str156
	add	x0, x0, #:lo12:str156
	bl	utilities_colors_orange
	adrp	x1, str158
	add	x1, x1, #:lo12:str158
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x1, str160
	add	x1, x1, #:lo12:str160
	bl	cli_cmd_deps_tree_lines
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L37
.L35:
	adrp	x0, str154
	add	x0, x0, #:lo12:str154
	bl	utilities_colors_dim
	str	x0, [x19]
	b	.L37
.L36:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L37:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_deps_tree, @function
.size cli_cmd_deps_tree, .-cli_cmd_deps_tree
/* end function cli_cmd_deps_tree */

.text
.balign 16
cli_cmd_deps_tree_lines:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x20, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L40
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x21, x0
	bl	builder_dependencies_dep_name
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	adrp	x0, str175
	add	x0, x0, #:lo12:str175
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	builder_dependencies_dep_path
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	adrp	x0, str179
	add	x0, x0, #:lo12:str179
	bl	__rt_str_concat
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x21
	bl	__rt_str_concat
	adrp	x1, str184
	add	x1, x1, #:lo12:str184
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	bl	cli_cmd_deps_tree_lines
	b	.L41
.L40:
	mov	x0, x20
.L41:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_deps_tree_lines, @function
.size cli_cmd_deps_tree_lines, .-cli_cmd_deps_tree_lines
/* end function cli_cmd_deps_tree_lines */

.text
.balign 16
cli_cmd_deps_help_text:
	hint	#34
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [x29, 72]
	str	x20, [x29, 64]
	str	x21, [x29, 56]
	str	x22, [x29, 48]
	str	x23, [x29, 40]
	str	x24, [x29, 32]
	str	x25, [x29, 24]
	adrp	x0, str189
	add	x0, x0, #:lo12:str189
	bl	utilities_colors_orange
	adrp	x1, str191
	add	x1, x1, #:lo12:str191
	bl	__rt_str_concat
	mov	x19, x0
	adrp	x0, str193
	add	x0, x0, #:lo12:str193
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	mov	x21, x0
	adrp	x0, str196
	add	x0, x0, #:lo12:str196
	bl	utilities_colors_orange
	mov	x22, x0
	adrp	x0, str199
	add	x0, x0, #:lo12:str199
	bl	utilities_colors_path
	mov	x1, x0
	adrp	x0, str198
	add	x0, x0, #:lo12:str198
	bl	__rt_str_concat
	adrp	x1, str202
	add	x1, x1, #:lo12:str202
	bl	__rt_str_concat
	mov	x23, x0
	adrp	x0, str205
	add	x0, x0, #:lo12:str205
	bl	utilities_colors_path
	mov	x1, x0
	adrp	x0, str204
	add	x0, x0, #:lo12:str204
	bl	__rt_str_concat
	adrp	x1, str208
	add	x1, x1, #:lo12:str208
	bl	__rt_str_concat
	mov	x24, x0
	adrp	x0, str211
	add	x0, x0, #:lo12:str211
	bl	utilities_colors_path
	mov	x1, x0
	adrp	x0, str210
	add	x0, x0, #:lo12:str210
	bl	__rt_str_concat
	adrp	x1, str214
	add	x1, x1, #:lo12:str214
	bl	__rt_str_concat
	mov	x25, x0
	mov	x0, #24
	bl	malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, str216
	add	x0, x0, #:lo12:str216
	str	x0, [x1]
	mov	x0, #16
	add	x1, x20, x0
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
	str	x25, [x0]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x19, [x0]
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x19, [x0]
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, str232
	add	x0, x0, #:lo12:str232
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x19, [x0]
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, str239
	add	x0, x0, #:lo12:str239
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str243
	add	x1, x1, #:lo12:str243
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	adrp	x1, str247
	add	x1, x1, #:lo12:str247
	bl	donna_string_join
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
.type cli_cmd_deps_help_text, @function
.size cli_cmd_deps_help_text, .-cli_cmd_deps_help_text
/* end function cli_cmd_deps_help_text */

.text
.balign 16
cli_cmd_deps_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L52
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L48
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L49
.L48:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str268
	add	x1, x1, #:lo12:str268
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L49:
	cmp	w1, #0
	bne	.L51
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_deps_first_positional
	b	.L53
.L51:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L53
.L52:
	adrp	x0, str255
	add	x0, x0, #:lo12:str255
.L53:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_deps_first_positional, @function
.size cli_cmd_deps_first_positional, .-cli_cmd_deps_first_positional
/* end function cli_cmd_deps_first_positional */

.text
.balign 16
cli_cmd_deps_second_positional:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #0
	bl	cli_cmd_deps_second_positional_loop
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_deps_second_positional, @function
.size cli_cmd_deps_second_positional, .-cli_cmd_deps_second_positional
/* end function cli_cmd_deps_second_positional */

.text
.balign 16
cli_cmd_deps_second_positional_loop:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	ldr	x0, [x19]
	cmp	x0, #0
	beq	.L67
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x0, #1
	beq	.L60
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
	b	.L61
.L60:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	mov	x21, x1
	adrp	x1, str310
	add	x1, x1, #:lo12:str310
	bl	strcmp
	mov	x1, x21
	cmp	x0, #0
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	str	x0, [x20]
.L61:
	cmp	w0, #0
	bne	.L63
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	bl	cli_cmd_deps_second_positional_loop
	b	.L68
.L63:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x2, x19, x2
	ldr	x2, [x2]
	mov	x3, #8
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x1, #1
	beq	.L66
	mov	x0, x2
	mov	x1, #1
	bl	cli_cmd_deps_second_positional_loop
	str	x0, [x19]
	b	.L68
.L66:
	str	x0, [x19]
	b	.L68
.L67:
	adrp	x0, str297
	add	x0, x0, #:lo12:str297
.L68:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_deps_second_positional_loop, @function
.size cli_cmd_deps_second_positional_loop, .-cli_cmd_deps_second_positional_loop
/* end function cli_cmd_deps_second_positional_loop */

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
