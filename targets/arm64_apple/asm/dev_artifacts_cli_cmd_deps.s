.data
.balign 8
_str3:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str9:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
_str15:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
_str21:
	.ascii "update"
	.byte 0
/* end data */

.data
.balign 8
_str27:
	.ascii "tree"
	.byte 0
/* end data */

.data
.balign 8
_str33:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str35:
	.ascii ": unknown deps command "
	.byte 0
/* end data */

.data
.balign 8
_str56:
	.ascii "nothing to clean"
	.byte 0
/* end data */

.data
.balign 8
_str58:
	.ascii "rm"
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str62:
	.ascii "-rf"
	.byte 0
/* end data */

.data
.balign 8
_str67:
	.ascii "Cleaned"
	.byte 0
/* end data */

.data
.balign 8
_str69:
	.ascii " dependency cache"
	.byte 0
/* end data */

.data
.balign 8
_str74:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
_str83:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str85:
	.ascii ": donna.toml not found"
	.byte 0
/* end data */

.data
.balign 8
_str87:
	.ascii "donna.lock"
	.byte 0
/* end data */

.data
.balign 8
_str97:
	.ascii "rm"
	.byte 0
/* end data */

.data
.balign 8
_str102:
	.ascii "-rf"
	.byte 0
/* end data */

.data
.balign 8
_str122:
	.ascii "Updated"
	.byte 0
/* end data */

.data
.balign 8
_str124:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str128:
	.ascii " dependencies"
	.byte 0
/* end data */

.data
.balign 8
_str134:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
_str154:
	.ascii "no dependencies"
	.byte 0
/* end data */

.data
.balign 8
_str156:
	.ascii "Dependencies"
	.byte 0
/* end data */

.data
.balign 8
_str158:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str160:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str175:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
_str179:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
_str184:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str189:
	.ascii "Usage:"
	.byte 0
/* end data */

.data
.balign 8
_str191:
	.ascii " donna deps "
	.byte 0
/* end data */

.data
.balign 8
_str193:
	.ascii "<COMMAND>"
	.byte 0
/* end data */

.data
.balign 8
_str196:
	.ascii "Commands:"
	.byte 0
/* end data */

.data
.balign 8
_str198:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
_str199:
	.ascii "clean [NAME]"
	.byte 0
/* end data */

.data
.balign 8
_str202:
	.ascii "    Remove cached packages"
	.byte 0
/* end data */

.data
.balign 8
_str204:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
_str205:
	.ascii "update [NAME]"
	.byte 0
/* end data */

.data
.balign 8
_str208:
	.ascii "   Refresh lockfile dependencies"
	.byte 0
/* end data */

.data
.balign 8
_str210:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
_str211:
	.ascii "tree"
	.byte 0
/* end data */

.data
.balign 8
_str214:
	.ascii "            Show resolved dependencies"
	.byte 0
/* end data */

.data
.balign 8
_str216:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str232:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str239:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str243:
	.ascii "donna deps - manage package dependencies"
	.byte 0
/* end data */

.data
.balign 8
_str247:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str255:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str268:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str297:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str310:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 4
.globl _cli_cmd_deps_run
_cli_cmd_deps_run:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	mov	x0, x19
	bl	_cli_cmd_deps_first_positional
	adrp	x1, _str3@page
	add	x1, x1, _str3@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L13
	adrp	x1, _str9@page
	add	x1, x1, _str9@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L12
	adrp	x1, _str15@page
	add	x1, x1, _str15@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L10
	adrp	x1, _str21@page
	add	x1, x1, _str21@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L8
	adrp	x1, _str27@page
	add	x1, x1, _str27@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L6
	mov	x19, x0
	adrp	x0, _str33@page
	add	x0, x0, _str33@pageoff
	bl	_utilities_colors_red
	adrp	x1, _str35@page
	add	x1, x1, _str35@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_utilities_colors_path
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L14
L6:
	mov	x0, x19
	bl	_cli_cmd_deps_tree
	b	L14
L8:
	mov	x0, x19
	bl	_cli_cmd_deps_update
	b	L14
L10:
	mov	x0, x19
	bl	_cli_cmd_deps_clean
	b	L14
L12:
	bl	_cli_cmd_deps_help_text
	b	L14
L13:
	bl	_cli_cmd_deps_help_text
L14:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_deps_run */

