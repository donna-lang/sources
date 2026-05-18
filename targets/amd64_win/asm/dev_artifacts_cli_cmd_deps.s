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
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq cli_cmd_deps_first_positional
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb13
	subq $32, %rsp
	leaq str9(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb12
	subq $32, %rsp
	leaq str15(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb10
	subq $32, %rsp
	leaq str21(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb8
	subq $32, %rsp
	leaq str27(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb6
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str33(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str35(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_path
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb14
Lbb6:
	movq %rsi, %rcx
	subq $32, %rsp
	callq cli_cmd_deps_tree
	subq $-32, %rsp
	jmp Lbb14
Lbb8:
	movq %rsi, %rcx
	subq $32, %rsp
	callq cli_cmd_deps_update
	subq $-32, %rsp
	jmp Lbb14
Lbb10:
	movq %rsi, %rcx
	subq $32, %rsp
	callq cli_cmd_deps_clean
	subq $-32, %rsp
	jmp Lbb14
Lbb12:
	subq $32, %rsp
	callq cli_cmd_deps_help_text
	subq $-32, %rsp
	jmp Lbb14
Lbb13:
	subq $32, %rsp
	callq cli_cmd_deps_help_text
	subq $-32, %rsp
Lbb14:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_deps_run */

.text
.balign 16
cli_cmd_deps_clean:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq cli_cmd_deps_second_positional
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_dependencies_cache_dir
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_string_is_empty
	movq %rsi, %rdx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb17
	subq $32, %rsp
	movq %rbx, %rcx
	callq donna_files_join
	movq %rax, %rbx
	subq $-32, %rsp
Lbb17:
	subq $32, %rsp
	movq %rbx, %rcx
	callq donna_files_exists
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb19
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str62(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $32, %rsp
	leaq str58(%rip), %rcx
	callq donna_shell_exec
	subq $-32, %rsp
	subq $32, %rsp
	leaq str67(%rip), %rcx
	callq utilities_colors_orange
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str69(%rip), %rcx
	callq utilities_colors_dim
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb20
Lbb19:
	subq $32, %rsp
	leaq str56(%rip), %rcx
	callq utilities_colors_dim
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb20:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_deps_clean */

.text
.balign 16
cli_cmd_deps_update:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq cli_cmd_deps_second_positional
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str75(%rip), %rdx
	leaq str74(%rip), %rcx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	callq donna_files_exists
	movq %rsi, %rdx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb30
	subq $32, %rsp
	movq %rdx, %r12
	leaq str87(%rip), %rdx
	leaq str74(%rip), %rcx
	callq donna_files_join
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_dependencies_cache_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r12, %rcx
	callq donna_string_is_empty
	movq %r12, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb25
	subq $32, %rsp
	movq %rdx, %r12
	callq donna_files_join
	movq %rbx, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r13, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str102(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rbx, 16(%rdx)
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str97(%rip), %rcx
	callq donna_shell_exec
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	callq builder_lock_read
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_lock_remove
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_lock_write
	subq $-32, %rsp
	movq %rax, (%rsi)
	movq %rdi, %rcx
	jmp Lbb27
Lbb25:
	movq %rbx, %rcx
	subq $32, %rsp
	callq donna_files_delete
	movq %rdi, %rcx
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb27:
	subq $32, %rsp
	leaq str74(%rip), %rdx
	callq builder_dependencies_resolve_all_checked
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb29
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str122(%rip), %rcx
	callq utilities_colors_orange
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_length
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_from_int
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str124(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str128(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb31
Lbb29:
	movq 8(%rax), %rax
	movq %rax, (%rsi)
	jmp Lbb31
Lbb30:
	subq $32, %rsp
	leaq str83(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str85(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
Lbb31:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_deps_update */

.text
.balign 16
cli_cmd_deps_tree:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str135(%rip), %rdx
	leaq str134(%rip), %rcx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str134(%rip), %rdx
	callq builder_dependencies_resolve_all_checked
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb36
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_list_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb35
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str156(%rip), %rcx
	callq utilities_colors_orange
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str158(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str160(%rip), %rdx
	callq cli_cmd_deps_tree_lines
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb37
Lbb35:
	subq $32, %rsp
	leaq str154(%rip), %rcx
	callq utilities_colors_dim
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb37
Lbb36:
	movq 8(%rax), %rax
Lbb37:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_deps_tree */

.text
.balign 16
cli_cmd_deps_tree_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb40
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	callq builder_dependencies_dep_name
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_path
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str175(%rip), %rcx
	callq __rt_str_concat
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_dependencies_dep_path
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str179(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str184(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_deps_tree_lines
	subq $-32, %rsp
	jmp Lbb41
Lbb40:
	movq %rsi, %rax
Lbb41:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_deps_tree_lines */

.text
.balign 16
cli_cmd_deps_help_text:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str189(%rip), %rcx
	callq utilities_colors_orange
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str191(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str193(%rip), %rcx
	callq utilities_colors_path
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str196(%rip), %rcx
	callq utilities_colors_orange
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	leaq str199(%rip), %rcx
	callq utilities_colors_path
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str198(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str202(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	leaq str205(%rip), %rcx
	callq utilities_colors_path
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str204(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str208(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	leaq str211(%rip), %rcx
	callq utilities_colors_path
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str210(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str214(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %r15
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	leaq str216(%rip), %rax
	movq %rax, 8(%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %r15, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %r14, 8(%rdi)
	movq %rsi, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %r12, 8(%rdi)
	movq %rsi, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	leaq str232(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	movq %rsi, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	leaq str239(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	leaq str243(%rip), %rax
	movq %rax, 8(%rcx)
	movq %rsi, 16(%rcx)
	subq $32, %rsp
	leaq str247(%rip), %rdx
	callq donna_string_join
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_deps_help_text */

.text
.balign 16
cli_cmd_deps_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb52
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb48
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb49
Lbb48:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str268(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb49:
	cmpl $0, %eax
	jnz Lbb51
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_deps_first_positional
	subq $-32, %rsp
	jmp Lbb53
Lbb51:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb53
Lbb52:
	leaq str255(%rip), %rax
Lbb53:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_deps_first_positional */

.text
.balign 16
cli_cmd_deps_second_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movl $0, %edx
	callq cli_cmd_deps_second_positional_loop
	subq $-32, %rsp
	leave
	ret
/* end function cli_cmd_deps_second_positional */

.text
.balign 16
cli_cmd_deps_second_positional_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb66
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb60
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb61
Lbb60:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str310(%rip), %rdx
	callq strcmp
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb61:
	cmpl $0, %eax
	jnz Lbb63
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_deps_second_positional_loop
	subq $-32, %rsp
	jmp Lbb67
Lbb63:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb65
	subq $32, %rsp
	movl $1, %edx
	callq cli_cmd_deps_second_positional_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb67
Lbb65:
	movq %rax, (%rsi)
	jmp Lbb67
Lbb66:
	leaq str297(%rip), %rax
Lbb67:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_deps_second_positional_loop */

.text
.balign 16
__rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq strlen
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rcx
	callq strlen
	subq $-32, %rsp
	addq %rbx, %rax
	movq %rax, %rcx
	addq $1, %rcx
	subq $32, %rsp
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcpy
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcat
	movq %rsi, %rax
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

