.data
.balign 8
str12:
	.ascii "v"
	.byte 0
/* end data */

.data
.balign 8
str23:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str163:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str168:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str204:
	.ascii " and "
	.byte 0
/* end data */

.data
.balign 8
str257:
	.ascii ">="
	.byte 0
/* end data */

.data
.balign 8
str282:
	.ascii ">"
	.byte 0
/* end data */

.data
.balign 8
str307:
	.ascii "<="
	.byte 0
/* end data */

.data
.balign 8
str332:
	.ascii "<"
	.byte 0
/* end data */

.text
.balign 16
.globl builder_semver_Version
builder_semver_Version:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_semver_Version, @function
.size builder_semver_Version, .-builder_semver_Version
/* end function builder_semver_Version */

.text
.balign 16
.globl builder_semver_Gte
builder_semver_Gte:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
.type builder_semver_Gte, @function
.size builder_semver_Gte, .-builder_semver_Gte
/* end function builder_semver_Gte */

.text
.balign 16
.globl builder_semver_Gt
builder_semver_Gt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
.type builder_semver_Gt, @function
.size builder_semver_Gt, .-builder_semver_Gt
/* end function builder_semver_Gt */

.text
.balign 16
.globl builder_semver_Lte
builder_semver_Lte:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	movq $2, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
.type builder_semver_Lte, @function
.size builder_semver_Lte, .-builder_semver_Lte
/* end function builder_semver_Lte */

.text
.balign 16
.globl builder_semver_Lt
builder_semver_Lt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	movq $3, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
.type builder_semver_Lt, @function
.size builder_semver_Lt, .-builder_semver_Lt
/* end function builder_semver_Lt */

.text
.balign 16
.globl builder_semver_parse
builder_semver_parse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	leaq str12(%rip), %rsi
	movq %rdi, %rbx
	callq donna_string_starts_with
	movq %rbx, %rdi
	cmpq $1, %rax
	jnz .Lbb12
	movq %rdi, %rbx
	callq donna_string_length
	movq %rbx, %rdi
	movq %rax, %rdx
	subq $1, %rdx
	movl $1, %esi
	callq donna_string_slice
	movq %rax, %rdi
.Lbb12:
	leaq str23(%rip), %rsi
	callq donna_string_split
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %ecx
	jnz .Lbb15
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb24
.Lbb15:
	movq 16(%rax), %rcx
	movq (%rcx), %rsi
	cmpq $1, %rsi
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edi
	jnz .Lbb18
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb23
.Lbb18:
	movq 16(%rcx), %rcx
	movq (%rcx), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz .Lbb21
	movq $0, (%rdi)
	movl $0, %ecx
	jmp .Lbb22
.Lbb21:
	movq 16(%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdi)
.Lbb22:
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb23:
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb24:
	cmpl $0, %ecx
	jnz .Lbb26
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
	jmp .Lbb27
.Lbb26:
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	movq 8(%rax), %r13
	movq 16(%rax), %rax
	movq 8(%rax), %r12
	callq builder_semver_parse_nat
	movq %r13, %rdi
	movq %rax, %r15
	callq builder_semver_parse_nat
	movq %r12, %rdi
	movq %rax, %r14
	callq builder_semver_parse_nat
	movq %rax, %r13
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $0, (%r12)
	movq %r15, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
.Lbb27:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_semver_parse, @function
.size builder_semver_parse, .-builder_semver_parse
/* end function builder_semver_parse */

.text
.balign 16
.globl builder_semver_parse_constraints
builder_semver_parse_constraints:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq builder_semver_split_and
	movq %rax, %rdi
	leaq donna_nil(%rip), %rsi
	callq builder_semver_collect_constraints
	leave
	ret
.type builder_semver_parse_constraints, @function
.size builder_semver_parse_constraints, .-builder_semver_parse_constraints
/* end function builder_semver_parse_constraints */

