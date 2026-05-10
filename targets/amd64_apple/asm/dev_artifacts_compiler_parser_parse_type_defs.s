.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str141:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str228:
	.ascii "type name"
	.byte 0
/* end data */

.data
.balign 8
_str254:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
_str257:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
_str258:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str566:
	.ascii "indented constructor block"
	.byte 0
/* end data */

.data
.balign 8
_str569:
	.ascii "constructor"
	.byte 0
/* end data */

.data
.balign 8
_str570:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str718:
	.ascii "constructor name"
	.byte 0
/* end data */

.data
.balign 8
_str882:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl _compiler_parser_parse_type_defs_parse_type_def
_compiler_parser_parse_type_defs_parse_type_def:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	callq _compiler_parser_parse_type_defs_parse_pub
	movq (%rax), %rsi
	movq %rsi, -16(%rbp)
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_type_defs_parse_opaque
	movq (%rax), %rdx
	movq 8(%rax), %rcx
	movq %rdx, %r12
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb2
	movl $0, %eax
	jmp Lbb7
Lbb2:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rsi), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb5
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb6
Lbb5:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $5, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb6:
	cmpq $22, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
Lbb7:
	cmpl $0, %eax
	jnz Lbb32
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb11
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb16
Lbb11:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rdi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb14
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb15
Lbb14:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $4, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb15:
	cmpq $22, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdi, %rax
	movq %rax, (%rsi)
Lbb16:
	cmpl $0, %eax
	jnz Lbb31
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb20
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb21
Lbb20:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $22, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb21:
	cmpl $0, %eax
	jnz Lbb30
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb25
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb27
Lbb25:
	movq $1, (%rax)
	movl $1, %eax