.text
.balign 4
_cli_cmd_deps_clean:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	bl	_cli_cmd_deps_second_positional
	mov	x19, x0
	bl	_builder_dependencies_cache_dir
	mov	x21, x0
	mov	x0, x19
	bl	_donna_string_is_empty
	mov	x1, x19
	cmp	x0, #1
	beq	L17
	mov	x0, x21
	bl	_donna_files_join
	mov	x21, x0
L17:
	mov	x0, x21
	bl	_donna_files_exists
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #0
	beq	L19
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	add	x1, x20, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x2, x1, x0
	adrp	x0, _str62@page
	add	x0, x0, _str62@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x20, [x0]
	adrp	x0, _str58@page
	add	x0, x0, _str58@pageoff
	bl	_donna_shell_exec
	adrp	x0, _str67@page
	add	x0, x0, _str67@pageoff
	bl	_utilities_colors_orange
	mov	x20, x0
	adrp	x0, _str69@page
	add	x0, x0, _str69@pageoff
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	str	x0, [x19]
	b	L20
L19:
	adrp	x0, _str56@page
	add	x0, x0, _str56@pageoff
	bl	_utilities_colors_dim
	str	x0, [x19]
L20:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_deps_clean */

.text
.balign 4
_cli_cmd_deps_update:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	bl	_cli_cmd_deps_second_positional
	mov	x1, x0
	mov	x19, x1
	adrp	x1, _str75@page
	add	x1, x1, _str75@pageoff
	adrp	x0, _str74@page
	add	x0, x0, _str74@pageoff
	bl	_donna_files_join
	mov	x20, x0
	bl	_donna_files_exists
	mov	x1, x19
	cmp	x0, #0
	beq	L30
	mov	x22, x1
	adrp	x1, _str87@page
	add	x1, x1, _str87@pageoff
	adrp	x0, _str74@page
	add	x0, x0, _str74@pageoff
	bl	_donna_files_join
	mov	x21, x0
	bl	_builder_dependencies_cache_dir
	mov	x19, x0
	mov	x0, x22
	bl	_donna_string_is_empty
	mov	x1, x22
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L25
	mov	x23, x1
	bl	_donna_files_join
	mov	x22, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
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
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _str102@page
	add	x2, x2, _str102@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x21, [x2]
	mov	x21, x0
	adrp	x0, _str97@page
	add	x0, x0, _str97@pageoff
	bl	_donna_shell_exec
	mov	x0, x21
	mov	x21, x0
	bl	_builder_lock_read
	mov	x1, x22
	bl	_builder_lock_remove
	mov	x1, x0
	mov	x0, x21
	bl	_builder_lock_write
	str	x0, [x19]
	mov	x0, x20
	b	L27
L25:
	mov	x0, x21
	bl	_donna_files_delete
	mov	x1, x0
	mov	x0, x20
	str	x1, [x19]
L27:
	adrp	x1, _str74@page
	add	x1, x1, _str74@pageoff
	bl	_builder_dependencies_resolve_all_checked
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L29
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, _str122@page
	add	x0, x0, _str122@pageoff
	bl	_utilities_colors_orange
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_donna_list_length
	bl	_donna_string_from_int
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, _str124@page
	add	x0, x0, _str124@pageoff
	bl	___rt_str_concat
	adrp	x1, _str128@page
	add	x1, x1, _str128@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	str	x0, [x19]
	b	L31
L29:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x19]
	b	L31
L30:
	adrp	x0, _str83@page
	add	x0, x0, _str83@pageoff
	bl	_utilities_colors_red
	adrp	x1, _str85@page
	add	x1, x1, _str85@pageoff
	bl	___rt_str_concat
L31:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function cli_cmd_deps_update */

.text
.balign 4
_cli_cmd_deps_tree:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	adrp	x1, _str135@page
	add	x1, x1, _str135@pageoff
	adrp	x0, _str134@page
	add	x0, x0, _str134@pageoff
	bl	_donna_files_join
	adrp	x1, _str134@page
	add	x1, x1, _str134@pageoff
	bl	_builder_dependencies_resolve_all_checked
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L36
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x19, x0
	bl	_donna_list_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L35
	mov	x20, x0
	adrp	x0, _str156@page
	add	x0, x0, _str156@pageoff
	bl	_utilities_colors_orange
	adrp	x1, _str158@page
	add	x1, x1, _str158@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x1, _str160@page
	add	x1, x1, _str160@pageoff
	bl	_cli_cmd_deps_tree_lines
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	str	x0, [x19]
	b	L37