.text
.balign 16
.globl builder_semver_compare
builder_semver_compare:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	callq builder_semver_vmajor
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r13
	movq %r12, %rdi
	callq builder_semver_vmajor
	movq %r13, %rdi
	cmpq %rax, %rbx
	setz %cl
	movzbq %cl, %rcx
	cmpq $0, %rcx
	jz .Lbb49
	movq %rdi, %rbx
	callq builder_semver_vminor
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq builder_semver_vminor
	movq %rbx, %rdi
	cmpq %rax, %r13
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rcx
	jz .Lbb42
	callq builder_semver_vpatch
	movq %r12, %rdi
	movq %rax, %r12
	callq builder_semver_vpatch
	movq %rax, %rcx
	cmpq %rcx, %r12
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz .Lbb39
	cmpq %rcx, %r12
	setg %dl
	movzbq %dl, %rdx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz .Lbb36
	movq $-1, (%rax)
	movq $-1, %rax
	jmp .Lbb38
.Lbb36:
	movq $1, (%rax)
	movl $1, %eax
.Lbb38:
	movq %rax, (%rcx)
	jmp .Lbb41
.Lbb39:
	movq $0, (%rax)
	movl $0, %eax
.Lbb41:
	movq %rax, (%rbx)
	jmp .Lbb54
.Lbb42:
	movq %r13, %r12
	cmpq %rax, %r12
	setg %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb46
	movq $-1, (%rax)
	movq $-1, %rax
	jmp .Lbb48
.Lbb46:
	movq $1, (%rax)
	movl $1, %eax
.Lbb48:
	movq %rax, (%rbx)
	jmp .Lbb54
.Lbb49:
	cmpq %rax, %rbx
	setg %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb52
	movq $-1, (%rax)
	movq $-1, %rax
	jmp .Lbb54
.Lbb52:
	movq $1, (%rax)
	movl $1, %eax
.Lbb54:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_semver_compare, @function
.size builder_semver_compare, .-builder_semver_compare
/* end function builder_semver_compare */

.text
.balign 16
.globl builder_semver_satisfies
builder_semver_satisfies:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb60
	movq 8(%rax), %rsi
	movq 16(%rax), %r12
	movq %rdi, %rbx
	callq builder_semver_satisfies_one
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz .Lbb58
	callq builder_semver_satisfies
	movq %rax, (%rbx)
	jmp .Lbb61
.Lbb58:
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb61
.Lbb60:
	movl $1, %eax
.Lbb61:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type builder_semver_satisfies, @function
.size builder_semver_satisfies, .-builder_semver_satisfies
/* end function builder_semver_satisfies */