Lbb27:
	cmpl $0, %eax
	jnz Lbb29
	leaq _str258(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %rsi
	leaq _str257(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb49
Lbb29:
	movq 8(%rcx), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq _str254(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb49
Lbb30:
	movq 8(%rcx), %rax
	movq 8(%rax), %rsi
	leaq _str228(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb49
Lbb31:
	movq 16(%rcx), %rax
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq 8(%rax), %rsi
	callq _errors_error_ParseLowercaseTypeName
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb49
Lbb32:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r15
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rax
	movq 8(%rax), %rbx
	callq _compiler_parser_parse_type_defs_parse_type_params
	movq %r12, %rdx
	movq %rbx, %rdi
	movq (%rax), %rcx
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rdx, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r8d
	jnz Lbb35
	movq $0, (%rsi)
	movq %rcx, %r14
	movl $0, %ecx
	jmp Lbb36
Lbb35:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $24, %r8
	movq %rcx, %r14
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb36:
	cmpl $0, %ecx
	jnz Lbb45
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb40
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb42
Lbb40:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb42:
	cmpl $0, %ecx
	jnz Lbb44
	movq %r15, %rsi
	leaq _str141(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp Lbb49
Lbb44:
	movq 8(%rax), %rax
	movq 8(%rax), %rdi
	callq _errors_error_ParseMissingColon
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp Lbb49
Lbb45:
	movq %rdi, %r12
	movq 16(%rax), %rdi
	leaq _donna_nil(%rip), %rsi
	callq _compiler_parser_parse_type_defs_parse_constructors
	movq %r15, %r9
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rdi
	movq -16(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb47
	movq 8(%rax), %r8
	movq 16(%rax), %r13
	callq _compiler_parser_ast_TypeDef
	movq %r13, %rsi
	movq %rax, %rdi
	callq _compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp Lbb48
Lbb47:
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%r12)
Lbb48:
	movq %rax, (%rbx)
Lbb49:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_type_def */

.text
.balign 16
_compiler_parser_parse_type_defs_parse_pub:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb52
	movl $0, %eax
	jmp Lbb53
Lbb52:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $20, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb53:
	cmpl $0, %eax
	jnz Lbb55
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	jmp Lbb56
Lbb55:
	movq 16(%rdi), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb56:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_pub */

.text
.balign 16
_compiler_parser_parse_type_defs_parse_opaque:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb59
	movl $0, %eax
	jmp Lbb60
Lbb59:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $18, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb60:
	cmpl $0, %eax
	jnz Lbb62
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	jmp Lbb63
Lbb62:
	movq 16(%rdi), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb63:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_opaque */

.text
.balign 16
_compiler_parser_parse_type_defs_parse_type_params:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb66
	movl $0, %eax
	jmp Lbb67
Lbb66:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb67:
	cmpl $0, %eax
	jnz Lbb69
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	leaq _donna_nil(%rip), %rcx
	movq %rcx, (%rax)
	movq %rdi, 8(%rax)
	jmp Lbb70
Lbb69:
	movq 16(%rdi), %rdi
	leaq _donna_nil(%rip), %rsi
	callq _compiler_parser_parse_type_defs_parse_type_param_list
Lbb70:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_type_params */

.text
.balign 16
_compiler_parser_parse_type_defs_parse_type_param_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdi, %rbx
	movq %rsi, %rdi
	movq (%rbx), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb73
	movl $0, %ecx
	jmp Lbb74
Lbb73:
	movq 8(%rbx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb74:
	cmpl $0, %ecx
	jnz Lbb95
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb78
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb79
Lbb78:
	movq 8(%rbx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb79:
	cmpl $0, %eax
	jnz Lbb81
	callq _donna_list_reverse
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq %r12, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb96
Lbb81:
	movq 8(%rbx), %rax
	movq 16(%rbx), %r14
	movq (%rax), %rax
	movq %r14, %r12
	movq 8(%rax), %r14
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r12), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %ecx
	jnz Lbb84
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb85
Lbb84:
	movq 8(%r12), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $25, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb85:
	cmpl $0, %ecx
	jnz Lbb93
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb89
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb90
Lbb89:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $31, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb90:
	cmpl $0, %eax
	jnz Lbb92
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r14, 8(%rdi)
	movq %r13, 16(%rdi)
	callq _donna_list_reverse
	movq %rax, %r13
	movl $16, %edi
	callq _malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb96
Lbb92:
	movq 16(%r12), %r12
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r14, 8(%rdi)
	movq %r13, 16(%rdi)
	callq _donna_list_reverse
	movq %rax, %r13
	movl $16, %edi
	callq _malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb96
Lbb93:
	movq %r14, %r13
	movq %r12, %r14
	movq %rdi, %r12
	movq 16(%r14), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq _compiler_parser_parse_type_defs_parse_type_param_list
	movq %rax, (%rbx)
	jmp Lbb96
Lbb95:
	movq 16(%rbx), %rbx
	callq _donna_list_reverse
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq %r12, (%rax)
	movq %rbx, 8(%rax)
Lbb96:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_type_param_list */

.text
.balign 16
_compiler_parser_parse_type_defs_parse_constructors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	callq _compiler_parser_parse_result_skip_newlines
	movq %rbx, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb99
	movl $0, %ecx
	jmp Lbb100
Lbb99:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $62, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb100:
	cmpl $0, %ecx
	jnz Lbb109
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb104
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb106
Lbb104:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb106:
	cmpl $0, %ecx
	jnz Lbb108
	leaq _str570(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %rsi
	leaq _str569(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb110
Lbb108:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq _str566(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb110
Lbb109:
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_type_defs_parse_ctor_block
Lbb110:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_constructors */

.text
.balign 16
_compiler_parser_parse_type_defs_parse_ctor_block:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	callq _compiler_parser_parse_result_skip_newlines
	movq %rbx, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb113
	movl $0, %ecx
	jmp Lbb114
Lbb113:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $63, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb114:
	cmpl $0, %ecx
	jnz Lbb139
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb118
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb119
Lbb118:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $5, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb119:
	cmpl $0, %ecx
	jnz Lbb128
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb123
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb125
Lbb123:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb125:
	cmpl $0, %ecx
	jnz Lbb127
	callq _donna_list_reverse
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rsi
	callq _compiler_parser_parse_result_POk
	jmp Lbb140
Lbb127:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq _str718(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb140
Lbb128:
	movq %rax, %rcx
	movq 8(%rax), %rax
	movq 16(%rcx), %r15
	movq (%rax), %rcx
	movq %rdi, %r12
	movq 8(%rcx), %rdi
	movq 8(%rax), %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r15), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb131
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb132
Lbb131:
	movq 8(%r15), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb132:
	cmpl $0, %eax
	jnz Lbb134
	movq %rcx, %r14
	leaq _donna_nil(%rip), %rdx
	leaq _donna_nil(%rip), %rsi
	callq _compiler_parser_ast_ConstructorDef
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %r13, 16(%rsi)
	movq %r15, %rdi
	callq _compiler_parser_parse_type_defs_parse_ctor_block
	movq %rax, (%rbx)
	jmp Lbb140
Lbb134:
	movq %rcx, %r14
	movq %r12, %r13
	movq %rdi, %r12
	movq 16(%r15), %rdi
	leaq _donna_nil(%rip), %rdx
	leaq _donna_nil(%rip), %rsi
	callq _compiler_parser_parse_type_defs_parse_field_list
	movq %r14, %rcx
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb137
	movq 8(%rax), %rdx
	movq (%rdx), %rsi
	movq 8(%rdx), %rdx
	movq 16(%rax), %r14
	callq _compiler_parser_ast_ConstructorDef
	movq %r14, %rdi
	movq %rax, %r14
	movq %rdi, %r15
	movl $24, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	movq %r13, 16(%rsi)
	callq _compiler_parser_parse_type_defs_parse_ctor_block
	movq %rax, (%r12)
	jmp Lbb138
Lbb137:
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%r12)
Lbb138:
	movq %rax, (%rbx)
	jmp Lbb140
Lbb139:
	movq 16(%rax), %rbx
	callq _donna_list_reverse
	movq %rbx, %rsi
	movq %rax, %rdi
	callq _compiler_parser_parse_result_POk
Lbb140:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_ctor_block */

.text
.balign 16
_compiler_parser_parse_type_defs_parse_field_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %rbx
	movq %rsi, %r13
	callq _compiler_parser_parse_result_skip_newlines
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb143
	movl $0, %edx
	jmp Lbb144
Lbb143:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $31, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb144:
	cmpl $0, %edx
	jnz Lbb176
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb148
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb153
Lbb148:
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%rsi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb151
	movq $0, (%r8)
	movl $0, %esi
	jmp Lbb152
Lbb151:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $24, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
Lbb152:
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rsi, %rcx
	movq %rcx, (%rdx)
Lbb153:
	cmpl $0, %ecx
	jnz Lbb165
	movq %rdi, %rbx
	movq %rax, %rdi
	callq _compiler_parser_parse_types_parse_type
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb164
	movq 8(%rax), %r12
	movq 16(%rax), %r15
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %r14
	movq $1, (%r14)
	leaq _str882(%rip), %rax
	movq %rax, 8(%r14)
	movq %r13, 16(%r14)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r15), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb158
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb159
Lbb158:
	movq 8(%r15), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb159:
	cmpl $0, %eax
	jnz Lbb161
	movq %rdx, %r14
	movq %rsi, %r13
	movq %r15, %rdi
	callq _compiler_parser_parse_type_defs_parse_field_list
	movq %rax, (%r12)
	jmp Lbb163
Lbb161:
	movq %rdx, %r14
	movq %rsi, %r13
	movq 16(%r15), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rax, %rdi
	callq _compiler_parser_parse_type_defs_parse_field_list
	movq %rax, (%r12)
Lbb163:
	movq %rax, (%rbx)
	jmp Lbb178
Lbb164:
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp Lbb178
Lbb165:
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %rcx
	movq %rcx, -16(%rbp)
	movq %rdi, %rbx
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_types_parse_type
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb175
	movq 8(%rax), %r12
	movq 16(%rax), %r15
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %r14
	movq -16(%rbp), %rax
	movq $1, (%r14)
	movq %rax, 8(%r14)
	movq %r13, 16(%r14)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r15), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb169
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb170
Lbb169:
	movq 8(%r15), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb170:
	cmpl $0, %eax
	jnz Lbb172
	movq %rdx, %r14
	movq %rsi, %r13
	movq %r15, %rdi
	callq _compiler_parser_parse_type_defs_parse_field_list
	movq %rax, (%r12)
	jmp Lbb174
Lbb172:
	movq %rdx, %r14
	movq %rsi, %r13
	movq 16(%r15), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rax, %rdi
	callq _compiler_parser_parse_type_defs_parse_field_list
	movq %rax, (%r12)
Lbb174:
	movq %rax, (%rbx)
	jmp Lbb178
Lbb175:
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp Lbb178
Lbb176:
	movq %rdi, %rbx
	movq %r13, %rdi
	movq 16(%rax), %r13
	callq _donna_list_reverse
	movq %rbx, %rdi
	movq %rax, %r12
	callq _donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %rdi
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	callq _compiler_parser_parse_result_POk
Lbb178:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_field_list */

