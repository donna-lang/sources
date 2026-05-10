.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str360:
	.ascii "_"
	.byte 0
/* end data */

.text
.balign 16
.globl _compiler_analysis_scope_refs_in_expr
_compiler_analysis_scope_refs_in_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb36
	cmpq $1, %rax
	jz Lbb35
	cmpq $2, %rax
	jz Lbb34
	cmpq $3, %rax
	jz Lbb33
	cmpq $4, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb32
	cmpq $5, %rax
	jz Lbb31
	cmpq $6, %rax
	jz Lbb30
	cmpq $7, %rax
	jz Lbb29
	cmpq $8, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
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
	leaq _donna_nil(%rip), %rax
	jmp Lbb37
Lbb19:
	movq 8(%rdi), %rdi
	callq _compiler_analysis_scope_refs_in_expr
	jmp Lbb37
Lbb20:
	movq 8(%rdi), %rdi
	callq _compiler_analysis_scope_refs_in_expr
	jmp Lbb37
Lbb21:
	movq 16(%rdi), %rdi
	callq _compiler_analysis_scope_refs_in_expr
	jmp Lbb37
Lbb22:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq _compiler_analysis_scope_refs_in_expr
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_analysis_scope_refs_in_expr
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	jmp Lbb37
Lbb23:
	movq 8(%rdi), %rdi
	callq _compiler_analysis_scope_refs_in_stmts
	jmp Lbb37
Lbb24:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq _compiler_analysis_scope_refs_in_expr
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq _compiler_analysis_scope_refs_in_clause(%rip), %rsi
	callq _donna_list_flat_map
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	jmp Lbb37
Lbb25:
	movq 16(%rdi), %rdi
	callq _compiler_analysis_scope_refs_in_expr
	jmp Lbb37
Lbb26:
	movq %rdi, %rax
	movq 16(%rdi), %rdi
	movq 24(%rax), %rbx
	callq _compiler_analysis_scope_refs_in_expr
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_analysis_scope_refs_in_expr
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	jmp Lbb37
Lbb27:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq _compiler_analysis_scope_refs_in_expr
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq _compiler_analysis_scope_refs_in_expr(%rip), %rsi
	callq _donna_list_flat_map
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	jmp Lbb37
Lbb28:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	leaq _compiler_analysis_scope_refs_in_expr(%rip), %rsi
	callq _donna_list_flat_map
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_analysis_scope_refs_in_expr
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	jmp Lbb37
Lbb29:
	movq 8(%rdi), %rdi
	leaq _compiler_analysis_scope_refs_in_expr(%rip), %rsi
	callq _donna_list_flat_map
	jmp Lbb37
Lbb30:
	movq 8(%rdi), %rdi
	leaq _compiler_analysis_scope_refs_in_expr(%rip), %rsi
	callq _donna_list_flat_map
	jmp Lbb37
Lbb31:
	movq 8(%rdi), %rdi
	callq _compiler_analysis_scope_refs_in_expr
	jmp Lbb37
Lbb32:
	movq 8(%rdi), %rbx
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb37
Lbb33:
	leaq _donna_nil(%rip), %rax
	jmp Lbb37
Lbb34:
	leaq _donna_nil(%rip), %rax
	jmp Lbb37
Lbb35:
	leaq _donna_nil(%rip), %rax
	jmp Lbb37
Lbb36:
	leaq _donna_nil(%rip), %rax
Lbb37:
	popq %rbx
	leave
	ret
/* end function compiler_analysis_scope_refs_in_expr */

.text
.balign 16
.globl _compiler_analysis_scope_refs_in_stmts
_compiler_analysis_scope_refs_in_stmts:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _compiler_analysis_scope_refs_in_stmt(%rip), %rsi
	callq _donna_list_flat_map
	leave
	ret
/* end function compiler_analysis_scope_refs_in_stmts */

.text
.balign 16
.globl _compiler_analysis_scope_refs_in_stmt
_compiler_analysis_scope_refs_in_stmt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb44
	cmpq $1, %rax
	jz Lbb43
	movq 8(%rdi), %rdi
	callq _compiler_analysis_scope_refs_in_expr
	jmp Lbb45
Lbb43:
	movq 16(%rdi), %rdi
	callq _compiler_analysis_scope_refs_in_expr
	jmp Lbb45
Lbb44:
	movq 24(%rdi), %rdi
	callq _compiler_analysis_scope_refs_in_expr
Lbb45:
	leave
	ret
/* end function compiler_analysis_scope_refs_in_stmt */

.text
.balign 16
.globl _compiler_analysis_scope_bound_by_pattern
_compiler_analysis_scope_bound_by_pattern:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb64
	cmpq $1, %rax
	jz Lbb63
	cmpq $2, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
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
	movq 24(%rdi), %rdi
	leaq _compiler_analysis_scope_bound_by_pattern(%rip), %rsi
	callq _donna_list_flat_map
	jmp Lbb65
Lbb56:
	movq 8(%rdi), %rdi
	leaq _compiler_analysis_scope_bound_by_pattern(%rip), %rsi
	callq _donna_list_flat_map
	jmp Lbb65
Lbb57:
	movq 8(%rdi), %rdi
	leaq _compiler_analysis_scope_bound_by_pattern(%rip), %rsi
	callq _donna_list_flat_map
	jmp Lbb65
Lbb58:
	leaq _donna_nil(%rip), %rax
	jmp Lbb65
Lbb59:
	leaq _donna_nil(%rip), %rax
	jmp Lbb65
Lbb60:
	leaq _donna_nil(%rip), %rax
	jmp Lbb65
Lbb61:
	leaq _donna_nil(%rip), %rax
	jmp Lbb65
Lbb62:
	movq 8(%rdi), %r13
	movq 16(%rdi), %r12
	movl $16, %edi
	callq _malloc
	movq %rax, %rbx
	movq %r13, (%rbx)
	movq %r12, 8(%rbx)
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb65
Lbb63:
	leaq _donna_nil(%rip), %rax
	jmp Lbb65
Lbb64:
	leaq _donna_nil(%rip), %rax
Lbb65:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_analysis_scope_bound_by_pattern */

.text
.balign 16
_compiler_analysis_scope_refs_in_clause:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq 16(%rdi), %rax
	movq 24(%rdi), %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb68
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	callq _compiler_analysis_scope_refs_in_expr
	movq %rbx, %rdi
	movq %rax, %rbx
	jmp Lbb70
Lbb68:
	leaq _donna_nil(%rip), %rax
	movq %rax, %rbx
Lbb70:
	callq _compiler_analysis_scope_refs_in_expr
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	popq %rbx
	leave
	ret
/* end function compiler_analysis_scope_refs_in_clause */

.text
.balign 16
.globl _compiler_analysis_scope_contains_name
_compiler_analysis_scope_contains_name:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb77
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	movq %rsi, %r12
	callq _donna_string_equal
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb75
	callq _compiler_analysis_scope_contains_name
	movq %rax, (%rbx)
	jmp Lbb78
Lbb75:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb78
Lbb77:
	movl $0, %eax
Lbb78:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_analysis_scope_contains_name */

.text
.balign 16
.globl _compiler_analysis_scope_is_discard
_compiler_analysis_scope_is_discard:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _str360(%rip), %rsi
	callq _donna_string_starts_with
	leave
	ret
/* end function compiler_analysis_scope_is_discard */

