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
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq cli_cmd_deps_first_positional
	movq %rax, %rdi
	leaq str3(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb13
	leaq str9(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb12
	leaq str15(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb10
	leaq str21(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb8
	leaq str27(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb6
	movq %rdi, %rbx
	leaq str33(%rip), %rdi
	callq utilities_colors_red
	movq %rax, %rdi
	leaq str35(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_colors_path
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	jmp .Lbb14
.Lbb6:
	movq %rbx, %rdi
	callq cli_cmd_deps_tree
	jmp .Lbb14
.Lbb8:
	movq %rbx, %rdi
	callq cli_cmd_deps_update
	jmp .Lbb14
.Lbb10:
	movq %rbx, %rdi
	callq cli_cmd_deps_clean
	jmp .Lbb14
.Lbb12:
	callq cli_cmd_deps_help_text
	jmp .Lbb14
.Lbb13:
	callq cli_cmd_deps_help_text
.Lbb14:
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_deps_run, @function
.size cli_cmd_deps_run, .-cli_cmd_deps_run
/* end function cli_cmd_deps_run */

.text
.balign 16
cli_cmd_deps_clean:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	callq cli_cmd_deps_second_positional
	movq %rax, %rbx
	callq builder_dependencies_cache_dir
	movq %rax, %r13
	movq %rbx, %rdi
	callq donna_string_is_empty
	movq %rbx, %rsi
	cmpq $1, %rax
	jz .Lbb17
	movq %r13, %rdi
	callq donna_files_join
	movq %rax, %r13
.Lbb17:
	movq %r13, %rdi
	callq donna_files_exists
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz .Lbb19
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $1, (%r12)
	movq %r13, 8(%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq str62(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r12, 16(%rsi)
	leaq str58(%rip), %rdi
	callq donna_shell_exec
	leaq str67(%rip), %rdi
	callq utilities_colors_orange
	movq %rax, %rdi
	movq %rdi, %r12
	leaq str69(%rip), %rdi
	callq utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb20
.Lbb19:
	leaq str56(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, (%rbx)
.Lbb20:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_deps_clean, @function
.size cli_cmd_deps_clean, .-cli_cmd_deps_clean
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
	pushq %r14
	pushq %r15
	callq cli_cmd_deps_second_positional
	movq %rax, %rsi
	movq %rsi, %rbx
	leaq str75(%rip), %rsi
	leaq str74(%rip), %rdi
	callq donna_files_join
	movq %rax, %rdi
	movq %rdi, %r12
	callq donna_files_exists
	movq %rbx, %rsi
	cmpq $0, %rax
	jz .Lbb30
	movq %rsi, %r14
	leaq str87(%rip), %rsi
	leaq str74(%rip), %rdi
	callq donna_files_join
	movq %rax, %r13
	callq builder_dependencies_cache_dir
	movq %rax, %rdi
	movq %rdi, %rbx
	movq %r14, %rdi
	callq donna_string_is_empty
	movq %r14, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb25
	movq %rsi, %r14
	callq donna_files_join
	movq %r13, %rdi
	movq %rax, %r15
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq $1, (%r13)
	movq %r15, 8(%r13)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movq %rdi, %r15
	movl $24, %edi
	callq malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq str102(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r13, 16(%rsi)
	movq %rdi, %r13
	leaq str97(%rip), %rdi
	callq donna_shell_exec
	movq %r13, %rdi
	movq %rdi, %r13
	callq builder_lock_read
	movq %r14, %rsi
	movq %rax, %rdi
	callq builder_lock_remove
	movq %r13, %rdi
	movq %rax, %rsi
	callq builder_lock_write
	movq %rax, (%rbx)
	movq %r12, %rdi
	jmp .Lbb27
.Lbb25:
	movq %r13, %rdi
	callq donna_files_delete
	movq %r12, %rdi
	movq %rax, (%rbx)
.Lbb27:
	leaq str74(%rip), %rsi
	callq builder_dependencies_resolve_all_checked
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb29
	movq 8(%rax), %rdi
	movq %rdi, %r12
	leaq str122(%rip), %rdi
	callq utilities_colors_orange
	movq %r12, %rdi
	movq %rax, %r12
	callq donna_list_length
	movq %rax, %rdi
	callq donna_string_from_int
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq str124(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str128(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb31
.Lbb29:
	movq 8(%rax), %rax
	movq %rax, (%rbx)
	jmp .Lbb31
.Lbb30:
	leaq str83(%rip), %rdi
	callq utilities_colors_red
	movq %rax, %rdi
	leaq str85(%rip), %rsi
	callq __rt_str_concat
.Lbb31:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_deps_update, @function
.size cli_cmd_deps_update, .-cli_cmd_deps_update
/* end function cli_cmd_deps_update */

.text
.balign 16
cli_cmd_deps_tree:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	leaq str135(%rip), %rsi
	leaq str134(%rip), %rdi
	callq donna_files_join
	movq %rax, %rdi
	leaq str134(%rip), %rsi
	callq builder_dependencies_resolve_all_checked
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb36
	movq 8(%rax), %rdi
	movq %rdi, %rbx
	callq donna_list_is_empty
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb35
	movq %rdi, %r12
	leaq str156(%rip), %rdi
	callq utilities_colors_orange
	movq %rax, %rdi
	leaq str158(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	leaq str160(%rip), %rsi
	callq cli_cmd_deps_tree_lines
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb37
.Lbb35:
	leaq str154(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, (%rbx)
	jmp .Lbb37
.Lbb36:
	movq 8(%rax), %rax
.Lbb37:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_deps_tree, @function
.size cli_cmd_deps_tree, .-cli_cmd_deps_tree
/* end function cli_cmd_deps_tree */

.text
.balign 16
cli_cmd_deps_tree_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb40
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rdi, %r13
	callq builder_dependencies_dep_name
	movq %rax, %rdi
	callq utilities_colors_path
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	leaq str175(%rip), %rdi
	callq __rt_str_concat
	movq %r13, %rdi
	movq %rax, %r13
	callq builder_dependencies_dep_path
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	leaq str179(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %r13, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str184(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rbx, %rax
	movq %rdi, %rbx
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	callq cli_cmd_deps_tree_lines
	jmp .Lbb41
.Lbb40:
	movq %rbx, %rax
.Lbb41:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_deps_tree_lines, @function
.size cli_cmd_deps_tree_lines, .-cli_cmd_deps_tree_lines
/* end function cli_cmd_deps_tree_lines */

.text
.balign 16
cli_cmd_deps_help_text:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	leaq str189(%rip), %rdi
	callq utilities_colors_orange
	movq %rax, %rdi
	leaq str191(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %rbx
	leaq str193(%rip), %rdi
	callq utilities_colors_path
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %r13
	leaq str196(%rip), %rdi
	callq utilities_colors_orange
	movq %rax, %r14
	leaq str199(%rip), %rdi
	callq utilities_colors_path
	movq %rax, %rsi
	leaq str198(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str202(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %r15
	leaq str205(%rip), %rdi
	callq utilities_colors_path
	movq %rax, %rsi
	leaq str204(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str208(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %r12
	leaq str211(%rip), %rdi
	callq utilities_colors_path
	movq %rax, %rsi
	leaq str210(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str214(%rip), %rsi
	callq __rt_str_concat
	movq %rax, -16(%rbp)
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	leaq str216(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, %rbx
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	movl $24, %edi
	callq malloc
	xchgq %rax, %rbx
	movq -16(%rbp), %rcx
	movq $1, (%rbx)
	movq %rcx, 8(%rbx)
	movq %rax, 16(%rbx)
	movl $24, %edi
	callq malloc
	xchgq %rax, %r12
	movq $1, (%r12)
	movq %rax, 8(%r12)
	movq %rbx, 16(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %r15, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $1, (%r12)
	movq %r14, 8(%r12)
	movq %rbx, 16(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str232(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $1, (%r12)
	movq %r13, 8(%r12)
	movq %rbx, 16(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str239(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	leaq str243(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	leaq str247(%rip), %rsi
	callq donna_string_join
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_deps_help_text, @function
.size cli_cmd_deps_help_text, .-cli_cmd_deps_help_text
/* end function cli_cmd_deps_help_text */

.text
.balign 16
cli_cmd_deps_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb52
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb48
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb49
.Lbb48:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq str268(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb49:
	cmpl $0, %eax
	jnz .Lbb51
	movq 16(%rdi), %rdi
	callq cli_cmd_deps_first_positional
	jmp .Lbb53
.Lbb51:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp .Lbb53
.Lbb52:
	leaq str255(%rip), %rax
.Lbb53:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_deps_first_positional, @function
.size cli_cmd_deps_first_positional, .-cli_cmd_deps_first_positional
/* end function cli_cmd_deps_first_positional */

.text
.balign 16
cli_cmd_deps_second_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %esi
	callq cli_cmd_deps_second_positional_loop
	leave
	ret
.type cli_cmd_deps_second_positional, @function
.size cli_cmd_deps_second_positional, .-cli_cmd_deps_second_positional
/* end function cli_cmd_deps_second_positional */

.text
.balign 16
cli_cmd_deps_second_positional_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb66
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb60
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb61
.Lbb60:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	movq %rsi, %r13
	leaq str310(%rip), %rsi
	callq strcmp
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb61:
	cmpl $0, %eax
	jnz .Lbb63
	movq 16(%rdi), %rdi
	callq cli_cmd_deps_second_positional_loop
	jmp .Lbb67
.Lbb63:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rsi
	jz .Lbb65
	movl $1, %esi
	callq cli_cmd_deps_second_positional_loop
	movq %rax, (%rbx)
	jmp .Lbb67
.Lbb65:
	movq %rax, (%rbx)
	jmp .Lbb67
.Lbb66:
	leaq str297(%rip), %rax
.Lbb67:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_deps_second_positional_loop, @function
.size cli_cmd_deps_second_positional_loop, .-cli_cmd_deps_second_positional_loop
/* end function cli_cmd_deps_second_positional_loop */

.text
.balign 16
__rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