.text
.balign 16
.globl builder_semver_to_string
builder_semver_to_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq builder_semver_vmajor
	movq %rax, %rdi
	callq donna_int_to_string
	movq %rax, %rdi
	leaq str163(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq builder_semver_vminor
	movq %rax, %rdi
	callq donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str168(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq builder_semver_vpatch
	movq %rax, %rdi
	callq donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	popq %r12
	popq %rbx
	leave
	ret
.type builder_semver_to_string, @function
.size builder_semver_to_string, .-builder_semver_to_string
/* end function builder_semver_to_string */

.text
.balign 16
builder_semver_satisfies_one:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rsi), %rax
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb70
	cmpq $1, %rax
	jz .Lbb69
	cmpq $2, %rax
	jz .Lbb68
	movq 8(%rsi), %rsi
	callq builder_semver_compare
	cmpq $0, %rax
	setl %al
	movzbq %al, %rax
	jmp .Lbb71
.Lbb68:
	movq 8(%rsi), %rsi
	callq builder_semver_compare
	cmpq $0, %rax
	setle %al
	movzbq %al, %rax
	jmp .Lbb71
.Lbb69:
	movq 8(%rsi), %rsi
	callq builder_semver_compare
	cmpq $0, %rax
	setg %al
	movzbq %al, %rax
	jmp .Lbb71
.Lbb70:
	movq 8(%rsi), %rsi
	callq builder_semver_compare
	cmpq $0, %rax
	setge %al
	movzbq %al, %rax
.Lbb71:
	leave
	ret
.type builder_semver_satisfies_one, @function
.size builder_semver_satisfies_one, .-builder_semver_satisfies_one
/* end function builder_semver_satisfies_one */

.text
.balign 16
builder_semver_split_and:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	leaq str204(%rip), %rsi
	movq %rdi, %rbx
	callq donna_string_index_of
	movq %rbx, %rdi
	movq %rax, %rbx
	cmpq $-1, %rbx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb74
	movq %rbx, %rdx
	movl $0, %esi
	movq %rdi, %r12
	callq donna_string_slice
	movq %rax, %rdi
	callq donna_string_trim
	movq %r12, %rdi
	movq %rax, %r12
	movq %rbx, %r14
	addq $5, %r14
	movq %rdi, %r13
	callq donna_string_length
	movq %r14, %rsi
	movq %r13, %rdi
	subq %rbx, %rax
	movq %rax, %rdx
	subq $5, %rdx
	callq donna_string_slice
	movq %rax, %rdi
	callq donna_string_trim
	movq %rax, %rdi
	callq builder_semver_split_and
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb75
.Lbb74:
	callq donna_string_trim
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
.Lbb75:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_semver_split_and, @function
.size builder_semver_split_and, .-builder_semver_split_and
/* end function builder_semver_split_and */

.text
.balign 16
builder_semver_collect_constraints:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb80
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq builder_semver_parse_one
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb79
	movq 8(%rax), %r13
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq builder_semver_collect_constraints
	movq %rax, (%rbx)
	jmp .Lbb82
.Lbb79:
	movq %r12, %rsi
	callq builder_semver_collect_constraints
	movq %rax, (%rbx)
	jmp .Lbb82
.Lbb80:
	movq %r12, %rdi
	callq donna_list_reverse
.Lbb82:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_semver_collect_constraints, @function
.size builder_semver_collect_constraints, .-builder_semver_collect_constraints
/* end function builder_semver_collect_constraints */

.text
.balign 16
builder_semver_parse_one:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	leaq str257(%rip), %rsi
	movq %rdi, %rbx
	callq donna_string_starts_with
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb105
	leaq str282(%rip), %rsi
	movq %rdi, %rbx
	callq donna_string_starts_with
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb101
	leaq str307(%rip), %rsi
	movq %rdi, %r12
	callq donna_string_starts_with
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb96
	leaq str332(%rip), %rsi
	movq %rdi, %r13
	callq donna_string_starts_with
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz .Lbb91
	callq donna_string_trim
	movq %rax, %rdi
	callq builder_semver_parse
	subq $16, %rsp
	movq %rsp, %r14
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb89
	movq 8(%rax), %r15
	movl $16, %edi
	callq malloc
	xchgq %rax, %r15
	movq $0, (%r15)
	movq %rax, 8(%r15)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r15, 8(%rax)
	movq %rax, (%r14)
	jmp .Lbb90
.Lbb89:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r14)
	leaq donna_option_None(%rip), %rax
.Lbb90:
	movq %rax, (%r13)
	jmp .Lbb95
.Lbb91:
	movq %rdi, %r14
	callq donna_string_length
	movq %r14, %rdi
	movq %rax, %rdx
	subq $1, %rdx
	movl $1, %esi
	callq donna_string_slice
	movq %rax, %rdi
	callq donna_string_trim
	movq %rax, %rdi
	callq builder_semver_parse
	subq $16, %rsp
	movq %rsp, %r14
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb93
	movq 8(%rax), %r15
	movl $16, %edi
	callq malloc
	xchgq %rax, %r15
	movq $3, (%r15)
	movq %rax, 8(%r15)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r15, 8(%rax)
	movq %rax, (%r14)
	jmp .Lbb94
.Lbb93:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r14)
	leaq donna_option_None(%rip), %rax
.Lbb94:
	movq %rax, (%r13)
.Lbb95:
	movq %rax, (%r12)
	jmp .Lbb100
