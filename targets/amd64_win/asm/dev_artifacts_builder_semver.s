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
str159:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str164:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str200:
	.ascii " and "
	.byte 0
/* end data */

.data
.balign 8
str253:
	.ascii ">="
	.byte 0
/* end data */

.data
.balign 8
str276:
	.ascii ">"
	.byte 0
/* end data */

.data
.balign 8
str299:
	.ascii "<="
	.byte 0
/* end data */

.data
.balign 8
str322:
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
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $32, %ecx
	callq malloc
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_semver_Version */

.text
.balign 16
.globl builder_semver_Gte
builder_semver_Gte:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function builder_semver_Gte */

.text
.balign 16
.globl builder_semver_Gt
builder_semver_Gt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function builder_semver_Gt */

.text
.balign 16
.globl builder_semver_Lte
builder_semver_Lte:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $2, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function builder_semver_Lte */

.text
.balign 16
.globl builder_semver_Lt
builder_semver_Lt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $3, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str12(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jnz Lbb12
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $1, %r8
	subq $32, %rsp
	movl $1, %edx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
Lbb12:
	subq $32, %rsp
	leaq str23(%rip), %rdx
	callq donna_string_split
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %ecx
	jnz Lbb15
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb24
Lbb15:
	movq 16(%rax), %rcx
	movq (%rcx), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb18
	movq $0, (%rdi)
	movl $0, %ecx
	jmp Lbb23
Lbb18:
	movq 16(%rcx), %rcx
	movq (%rcx), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb21
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb22
Lbb21:
	movq 16(%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb22:
	andq $1, %rcx
	movq %rcx, (%rdi)
Lbb23:
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb24:
	cmpl $0, %ecx
	jnz Lbb26
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_option_None(%rip), %rax
	jmp Lbb27
Lbb26:
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	movq 8(%rax), %rbx
	subq $32, %rsp
	callq builder_semver_parse_nat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_semver_parse_nat
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_semver_parse_nat
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_semver_Version
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb27:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_semver_parse */

.text
.balign 16
.globl builder_semver_parse_constraints
builder_semver_parse_constraints:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq builder_semver_split_and
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_semver_collect_constraints
	subq $-32, %rsp
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_semver_vmajor
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq builder_semver_vmajor
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq %rax, %rsi
	setz %dl
	movzbq %dl, %rdx
	cmpq $0, %rdx
	jz Lbb49
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_semver_vminor
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq builder_semver_vminor
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq %rax, %rbx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rdx
	jz Lbb42
	subq $32, %rsp
	callq builder_semver_vpatch
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_semver_vpatch
	movq %rax, %rcx
	subq $-32, %rsp
	cmpq %rcx, %rdi
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb39
	cmpq %rcx, %rdi
	setg %dl
	movzbq %dl, %rdx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb36
	movq $-1, (%rax)
	movq $-1, %rax
	jmp Lbb38
Lbb36:
	movq $1, (%rax)
	movl $1, %eax
Lbb38:
	movq %rax, (%rcx)
	jmp Lbb41
Lbb39:
	movq $0, (%rax)
	movl $0, %eax
Lbb41:
	movq %rax, (%rsi)
	jmp Lbb54
Lbb42:
	movq %rbx, %rdi
	cmpq %rax, %rdi
	setg %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb46
	movq $-1, (%rax)
	movq $-1, %rax
	jmp Lbb48
Lbb46:
	movq $1, (%rax)
	movl $1, %eax
Lbb48:
	movq %rax, (%rsi)
	jmp Lbb54
Lbb49:
	cmpq %rax, %rsi
	setg %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb52
	movq $-1, (%rax)
	movq $-1, %rax
	jmp Lbb54
Lbb52:
	movq $1, (%rax)
	movl $1, %eax
Lbb54:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_semver_compare */

.text
.balign 16
.globl builder_semver_satisfies
builder_semver_satisfies:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb60
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_semver_satisfies_one
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb58
	subq $32, %rsp
	callq builder_semver_satisfies
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb61
Lbb58:
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb61
Lbb60:
	movl $1, %eax
Lbb61:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_semver_satisfies */

.text
.balign 16
.globl builder_semver_to_string
builder_semver_to_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq builder_semver_vmajor
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str159(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq builder_semver_vminor
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str164(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_semver_vpatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_semver_to_string */

.text
.balign 16
builder_semver_satisfies_one:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rdx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb70
	cmpq $1, %rax
	jz Lbb69
	cmpq $2, %rax
	jz Lbb68
	movq 8(%rdx), %rdx
	subq $32, %rsp
	callq builder_semver_compare
	subq $-32, %rsp
	cmpq $0, %rax
	setl %al
	movzbq %al, %rax
	jmp Lbb71
Lbb68:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	callq builder_semver_compare
	subq $-32, %rsp
	cmpq $0, %rax
	setle %al
	movzbq %al, %rax
	jmp Lbb71
Lbb69:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	callq builder_semver_compare
	subq $-32, %rsp
	cmpq $0, %rax
	setg %al
	movzbq %al, %rax
	jmp Lbb71
Lbb70:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	callq builder_semver_compare
	subq $-32, %rsp
	cmpq $0, %rax
	setge %al
	movzbq %al, %rax
Lbb71:
	popq %rsi
	leave
	ret
/* end function builder_semver_satisfies_one */

.text
.balign 16
builder_semver_split_and:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str200(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_index_of
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	cmpq $-1, %rsi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb74
	subq $32, %rsp
	movq %rsi, %r8
	movl $0, %edx
	movq %rcx, %rdi
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %rsi, %r12
	addq $5, %r12
	subq $32, %rsp
	movq %rcx, %rbx
	callq donna_string_length
	movq %r12, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq %rsi, %rax
	movq %rax, %r8
	subq $5, %r8
	subq $32, %rsp
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_semver_split_and
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb75
Lbb74:
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb75:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_semver_split_and */

.text
.balign 16
builder_semver_collect_constraints:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb80
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq builder_semver_parse_one
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb79
	movq 8(%rax), %rbx
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rbx, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $32, %rsp
	callq builder_semver_collect_constraints
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb82
Lbb79:
	subq $32, %rsp
	movq %rdi, %rdx
	callq builder_semver_collect_constraints
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb82
Lbb80:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb82:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_semver_collect_constraints */

.text
.balign 16
builder_semver_parse_one:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str253(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb105
	subq $32, %rsp
	leaq str276(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb101
	subq $32, %rsp
	leaq str299(%rip), %rdx
	movq %rcx, %rdi
	callq donna_string_starts_with
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb96
	subq $32, %rsp
	leaq str322(%rip), %rdx
	movq %rcx, %rbx
	callq donna_string_starts_with
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb91
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_semver_parse
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb89
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq builder_semver_Gte
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%r12)
	jmp Lbb90
Lbb89:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r12)
	leaq donna_option_None(%rip), %rax
Lbb90:
	movq %rax, (%rbx)
	jmp Lbb95
Lbb91:
	subq $32, %rsp
	movq %rcx, %r12
	callq donna_string_length
	movq %r12, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $1, %r8
	subq $32, %rsp
	movl $1, %edx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_semver_parse
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb93
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq builder_semver_Lt
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%r12)
	jmp Lbb94
Lbb93:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r12)
	leaq donna_option_None(%rip), %rax
Lbb94:
	movq %rax, (%rbx)
Lbb95:
	movq %rax, (%rdi)
	jmp Lbb100
Lbb96:
	subq $32, %rsp
	movq %rcx, %rbx
	callq donna_string_length
	movq %rbx, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $2, %r8
	subq $32, %rsp
	movl $2, %edx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_semver_parse
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb98
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq builder_semver_Lte
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb99
Lbb98:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
Lbb99:
	movq %rax, (%rdi)
Lbb100:
	movq %rax, (%rsi)
	jmp Lbb108
Lbb101:
	subq $32, %rsp
	movq %rcx, %rdi
	callq donna_string_length
	movq %rdi, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $1, %r8
	subq $32, %rsp
	movl $1, %edx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_semver_parse
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb103
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq builder_semver_Gt
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb104
Lbb103:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rdi)
	leaq donna_option_None(%rip), %rax
Lbb104:
	movq %rax, (%rsi)
	jmp Lbb108
Lbb105:
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $2, %r8
	subq $32, %rsp
	movl $2, %edx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_semver_parse
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb107
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq builder_semver_Gte
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb108
Lbb107:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_option_None(%rip), %rax
Lbb108:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_semver_parse_one */

.text
.balign 16
builder_semver_vmajor:
	endbr64
	movq 8(%rcx), %rax
	ret
/* end function builder_semver_vmajor */

.text
.balign 16
builder_semver_vminor:
	endbr64
	movq 16(%rcx), %rax
	ret
/* end function builder_semver_vminor */

.text
.balign 16
builder_semver_vpatch:
	endbr64
	movq 24(%rcx), %rax
	ret
/* end function builder_semver_vpatch */

.text
.balign 16
builder_semver_parse_nat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	movl $0, %r9d
	movl $0, %edx
	callq builder_semver_parse_nat_loop
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function builder_semver_parse_nat */

.text
.balign 16
builder_semver_parse_nat_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %rax
	movq %r8, %r12
	cmpq %r12, %rdx
	movq %rax, %rdi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb122
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rcx, %rsi
	callq donna_string_char_at
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $48, %rax
	setge %sil
	movzbq %sil, %rsi
	cmpq $57, %rax
	setle %r9b
	movzbq %r9b, %r9
	andq %rsi, %r9
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %r9
	jz Lbb121
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb123
Lbb121:
	addq $1, %rdx
	imulq $10, %rdi, %rdi
	addq %rdi, %rax
	movq %rax, %r9
	subq $48, %r9
	subq $32, %rsp
	callq builder_semver_parse_nat_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb123
Lbb122:
	movq %rdi, %rax
Lbb123:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_semver_parse_nat_loop */

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

