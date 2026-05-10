.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str360:
	.ascii "_"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_analysis_scope_refs_in_expr
compiler_analysis_scope_refs_in_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb36
	cmpq $1, %rax
	jz Lbb35
	cmpq $2, %rax
	jz Lbb34
	cmpq $3, %rax
	jz Lbb33
	cmpq $4, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb32
	cmpq $5, %rax
	jz Lbb31
	cmpq $6, %rax
	jz Lbb30
	cmpq $7, %rax
	jz Lbb29
	cmpq $8, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb28
	cmpq $9, %rax
	jz Lbb27
	cmpq $10, %rax
	jz Lbb26
	cmpq $11, %rax
	jz Lbb25
	cmpq $12, %rax
	jz Lbb24
	cmpq $13, %rax
	jz Lbb23
	cmpq $14, %rax
	jz Lbb22
	cmpq $15, %rax
	jz Lbb21
	cmpq $16, %rax
	jz Lbb20
	cmpq $17, %rax
	jz Lbb19
	leaq donna_nil(%rip), %rax
	jmp Lbb37
Lbb19:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	subq $-32, %rsp
	jmp Lbb37
Lbb20:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	subq $-32, %rsp
	jmp Lbb37
Lbb21:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	subq $-32, %rsp
	jmp Lbb37
Lbb22:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb37
Lbb23:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_stmts
	subq $-32, %rsp
	jmp Lbb37
Lbb24:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq compiler_analysis_scope_refs_in_clause(%rip), %rdx
	callq donna_list_flat_map
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb37
Lbb25:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	subq $-32, %rsp
	jmp Lbb37
Lbb26:
	movq %rcx, %rax
	movq 16(%rcx), %rcx
	movq 24(%rax), %rsi
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb37
Lbb27:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq compiler_analysis_scope_refs_in_expr(%rip), %rdx
	callq donna_list_flat_map
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb37
Lbb28:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	leaq compiler_analysis_scope_refs_in_expr(%rip), %rdx
	callq donna_list_flat_map
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb37
Lbb29:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_analysis_scope_refs_in_expr(%rip), %rdx
	callq donna_list_flat_map
	subq $-32, %rsp
	jmp Lbb37
Lbb30:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_analysis_scope_refs_in_expr(%rip), %rdx
	callq donna_list_flat_map
	subq $-32, %rsp
	jmp Lbb37
Lbb31:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	subq $-32, %rsp
	jmp Lbb37
Lbb32:
	movq 8(%rcx), %rsi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb37
Lbb33:
	leaq donna_nil(%rip), %rax
	jmp Lbb37
Lbb34:
	leaq donna_nil(%rip), %rax
	jmp Lbb37
Lbb35:
	leaq donna_nil(%rip), %rax
	jmp Lbb37
Lbb36:
	leaq donna_nil(%rip), %rax
Lbb37:
	popq %rsi
	leave
	ret
/* end function compiler_analysis_scope_refs_in_expr */

.text
.balign 16
.globl compiler_analysis_scope_refs_in_stmts
compiler_analysis_scope_refs_in_stmts:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq compiler_analysis_scope_refs_in_stmt(%rip), %rdx
	callq donna_list_flat_map
	subq $-32, %rsp
	leave
	ret
/* end function compiler_analysis_scope_refs_in_stmts */

.text
.balign 16
.globl compiler_analysis_scope_refs_in_stmt
compiler_analysis_scope_refs_in_stmt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb44
	cmpq $1, %rax
	jz Lbb43
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	subq $-32, %rsp
	jmp Lbb45
Lbb43:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	subq $-32, %rsp
	jmp Lbb45
Lbb44:
	movq 24(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	subq $-32, %rsp
Lbb45:
	leave
	ret
/* end function compiler_analysis_scope_refs_in_stmt */

.text
.balign 16
.globl compiler_analysis_scope_bound_by_pattern
compiler_analysis_scope_bound_by_pattern:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb64
	cmpq $1, %rax
	jz Lbb63
	cmpq $2, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb62
	cmpq $3, %rax
	jz Lbb61
	cmpq $4, %rax
	jz Lbb60
	cmpq $5, %rax
	jz Lbb59
	cmpq $6, %rax
	jz Lbb58
	cmpq $7, %rax
	jz Lbb57
	cmpq $8, %rax
	jz Lbb56
	movq 24(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_analysis_scope_bound_by_pattern(%rip), %rdx
	callq donna_list_flat_map
	subq $-32, %rsp
	jmp Lbb65
Lbb56:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_analysis_scope_bound_by_pattern(%rip), %rdx
	callq donna_list_flat_map
	subq $-32, %rsp
	jmp Lbb65
Lbb57:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_analysis_scope_bound_by_pattern(%rip), %rdx
	callq donna_list_flat_map
	subq $-32, %rsp
	jmp Lbb65
Lbb58:
	leaq donna_nil(%rip), %rax
	jmp Lbb65
Lbb59:
	leaq donna_nil(%rip), %rax
	jmp Lbb65
Lbb60:
	leaq donna_nil(%rip), %rax
	jmp Lbb65
Lbb61:
	leaq donna_nil(%rip), %rax
	jmp Lbb65
Lbb62:
	movq 8(%rcx), %rbx
	movq 16(%rcx), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rbx, (%rsi)
	movq %rdi, 8(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb65
Lbb63:
	leaq donna_nil(%rip), %rax
	jmp Lbb65
Lbb64:
	leaq donna_nil(%rip), %rax
Lbb65:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_analysis_scope_bound_by_pattern */

.text
.balign 16
compiler_analysis_scope_refs_in_clause:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq 16(%rcx), %rax
	movq 24(%rcx), %rcx
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb68
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	jmp Lbb70
Lbb68:
	leaq donna_nil(%rip), %rax
	movq %rax, %rsi
Lbb70:
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_analysis_scope_refs_in_clause */

.text
.balign 16
.globl compiler_analysis_scope_contains_name
compiler_analysis_scope_contains_name:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb77
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	movq %rdx, %rdi
	callq donna_string_equal
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb75
	subq $32, %rsp
	callq compiler_analysis_scope_contains_name
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb78
Lbb75:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb78
Lbb77:
	movl $0, %eax
Lbb78:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_analysis_scope_contains_name */

.text
.balign 16
.globl compiler_analysis_scope_is_discard
compiler_analysis_scope_is_discard:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str360(%rip), %rdx
	callq donna_string_starts_with
	subq $-32, %rsp
	leave
	ret
/* end function compiler_analysis_scope_is_discard */