.Lbb96:
	movq %rdi, %r13
	callq donna_string_length
	movq %r13, %rdi
	movq %rax, %rdx
	subq $2, %rdx
	movl $2, %esi
	callq donna_string_slice
	movq %rax, %rdi
	callq donna_string_trim
	movq %rax, %rdi
	callq builder_semver_parse
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb98
	movq 8(%rax), %r15
	movl $16, %edi
	callq malloc
	movq %rax, %r14
	movq $2, (%r14)
	movq %r15, 8(%r14)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
	jmp .Lbb99
.Lbb98:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r13)
	leaq donna_option_None(%rip), %rax
.Lbb99:
	movq %rax, (%r12)
.Lbb100:
	movq %rax, (%rbx)
	jmp .Lbb108
.Lbb101:
	movq %rdi, %r12
	callq donna_string_length
	movq %r12, %rdi
	movq %rax, %rdx
	subq $1, %rdx
	movl $1, %esi
	callq donna_string_slice
	movq %rax, %rdi
	callq donna_string_trim
	movq %rax, %rdi
	callq builder_semver_parse
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb103
	movq 8(%rax), %r14
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq $1, (%r13)
	movq %r14, 8(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb104
.Lbb103:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r12)
	leaq donna_option_None(%rip), %rax
.Lbb104:
	movq %rax, (%rbx)
	jmp .Lbb108
.Lbb105:
	movq %rdi, %rbx
	callq donna_string_length
	movq %rbx, %rdi
	movq %rax, %rdx
	subq $2, %rdx
	movl $2, %esi
	callq donna_string_slice
	movq %rax, %rdi
	callq donna_string_trim
	movq %rax, %rdi
	callq builder_semver_parse
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb107
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq $0, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb108
.Lbb107:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
.Lbb108:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_semver_parse_one, @function
.size builder_semver_parse_one, .-builder_semver_parse_one
/* end function builder_semver_parse_one */

.text
.balign 16
builder_semver_vmajor:
	endbr64
	movq 8(%rdi), %rax
	ret
.type builder_semver_vmajor, @function
.size builder_semver_vmajor, .-builder_semver_vmajor
/* end function builder_semver_vmajor */

.text
.balign 16
builder_semver_vminor:
	endbr64
	movq 16(%rdi), %rax
	ret
.type builder_semver_vminor, @function
.size builder_semver_vminor, .-builder_semver_vminor
/* end function builder_semver_vminor */

.text
.balign 16
builder_semver_vpatch:
	endbr64
	movq 24(%rdi), %rax
	ret
.type builder_semver_vpatch, @function
.size builder_semver_vpatch, .-builder_semver_vpatch
/* end function builder_semver_vpatch */

.text
.balign 16
builder_semver_parse_nat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq donna_string_length
	movq %rbx, %rdi
	movq %rax, %rdx
	movl $0, %ecx
	movl $0, %esi
	callq builder_semver_parse_nat_loop
	popq %rbx
	leave
	ret
.type builder_semver_parse_nat, @function
.size builder_semver_parse_nat, .-builder_semver_parse_nat
/* end function builder_semver_parse_nat */

.text
.balign 16
builder_semver_parse_nat_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rcx, %rax
	movq %rdx, %r14
	cmpq %r14, %rsi
	movq %rax, %r12
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb122
	movq %rsi, %r13
	movq %rdi, %rbx
	callq donna_string_char_at
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	cmpq $48, %rax
	setge %cl
	movzbq %cl, %rcx
	cmpq $57, %rax
	setle %r8b
	movzbq %r8b, %r8
	andq %r8, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz .Lbb121
	movq %r12, (%rbx)
	movq %r12, %rax
	jmp .Lbb123
.Lbb121:
	addq $1, %rsi
	imulq $10, %r12, %rcx
	addq %rcx, %rax
	movq %rax, %rcx
	subq $48, %rcx
	callq builder_semver_parse_nat_loop
	movq %rax, (%rbx)
	jmp .Lbb123
.Lbb122:
	movq %r12, %rax
.Lbb123:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_semver_parse_nat_loop, @function
.size builder_semver_parse_nat_loop, .-builder_semver_parse_nat_loop
/* end function builder_semver_parse_nat_loop */

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
