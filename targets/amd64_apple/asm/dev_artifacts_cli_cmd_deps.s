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
.balign 16
.globl _cli_cmd_deps_run
_cli_cmd_deps_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq _cli_cmd_deps_first_positional
	movq %rax, %rdi
	leaq _str3(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb13
	leaq _str9(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb12
	leaq _str15(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb10
	leaq _str21(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb8
	leaq _str27(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb6
	movq %rdi, %rbx
	leaq _str33(%rip), %rdi
	callq _utilities_colors_red
	movq %rax, %rdi
	leaq _str35(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _utilities_colors_path
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb14
Lbb6:
	movq %rbx, %rdi
	callq _cli_cmd_deps_tree
	jmp Lbb14
Lbb8:
	movq %rbx, %rdi
	callq _cli_cmd_deps_update
	jmp Lbb14
Lbb10:
	movq %rbx, %rdi
	callq _cli_cmd_deps_clean
	jmp Lbb14
Lbb12:
	callq _cli_cmd_deps_help_text
	jmp Lbb14
Lbb13:
	callq _cli_cmd_deps_help_text
Lbb14:
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_deps_run */

.text
.balign 16
_cli_cmd_deps_clean:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	callq _cli_cmd_deps_second_positional
	movq %rax, %rbx
	callq _builder_dependencies_cache_dir
	movq %rax, %r13
	movq %rbx, %rdi
	callq _donna_string_is_empty
	movq %rbx, %rsi
	cmpq $1, %rax
	jz Lbb17
	movq %r13, %rdi
	callq _donna_files_join
	movq %rax, %r13
Lbb17:
	movq %r13, %rdi
	callq _donna_files_exists
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb19
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $1, (%r12)
	movq %r13, 8(%r12)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq _str62(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r12, 16(%rsi)
	leaq _str58(%rip), %rdi
	callq _donna_shell_exec
	leaq _str67(%rip), %rdi
	callq _utilities_colors_orange
	movq %rax, %rdi
	movq %rdi, %r12
	leaq _str69(%rip), %rdi
	callq _utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb20
Lbb19:
	leaq _str56(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, (%rbx)
Lbb20:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_deps_clean */

.text
.balign 16
_cli_cmd_deps_update:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	callq _cli_cmd_deps_second_positional
	movq %rax, %rsi
	movq %rsi, %rbx
	leaq _str75(%rip), %rsi
	leaq _str74(%rip), %rdi
	callq _donna_files_join
	movq %rax, %rdi
	movq %rdi, %r12
	callq _donna_files_exists
	movq %rbx, %rsi
	cmpq $0, %rax
	jz Lbb30
	movq %rsi, %r14
	leaq _str87(%rip), %rsi
	leaq _str74(%rip), %rdi
	callq _donna_files_join
	movq %rax, %r13
	callq _builder_dependencies_cache_dir
	movq %rax, %rdi
	movq %rdi, %rbx
	movq %r14, %rdi
	callq _donna_string_is_empty
	movq %r14, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb25
	movq %rsi, %r14
	callq _donna_files_join
	movq %r13, %rdi
	movq %rax, %r15
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq $1, (%r13)
	movq %r15, 8(%r13)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movq %rdi, %r15
	movl $24, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq _str102(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r13, 16(%rsi)
	movq %rdi, %r13
	leaq _str97(%rip), %rdi
	callq _donna_shell_exec
	movq %r13, %rdi
	movq %rdi, %r13
	callq _builder_lock_read
	movq %r14, %rsi
	movq %rax, %rdi
	callq _builder_lock_remove
	movq %r13, %rdi
	movq %rax, %rsi
	callq _builder_lock_write
	movq %rax, (%rbx)
	movq %r12, %rdi
	jmp Lbb27
Lbb25:
	movq %r13, %rdi
	callq _donna_files_delete
	movq %r12, %rdi
	movq %rax, (%rbx)
Lbb27:
	leaq _str74(%rip), %rsi
	callq _builder_dependencies_resolve_all_checked
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb29
	movq 8(%rax), %rdi
	movq %rdi, %r12
	leaq _str122(%rip), %rdi
	callq _utilities_colors_orange
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_list_length
	movq %rax, %rdi
	callq _donna_string_from_int
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq _str124(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str128(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb31
Lbb29:
	movq 8(%rax), %rax
	movq %rax, (%rbx)
	jmp Lbb31
Lbb30:
	leaq _str83(%rip), %rdi
	callq _utilities_colors_red
	movq %rax, %rdi
	leaq _str85(%rip), %rsi
	callq ___rt_str_concat
Lbb31:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_deps_update */

.text
.balign 16
_cli_cmd_deps_tree:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	leaq _str135(%rip), %rsi
	leaq _str134(%rip), %rdi
	callq _donna_files_join
	movq %rax, %rdi
	leaq _str134(%rip), %rsi
	callq _builder_dependencies_resolve_all_checked
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb36
	movq 8(%rax), %rdi
	movq %rdi, %rbx
	callq _donna_list_is_empty
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb35
	movq %rdi, %r12
	leaq _str156(%rip), %rdi
	callq _utilities_colors_orange
	movq %rax, %rdi
	leaq _str158(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	leaq _str160(%rip), %rsi
	callq _cli_cmd_deps_tree_lines
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb37
Lbb35:
	leaq _str154(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, (%rbx)
	jmp Lbb37
Lbb36:
	movq 8(%rax), %rax
Lbb37:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_deps_tree */

.text
.balign 16
_cli_cmd_deps_tree_lines:
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
	jz Lbb40
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rdi, %r13
	callq _builder_dependencies_dep_name
	movq %rax, %rdi
	callq _utilities_colors_path
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	leaq _str175(%rip), %rdi
	callq ___rt_str_concat
	movq %r13, %rdi
	movq %rax, %r13
	callq _builder_dependencies_dep_path
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	leaq _str179(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_dim
	movq %r13, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str184(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rbx, %rax
	movq %rdi, %rbx
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _cli_cmd_deps_tree_lines
	jmp Lbb41
Lbb40:
	movq %rbx, %rax
Lbb41:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_deps_tree_lines */

.text
.balign 16
_cli_cmd_deps_help_text:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	leaq _str189(%rip), %rdi
	callq _utilities_colors_orange
	movq %rax, %rdi
	leaq _str191(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	movq %rdi, %rbx
	leaq _str193(%rip), %rdi
	callq _utilities_colors_path
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %r13
	leaq _str196(%rip), %rdi
	callq _utilities_colors_orange
	movq %rax, %r14
	leaq _str199(%rip), %rdi
	callq _utilities_colors_path
	movq %rax, %rsi
	leaq _str198(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str202(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %r15
	leaq _str205(%rip), %rdi
	callq _utilities_colors_path
	movq %rax, %rsi
	leaq _str204(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str208(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %r12
	leaq _str211(%rip), %rdi
	callq _utilities_colors_path
	movq %rax, %rsi
	leaq _str210(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str214(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, -16(%rbp)
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	leaq _str216(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, %rbx
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	movl $24, %edi
	callq _malloc
	xchgq %rax, %rbx
	movq -16(%rbp), %rcx
	movq $1, (%rbx)
	movq %rcx, 8(%rbx)
	movq %rax, 16(%rbx)
	movl $24, %edi
	callq _malloc
	xchgq %rax, %r12
	movq $1, (%r12)
	movq %rax, 8(%r12)
	movq %rbx, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %r15, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $1, (%r12)
	movq %r14, 8(%r12)
	movq %rbx, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq _str232(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $1, (%r12)
	movq %r13, 8(%r12)
	movq %rbx, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq _str239(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	leaq _str243(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	leaq _str247(%rip), %rsi
	callq _donna_string_join
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
_cli_cmd_deps_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb52
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb48
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb49
Lbb48:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str268(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb49:
	cmpl $0, %eax
	jnz Lbb51
	movq 16(%rdi), %rdi
	callq _cli_cmd_deps_first_positional
	jmp Lbb53
Lbb51:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp Lbb53
Lbb52:
	leaq _str255(%rip), %rax
Lbb53:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_deps_first_positional */

.text
.balign 16
_cli_cmd_deps_second_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %esi
	callq _cli_cmd_deps_second_positional_loop
	leave
	ret
/* end function cli_cmd_deps_second_positional */

.text
.balign 16
_cli_cmd_deps_second_positional_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb66
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb60
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb61
Lbb60:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	movq %rsi, %r13
	leaq _str310(%rip), %rsi
	callq _strcmp
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb61:
	cmpl $0, %eax
	jnz Lbb63
	movq 16(%rdi), %rdi
	callq _cli_cmd_deps_second_positional_loop
	jmp Lbb67
Lbb63:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rsi
	jz Lbb65
	movl $1, %esi
	callq _cli_cmd_deps_second_positional_loop
	movq %rax, (%rbx)
	jmp Lbb67
Lbb65:
	movq %rax, (%rbx)
	jmp Lbb67
Lbb66:
	leaq _str297(%rip), %rax
Lbb67:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_deps_second_positional_loop */

.text
.balign 16
___rt_str_concat:
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
	callq _strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq _strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq _malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq _strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