L35:
	adrp	x0, _str154@page
	add	x0, x0, _str154@pageoff
	bl	_utilities_colors_dim
	str	x0, [x19]
	b	L37
L36:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
L37:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_deps_tree */

.text
.balign 4
_cli_cmd_deps_tree_lines:
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
	beq	L40
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x21, x0
	bl	_builder_dependencies_dep_name
	bl	_utilities_colors_path
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	adrp	x0, _str175@page
	add	x0, x0, _str175@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_builder_dependencies_dep_path
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	adrp	x0, _str179@page
	add	x0, x0, _str179@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x21
	bl	___rt_str_concat
	adrp	x1, _str184@page
	add	x1, x1, _str184@pageoff
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
	bl	_cli_cmd_deps_tree_lines
	b	L41
L40:
	mov	x0, x20
L41:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_deps_tree_lines */

.text
.balign 4
_cli_cmd_deps_help_text:
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
	adrp	x0, _str189@page
	add	x0, x0, _str189@pageoff
	bl	_utilities_colors_orange
	adrp	x1, _str191@page
	add	x1, x1, _str191@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	adrp	x0, _str193@page
	add	x0, x0, _str193@pageoff
	bl	_utilities_colors_path
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	mov	x21, x0
	adrp	x0, _str196@page
	add	x0, x0, _str196@pageoff
	bl	_utilities_colors_orange
	mov	x22, x0
	adrp	x0, _str199@page
	add	x0, x0, _str199@pageoff
	bl	_utilities_colors_path
	mov	x1, x0
	adrp	x0, _str198@page
	add	x0, x0, _str198@pageoff
	bl	___rt_str_concat
	adrp	x1, _str202@page
	add	x1, x1, _str202@pageoff
	bl	___rt_str_concat
	mov	x23, x0
	adrp	x0, _str205@page
	add	x0, x0, _str205@pageoff
	bl	_utilities_colors_path
	mov	x1, x0
	adrp	x0, _str204@page
	add	x0, x0, _str204@pageoff
	bl	___rt_str_concat
	adrp	x1, _str208@page
	add	x1, x1, _str208@pageoff
	bl	___rt_str_concat
	mov	x24, x0
	adrp	x0, _str211@page
	add	x0, x0, _str211@pageoff
	bl	_utilities_colors_path
	mov	x1, x0
	adrp	x0, _str210@page
	add	x0, x0, _str210@pageoff
	bl	___rt_str_concat
	adrp	x1, _str214@page
	add	x1, x1, _str214@pageoff
	bl	___rt_str_concat
	mov	x25, x0
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str216@page
	add	x0, x0, _str216@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x1, x20, x0
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
	str	x25, [x0]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
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
	bl	_malloc
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
	bl	_malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str232@page
	add	x0, x0, _str232@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str239@page
	add	x0, x0, _str239@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str243@page
	add	x1, x1, _str243@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	adrp	x1, _str247@page
	add	x1, x1, _str247@pageoff
	bl	_donna_string_join
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function cli_cmd_deps_help_text */

.text
.balign 4
_cli_cmd_deps_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L52
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L48
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L49
L48:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, _str268@page
	add	x1, x1, _str268@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L49:
	cmp	w1, #0
	bne	L51
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cmd_deps_first_positional
	b	L53
L51:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L53
L52:
	adrp	x0, _str255@page
	add	x0, x0, _str255@pageoff
L53:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_deps_first_positional */

.text
.balign 4
_cli_cmd_deps_second_positional:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #0
	bl	_cli_cmd_deps_second_positional_loop
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cmd_deps_second_positional */

.text
.balign 4
_cli_cmd_deps_second_positional_loop:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	ldr	x0, [x19]
	cmp	x0, #0
	beq	L67
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x0, #1
	beq	L60
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
	b	L61
L60:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	mov	x21, x1
	adrp	x1, _str310@page
	add	x1, x1, _str310@pageoff
	bl	_strcmp
	mov	x1, x21
	cmp	x0, #0
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	str	x0, [x20]
L61:
	cmp	w0, #0
	bne	L63
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	bl	_cli_cmd_deps_second_positional_loop
	b	L68
L63:
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
	beq	L66
	mov	x0, x2
	mov	x1, #1
	bl	_cli_cmd_deps_second_positional_loop
	str	x0, [x19]
	b	L68
L66:
	str	x0, [x19]
	b	L68
L67:
	adrp	x0, _str297@page
	add	x0, x0, _str297@pageoff
L68:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_deps_second_positional_loop */

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

