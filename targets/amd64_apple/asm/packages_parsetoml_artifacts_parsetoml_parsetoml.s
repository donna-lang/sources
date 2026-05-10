.data
.balign 8
.globl _parsetoml_parsetoml_NotFound
_parsetoml_parsetoml_NotFound:
	.quad 1
/* end data */

.data
.balign 8
.globl _parsetoml_parsetoml_NoPairs
_parsetoml_parsetoml_NoPairs:
	.quad 1
/* end data */

.data
.balign 8
_str18:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str43:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
_str45:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
_str59:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str61:
	.ascii "' is not a string"
	.byte 0
/* end data */

.data
.balign 8
_str73:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
_str89:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str91:
	.ascii "' is not an integer"
	.byte 0
/* end data */

.data
.balign 8
_str103:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
_str105:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
_str119:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str121:
	.ascii "' is not a boolean"
	.byte 0
/* end data */

.data
.balign 8
_str133:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
_str149:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str151:
	.ascii "' is not a table"
	.byte 0
/* end data */

.data
.balign 8
_str163:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
_str165:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
_str179:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str181:
	.ascii "' is not an array"
	.byte 0
/* end data */

.data
.balign 8
_str208:
	.ascii "__err:"
	.byte 0
/* end data */

.data
.balign 8
_str263:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str289:
	.ascii "[["
	.byte 0
/* end data */

.data
.balign 8
_str299:
	.ascii "["
	.byte 0
/* end data */

.data
.balign 8
_str340:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str342:
	.ascii "#"
	.byte 0
/* end data */

.data
.balign 8
_str354:
	.ascii "unclosed '[' in: "
	.byte 0
/* end data */

.data
.balign 8
_str360:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str374:
	.ascii "expected '=' in: "
	.byte 0
/* end data */

.data
.balign 8
_str417:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str424:
	.ascii "empty key"
	.byte 0
/* end data */

.data
.balign 8
_str426:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str437:
	.ascii "empty value"
	.byte 0
/* end data */

.data
.balign 8
_str462:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str484:
	.ascii "unterminated string"
	.byte 0
/* end data */

.data
.balign 8
_str503:
	.ascii "unexpected end after "
	.byte 92
	.byte 0
/* end data */

.data
.balign 8
_str512:
	.byte 34
	.byte 0
/* end data */

.data
.balign 8
_str516:
	.byte 92
	.byte 0
/* end data */

.data
.balign 8
_str520:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str524:
	.byte 9
	.byte 0
/* end data */

.data
.balign 8
_str528:
	.byte 13
	.byte 0
/* end data */

.data
.balign 8
_str549:
	.ascii "unterminated literal string"
	.byte 0
/* end data */

.data
.balign 8
_str559:
	.ascii "unterminated literal string"
	.byte 0
/* end data */

.data
.balign 8
_str571:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str643:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str695:
	.ascii "expected '=' in pair: "
	.byte 0
/* end data */

.data
.balign 8
_str734:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
_str743:
	.ascii "false"
	.byte 0
/* end data */

.data
.balign 8
_str761:
	.ascii "empty integer"
	.byte 0
/* end data */

.data
.balign 8
_str777:
	.ascii "invalid integer: "
	.byte 0
/* end data */

.data
.balign 8
_str786:
	.ascii "invalid value: "
	.byte 0
/* end data */

.text
.balign 16
.globl _parsetoml_parsetoml_Ok
_parsetoml_parsetoml_Ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_Ok */

.text
.balign 16
.globl _parsetoml_parsetoml_Err
_parsetoml_parsetoml_Err:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_Err */

.text
.balign 16
.globl _parsetoml_parsetoml_TomlString
_parsetoml_parsetoml_TomlString:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_TomlString */

.text
.balign 16
.globl _parsetoml_parsetoml_TomlInt
_parsetoml_parsetoml_TomlInt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_TomlInt */

.text
.balign 16
.globl _parsetoml_parsetoml_TomlBool
_parsetoml_parsetoml_TomlBool:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $2, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_TomlBool */

.text
.balign 16
.globl _parsetoml_parsetoml_TomlArray
_parsetoml_parsetoml_TomlArray:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $3, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_TomlArray */

.text
.balign 16
.globl _parsetoml_parsetoml_TomlTable
_parsetoml_parsetoml_TomlTable:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $4, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_TomlTable */

.text
.balign 16
.globl _parsetoml_parsetoml_Found
_parsetoml_parsetoml_Found:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_Found */

.text
.balign 16
.globl _parsetoml_parsetoml_GotPairs
_parsetoml_parsetoml_GotPairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_GotPairs */

.text
.balign 16
.globl _parsetoml_parsetoml_parse
_parsetoml_parsetoml_parse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _str18(%rip), %rsi
	callq _donna_string_split
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rdx
	leaq _donna_nil(%rip), %rsi
	callq _parsetoml_parsetoml_parse_doc
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb20
	movq 8(%rax), %rdi
	callq _donna_list_reverse
	movq %rax, %rdi
	callq _parsetoml_parsetoml_build_table
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
	jmp Lbb21
Lbb20:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Err
Lbb21:
	leave
	ret
/* end function parsetoml_parsetoml_parse */

.text
.balign 16
.globl _parsetoml_parsetoml_get_string
_parsetoml_parsetoml_get_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	callq _parsetoml_parsetoml_table_lookup
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb26
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb25
	leaq _str59(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str61(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%rbx)
	jmp Lbb27
Lbb25:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%rbx)
	jmp Lbb27
Lbb26:
	leaq _str43(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str45(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
Lbb27:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_get_string */

.text
.balign 16
.globl _parsetoml_parsetoml_get_int
_parsetoml_parsetoml_get_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	callq _parsetoml_parsetoml_table_lookup
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb32
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb31
	leaq _str89(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str91(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%rbx)
	jmp Lbb33
Lbb31:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%rbx)
	jmp Lbb33
Lbb32:
	leaq _str73(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str75(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
Lbb33:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_get_int */

.text
.balign 16
.globl _parsetoml_parsetoml_get_bool
_parsetoml_parsetoml_get_bool:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	callq _parsetoml_parsetoml_table_lookup
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb38
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $2, %rcx
	jz Lbb37
	leaq _str119(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str121(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%rbx)
	jmp Lbb39
Lbb37:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%rbx)
	jmp Lbb39
Lbb38:
	leaq _str103(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str105(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
Lbb39:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_get_bool */

.text
.balign 16
.globl _parsetoml_parsetoml_get_table
_parsetoml_parsetoml_get_table:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	callq _parsetoml_parsetoml_table_lookup
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb44
	movq 8(%rax), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rax
	cmpq $4, %rax
	jz Lbb43
	leaq _str149(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str151(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%rbx)
	jmp Lbb45
Lbb43:
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%rbx)
	jmp Lbb45
Lbb44:
	leaq _str133(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str135(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
Lbb45:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_get_table */

.text
.balign 16
.globl _parsetoml_parsetoml_get_array
_parsetoml_parsetoml_get_array:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	callq _parsetoml_parsetoml_table_lookup
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb50
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $3, %rcx
	jz Lbb49
	leaq _str179(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str181(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%rbx)
	jmp Lbb51
Lbb49:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%rbx)
	jmp Lbb51
Lbb50:
	leaq _str163(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str165(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
Lbb51:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_get_array */

.text
.balign 16
.globl _parsetoml_parsetoml_unwrap_table
_parsetoml_parsetoml_unwrap_table:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb54
	leaq _donna_nil(%rip), %rdi
	callq _parsetoml_parsetoml_TomlTable
	jmp Lbb55
Lbb54:
	movq 8(%rdi), %rax
Lbb55:
	leave
	ret
/* end function parsetoml_parsetoml_unwrap_table */

.text
.balign 16
.globl _parsetoml_parsetoml_unwrap_string
_parsetoml_parsetoml_unwrap_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb58
	movq 8(%rdi), %rsi
	leaq _str208(%rip), %rdi
	callq ___rt_str_concat
	jmp Lbb59
Lbb58:
	movq 8(%rdi), %rax
Lbb59:
	leave
	ret
/* end function parsetoml_parsetoml_unwrap_string */

.text
.balign 16
.globl _parsetoml_parsetoml_unwrap_int
_parsetoml_parsetoml_unwrap_int:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb62
	movl $0, %eax
	jmp Lbb63
Lbb62:
	movq 8(%rdi), %rax
Lbb63:
	ret
/* end function parsetoml_parsetoml_unwrap_int */

.text
.balign 16
.globl _parsetoml_parsetoml_unwrap_bool
_parsetoml_parsetoml_unwrap_bool:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb66
	movl $0, %eax
	jmp Lbb67
Lbb66:
	movq 8(%rdi), %rax
Lbb67:
	ret
/* end function parsetoml_parsetoml_unwrap_bool */

.text
.balign 16
.globl _parsetoml_parsetoml_is_ok
_parsetoml_parsetoml_is_ok:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
/* end function parsetoml_parsetoml_is_ok */

.text
.balign 16
.globl _parsetoml_parsetoml_is_err
_parsetoml_parsetoml_is_err:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	movl $1, %ecx
	movl $0, %eax
	cmovnz %rcx, %rax
	ret
/* end function parsetoml_parsetoml_is_err */

.text
.balign 16
.globl _parsetoml_parsetoml_err_msg
_parsetoml_parsetoml_err_msg:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb74
	movq 8(%rdi), %rax
	jmp Lbb75
Lbb74:
	leaq _str263(%rip), %rax
Lbb75:
	ret
/* end function parsetoml_parsetoml_err_msg */

.text
.balign 16
_parsetoml_parsetoml_parse_doc:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %r13
	movq %rsi, %r14
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb81
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	callq _donna_string_trim
	movq %rax, %rdi
	movq %rdi, %rbx
	callq _parsetoml_parsetoml_is_empty_or_comment
	movq %r14, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb79
	movq %r13, %rcx
	movq %rsi, %rdx
	movq %r12, %rsi
	callq _parsetoml_parsetoml_process_line
	movq %rax, (%rbx)
	jmp Lbb83
Lbb79:
	movq %r12, %rdi
	movq %r13, %r12
	movq %r12, %rdx
	callq _parsetoml_parsetoml_parse_doc
	movq %rax, (%rbx)
	jmp Lbb83
Lbb81:
	movq %r13, %rdi
	callq _parsetoml_parsetoml_Ok
Lbb83:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_doc */

.text
.balign 16
_parsetoml_parsetoml_process_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rsi, %rbx
	movq %rdx, %rsi
	movq %rsi, %r13
	leaq _str289(%rip), %rsi
	movq %rdi, %r12
	callq _donna_string_starts_with
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq $1, %rax
	jz Lbb86
	movq %rdx, %rcx
	movq %rsi, %rdx
	movq %rbx, %rsi
	callq _parsetoml_parsetoml_process_non_array_table
	jmp Lbb88
Lbb86:
	movq %rbx, %rdi
	callq _parsetoml_parsetoml_parse_doc
Lbb88:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_process_line */

.text
.balign 16
_parsetoml_parsetoml_process_non_array_table:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	leaq _str299(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_starts_with
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq $1, %rax
	jz Lbb91
	callq _parsetoml_parsetoml_apply_kv
	jmp Lbb92
Lbb91:
	callq _parsetoml_parsetoml_apply_section
Lbb92:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_process_non_array_table */

.text
.balign 16
_parsetoml_parsetoml_apply_section:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rcx, %r12
	movq %rsi, %rbx
	callq _parsetoml_parsetoml_parse_section
	movq %r12, %rdx
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb95
	movq 8(%rax), %rsi
	callq _parsetoml_parsetoml_parse_doc
	jmp Lbb96
Lbb95:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Err
Lbb96:
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_apply_section */

.text
.balign 16
_parsetoml_parsetoml_apply_kv:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rcx, %r12
	movq %rsi, %rbx
	movq %rdx, %rsi
	movq %rsi, %r13
	callq _parsetoml_parsetoml_parse_kv
	movq %r12, %rcx
	movq %rbx, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %r14
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb99
	movq 8(%rax), %rbx
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %r14, %rcx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %rbx, 8(%rdx)
	movq %rcx, 16(%rdx)
	callq _parsetoml_parsetoml_parse_doc
	jmp Lbb100
Lbb99:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Err
Lbb100:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_apply_kv */

.text
.balign 16
_parsetoml_parsetoml_is_empty_or_comment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq _str340(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_equal
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq _str342(%rip), %rsi
	callq _donna_string_starts_with
	orq %rbx, %rax
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_is_empty_or_comment */

.text
.balign 16
_parsetoml_parsetoml_parse_section:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq _donna_string_length
	movq %rbx, %rsi
	movq %rax, %rcx
	movl $1, %edx
	movq %rsi, %rbx
	movl $93, %esi
	movq %rbx, %rdi
	callq _parsetoml_parsetoml_find_char
	movq %rbx, %rsi
	cmpq $-1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz Lbb105
	movq %rax, %rdx
	subq $1, %rdx
	movq %rsi, %rbx
	movl $1, %esi
	movq %rbx, %rdi
	callq _donna_string_slice
	movq %rax, %rdi
	callq _donna_string_trim
	movq %rax, %rdi
	leaq _str360(%rip), %rsi
	callq _donna_string_split
	movq %rax, %rdi
	leaq _parsetoml_parsetoml_trim_str(%rip), %rsi
	callq _donna_list_map
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
	jmp Lbb106
Lbb105:
	leaq _str354(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
Lbb106:
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_section */

.text
.balign 16
_parsetoml_parsetoml_parse_kv:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdi, %r12
	movq %rsi, %rdi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _donna_string_length
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rbx, %rcx
	movl $0, %edx
	movq %rsi, %r13
	movl $61, %esi
	movq %rdi, %r12
	movq %r13, %rdi
	callq _parsetoml_parsetoml_find_outside_str
	movq %r13, %rsi
	movq %rax, %r14
	cmpq $-1, %r14
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb114
	movq %r14, %rdx
	movq %rsi, %r13
	movl $0, %esi
	movq %r13, %rdi
	callq _donna_string_slice
	movq %rax, %rdi
	callq _donna_string_trim
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	movq %r14, %rsi
	addq $1, %rsi
	movq %rbx, %rax
	subq %r14, %rax
	movq %rax, %rdx
	subq $1, %rdx
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_string_slice
	movq %rax, %rdi
	callq _donna_string_trim
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _parsetoml_parsetoml_parse_key_str
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb113
	movq 8(%rax), %r13
	callq _parsetoml_parsetoml_strip_comment
	movq %rax, %rdi
	callq _parsetoml_parsetoml_parse_value
	movq %r13, %rsi
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb111
	movq 8(%rax), %r13
	callq _donna_list_append
	movq %rax, %r14
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%r12)
	jmp Lbb112
Lbb111:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%r12)
Lbb112:
	movq %rax, (%rbx)
	jmp Lbb115
Lbb113:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%rbx)
	jmp Lbb115
Lbb114:
	leaq _str374(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
Lbb115:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_kv */

.text
.balign 16
_parsetoml_parsetoml_parse_key_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq _str417(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_equal
	movq %rbx, %rdi
	cmpq $1, %rax
	jz Lbb118
	leaq _str426(%rip), %rsi
	callq _donna_string_split
	movq %rax, %rdi
	leaq _parsetoml_parsetoml_trim_str(%rip), %rsi
	callq _donna_list_map
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
	jmp Lbb119
Lbb118:
	leaq _str424(%rip), %rdi
	callq _parsetoml_parsetoml_Err
Lbb119:
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_key_str */

.text
.balign 16
_parsetoml_parsetoml_parse_value:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _donna_string_length
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb130
	movl $0, %esi
	movq %rdi, %rbx
	callq _donna_string_char_at
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $34, %rax
	jz Lbb129
	cmpq $39, %rax
	jz Lbb128
	cmpq $91, %rax
	jz Lbb127
	cmpq $123, %rax
	jz Lbb126
	callq _parsetoml_parsetoml_parse_scalar
	movq %rax, (%rbx)
	jmp Lbb131
Lbb126:
	callq _parsetoml_parsetoml_parse_inline_table
	movq %rax, (%rbx)
	jmp Lbb131
Lbb127:
	callq _parsetoml_parsetoml_parse_array
	movq %rax, (%rbx)
	jmp Lbb131
Lbb128:
	callq _parsetoml_parsetoml_parse_sq_string
	movq %rax, (%rbx)
	jmp Lbb131
Lbb129:
	callq _parsetoml_parsetoml_parse_dq_string
	movq %rax, (%rbx)
	jmp Lbb131
Lbb130:
	leaq _str437(%rip), %rdi
	callq _parsetoml_parsetoml_Err
Lbb131:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_value */

.text
.balign 16
_parsetoml_parsetoml_parse_dq_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _donna_string_length
	movq %rbx, %rdi
	movq %rax, %rdx
	leaq _str462(%rip), %rcx
	movl $1, %esi
	callq _parsetoml_parsetoml_read_dq
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb134
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_TomlString
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
	jmp Lbb135
Lbb134:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Err
Lbb135:
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_dq_string */

.text
.balign 16
_parsetoml_parsetoml_read_dq:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r13
	movq %rsi, %r15
	movq %rdi, %r12
	movq %rcx, %rdi
	movq %rdi, -16(%rbp)
	cmpq %r13, %r15
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb167
	movq %r15, %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _donna_string_char_at
	movq %r13, %rdx
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -32(%rbp)
	cmpq $34, %rax
	jz Lbb166
	cmpq $92, %rax
	setz %al
	movzbq %al, %rax
	movq %r15, %rsi
	addq $1, %rsi
	cmpl $0, %eax
	jnz Lbb140
	movq %rdx, %r14
	movl $1, %edx
	movq %rsi, %r13
	movq %r15, %rsi
	movq %rdi, %r15
	movq %r12, %rdi
	callq _donna_string_slice
	movq %r15, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rdx, %r15
	callq _parsetoml_parsetoml_read_dq
	movq %rax, (%rbx)
	jmp Lbb168
Lbb140:
	movq %r15, %r14
	movq %rdx, %r15
	movq %r12, %rdi
	cmpq %r15, %rsi
	setge %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -24(%rbp)
	cmpq $1, %rax
	jz Lbb164
	movq %rsi, %r13
	movq %rdi, %r12
	callq _donna_string_char_at
	movq %r15, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq -24(%rbp), %r12
	movq %rdi, %r13
	movq -16(%rbp), %rdi
	movq %r12, %r15
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $34, %rax
	jz Lbb160
	cmpq $92, %rax
	jz Lbb157
	cmpq $110, %rax
	jz Lbb154
	cmpq $116, %rax
	jz Lbb151
	cmpq $114, %rax
	jz Lbb148
	movq %rdx, %r15
	movl $1, %edx
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_string_slice
	movq %r12, %rcx
	movq %rbx, %rdi
	movq %rax, %rsi
	movq -24(%rbp), %r12
	movq -32(%rbp), %rbx
	movq %rsi, (%rcx)
	jmp Lbb163
Lbb148:
	movq %r12, %rcx
	movq %r15, %r12
	movq %rdx, %r15
	leaq _str528(%rip), %rax
	movq %rax, (%rcx)
	leaq _str528(%rip), %rax
	movq %rax, %rsi
	jmp Lbb163
Lbb151:
	movq %r12, %rcx
	movq %r15, %r12
	movq %rdx, %r15
	leaq _str524(%rip), %rax
	movq %rax, (%rcx)
	leaq _str524(%rip), %rax
	movq %rax, %rsi
	jmp Lbb163
Lbb154:
	movq %r12, %rcx
	movq %r15, %r12
	movq %rdx, %r15
	leaq _str520(%rip), %rax
	movq %rax, (%rcx)
	leaq _str520(%rip), %rax
	movq %rax, %rsi
	jmp Lbb163
Lbb157:
	movq %r12, %rcx
	movq %r15, %r12
	movq %rdx, %r15
	leaq _str516(%rip), %rax
	movq %rax, (%rcx)
	leaq _str516(%rip), %rax
	movq %rax, %rsi
	jmp Lbb163
Lbb160:
	movq %r12, %rcx
	movq %r15, %r12
	movq %rdx, %r15
	leaq _str512(%rip), %rax
	movq %rax, (%rcx)
	leaq _str512(%rip), %rax
	movq %rax, %rsi
Lbb163:
	addq $2, %r14
	callq ___rt_str_concat
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	callq _parsetoml_parsetoml_read_dq
	movq %rax, (%r12)
	jmp Lbb165
Lbb164:
	leaq _str503(%rip), %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%r12)
Lbb165:
	movq %rax, (%rbx)
	jmp Lbb168
Lbb166:
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%rbx)
	jmp Lbb168
Lbb167:
	leaq _str484(%rip), %rdi
	callq _parsetoml_parsetoml_Err
Lbb168:
	movq %rbp, %rsp
	subq $80, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_read_dq */

.text
.balign 16
_parsetoml_parsetoml_parse_sq_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _donna_string_length
	movq %rbx, %rdi
	movq %rax, %rcx
	cmpq $2, %rcx
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb173
	movl $1, %edx
	movl $39, %esi
	movq %rdi, %rbx
	callq _parsetoml_parsetoml_find_char
	movq %rbx, %rdi
	cmpq $-1, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb172
	movq %rax, %rdx
	subq $1, %rdx
	movl $1, %esi
	callq _donna_string_slice
	movq %rax, %rdi
	callq _parsetoml_parsetoml_TomlString
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%rbx)
	jmp Lbb174
Lbb172:
	leaq _str559(%rip), %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%rbx)
	jmp Lbb174
Lbb173:
	leaq _str549(%rip), %rdi
	callq _parsetoml_parsetoml_Err
Lbb174:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_sq_string */

.text
.balign 16
_parsetoml_parsetoml_parse_array:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _donna_string_length
	movq %rbx, %rdi
	movq %rax, %rdx
	subq $2, %rdx
	movl $1, %esi
	callq _donna_string_slice
	movq %rax, %rdi
	callq _donna_string_trim
	movq %rax, %rdi
	leaq _str571(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_equal
	movq %rbx, %rdi
	cmpq $1, %rax
	jz Lbb179
	movq %rdi, %rbx
	callq _donna_string_length
	movq %rbx, %rdi
	movq %rax, %rdx
	leaq _donna_nil(%rip), %rcx
	movl $0, %esi
	callq _parsetoml_parsetoml_parse_arr_elems
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb178
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_TomlArray
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%rbx)
	jmp Lbb180
Lbb178:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%rbx)
	jmp Lbb180
Lbb179:
	leaq _donna_nil(%rip), %rdi
	callq _parsetoml_parsetoml_TomlArray
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
Lbb180:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_array */

.text
.balign 16
_parsetoml_parsetoml_parse_arr_elems:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r13
	movq %rdx, %r15
	movq %r15, %rdx
	movq %rdi, %rbx
	callq _parsetoml_parsetoml_skip_ws
	movq %rbx, %rdi
	movq %rax, %rsi
	cmpq %r15, %rsi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb189
	movl $0, %r8d
	movl $0, %ecx
	movq %r15, %rdx
	movq %rsi, %r12
	movq %rdi, %rbx
	callq _parsetoml_parsetoml_scan_elem
	movq %r12, %rsi
	movq %rbx, %rdi
	movq (%rax), %r14
	movq 8(%rax), %r12
	movq %r14, %rdx
	subq %rsi, %rdx
	movq %rdi, %rbx
	callq _donna_string_slice
	movq %rax, %rdi
	callq _donna_string_trim
	movq %rax, %rdi
	callq _parsetoml_parsetoml_parse_value
	movq %r15, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb188
	movq 8(%rax), %rax
	movq %rax, -16(%rbp)
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %r12
	jz Lbb186
	movq %rsi, (%rax)
	movq %rsi, %r12
	jmp Lbb187
Lbb186:
	movq %rsi, %r12
	movq %r14, %rsi
	addq $1, %rsi
	movq %rsi, (%rax)
Lbb187:
	movq %rsi, %r15
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rcx
	movq -16(%rbp), %rax
	movq $1, (%rcx)
	movq %rax, 8(%rcx)
	movq %r13, 16(%rcx)
	movq %r12, %rdx
	callq _parsetoml_parsetoml_parse_arr_elems
	movq %rax, (%rbx)
	jmp Lbb191
Lbb188:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%rbx)
	jmp Lbb191
Lbb189:
	movq %r13, %rdi
	callq _donna_list_reverse
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
Lbb191:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_arr_elems */

.text
.balign 16
_parsetoml_parsetoml_parse_inline_table:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _donna_string_length
	movq %rbx, %rdi
	movq %rax, %rdx
	subq $2, %rdx
	movl $1, %esi
	callq _donna_string_slice
	movq %rax, %rdi
	callq _donna_string_trim
	movq %rax, %rdi
	leaq _str643(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_equal
	movq %rbx, %rdi
	cmpq $1, %rax
	jz Lbb196
	movq %rdi, %rbx
	callq _donna_string_length
	movq %rbx, %rdi
	movq %rax, %rdx
	leaq _donna_nil(%rip), %rcx
	movl $0, %esi
	callq _parsetoml_parsetoml_parse_inline_pairs
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb195
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_TomlTable
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%rbx)
	jmp Lbb197
Lbb195:
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%rbx)
	jmp Lbb197
Lbb196:
	leaq _donna_nil(%rip), %rdi
	callq _parsetoml_parsetoml_TomlTable
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
Lbb197:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_inline_table */

.text
.balign 16
_parsetoml_parsetoml_parse_inline_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $72, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r14
	movq %rdx, %r15
	movq %r14, -32(%rbp)
	movq %r15, %rdx
	movq %rdi, %rbx
	callq _parsetoml_parsetoml_skip_ws
	movq %rbx, %rdi
	movq %rax, %rsi
	cmpq %r15, %rsi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb210
	movl $0, %r8d
	movl $0, %ecx
	movq %r15, %rdx
	movq %rsi, %r12
	movq %rdi, %rbx
	callq _parsetoml_parsetoml_scan_elem
	movq %r12, %rsi
	movq %rbx, %rdi
	movq (%rax), %r12
	movq %r12, -24(%rbp)
	movq 8(%rax), %rcx
	movq %rcx, -40(%rbp)
	movq %r12, %rdx
	subq %rsi, %rdx
	movq %rdi, %rbx
	callq _donna_string_slice
	movq %rax, %rdi
	callq _donna_string_trim
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _donna_string_length
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %rcx, -16(%rbp)
	movl $0, %edx
	movq %rsi, %r12
	movl $61, %esi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _parsetoml_parsetoml_find_outside_str
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r13
	cmpq $-1, %r13
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -64(%rbp)
	cmpq $1, %rax
	jz Lbb209
	movq %r13, %rdx
	movq %rsi, %r14
	movl $0, %esi
	movq %rdi, %r12
	movq %r14, %rdi
	callq _donna_string_slice
	movq %rax, %rdi
	callq _donna_string_trim
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, -48(%rbp)
	movq -16(%rbp), %rcx
	movq -24(%rbp), %r12
	movq -32(%rbp), %r14
	movq %rsi, %rax
	movq %r13, %rsi
	addq $1, %rsi
	subq %r13, %rcx
	movq %rcx, %rdx
	subq $1, %rdx
	movq %rdi, %r13
	movq %rax, %rdi
	callq _donna_string_slice
	movq %rax, %rdi
	callq _donna_string_trim
	movq %rax, %rdi
	callq _parsetoml_parsetoml_parse_value
	movq %r15, %rsi
	movq %r13, %rdi
	movq -40(%rbp), %rcx
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -56(%rbp)
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb206
	movq 8(%rax), %rbx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb204
	movq %rsi, (%rax)
	movq %rsi, %r13
	jmp Lbb205
Lbb204:
	movq %rsi, %r13
	movq %r12, %rsi
	addq $1, %rsi
	movq %rsi, (%rax)
Lbb205:
	movq %rsi, %r12
	movq %rdi, %r15
	movl $16, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %r15
	movq -48(%rbp), %rax
	movq %rax, (%r15)
	movq %rbx, 8(%r15)
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq -56(%rbp), %r12
	movq -64(%rbp), %rbx
	movq $1, (%rcx)
	movq %r15, 8(%rcx)
	movq %r14, 16(%rcx)
	movq %r13, %rdx
	callq _parsetoml_parsetoml_parse_inline_pairs
	movq %rax, (%r12)
	jmp Lbb208
Lbb206:
	movq %r13, %r12
	movq 8(%rax), %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%r12)
Lbb208:
	movq %rax, (%rbx)
	jmp Lbb212
Lbb209:
	leaq _str695(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%rbx)
	jmp Lbb212
Lbb210:
	movq %r14, %rdi
	callq _donna_list_reverse
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
Lbb212:
	movq %rbp, %rsp
	subq $112, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_inline_pairs */

.text
.balign 16
_parsetoml_parsetoml_parse_scalar:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq _str734(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_equal
	movq %rbx, %rdi
	cmpq $1, %rax
	jz Lbb217
	leaq _str743(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_equal
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb216
	callq _parsetoml_parsetoml_parse_int
	movq %rax, (%rbx)
	jmp Lbb218
Lbb216:
	movl $0, %edi
	callq _parsetoml_parsetoml_TomlBool
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%rbx)
	jmp Lbb218
Lbb217:
	movl $1, %edi
	callq _parsetoml_parsetoml_TomlBool
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
Lbb218:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_scalar */

.text
.balign 16
_parsetoml_parsetoml_parse_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq _donna_string_length
	movq %rbx, %rsi
	movq %rax, %rbx
	cmpq $0, %rbx
	jz Lbb236
	movq %rsi, %r13
	movl $0, %esi
	movq %r13, %rdi
	callq _donna_string_char_at
	movq %rbx, %rdx
	cmpq $45, %rax
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %r14
	jz Lbb223
	movq $0, (%rax)
	movl $0, %esi
	jmp Lbb225
Lbb223:
	movq $1, (%rax)
	movl $1, %esi
Lbb225:
	cmpq %rdx, %rsi
	setge %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb234
	movq %rdx, %r15
	movq %rsi, %r12
	movq %r13, %rdi
	callq _parsetoml_parsetoml_all_digits
	movq %r15, %rdx
	movq %r12, %rsi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rax
	jz Lbb231
	movl $0, %ecx
	movq %r13, %rdi
	callq _parsetoml_parsetoml_parse_digits
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %r14
	jz Lbb229
	movq %rax, %rdi
	callq _parsetoml_parsetoml_TomlInt
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%r13)
	jmp Lbb230
Lbb229:
	movl $0, %edi
	subq %rax, %rdi
	callq _parsetoml_parsetoml_TomlInt
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Ok
	movq %rax, (%r13)
Lbb230:
	movq %rax, (%r12)
	jmp Lbb233
Lbb231:
	movq %r13, %rsi
	leaq _str786(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%r12)
Lbb233:
	movq %rax, (%rbx)
	jmp Lbb237
Lbb234:
	movq %r13, %rsi
	leaq _str777(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _parsetoml_parsetoml_Err
	movq %rax, (%rbx)
	jmp Lbb237
Lbb236:
	leaq _str761(%rip), %rdi
	callq _parsetoml_parsetoml_Err
Lbb237:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_int */

.text
.balign 16
_parsetoml_parsetoml_build_table:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rsi
	callq _parsetoml_parsetoml_fold_entries
	movq %rax, %rdi
	callq _parsetoml_parsetoml_TomlTable
	leave
	ret
/* end function parsetoml_parsetoml_build_table */

.text
.balign 16
_parsetoml_parsetoml_fold_entries:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb242
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rdi
	movq (%rcx), %rsi
	movq 8(%rcx), %rdx
	movq %rdi, %rbx
	movq %rax, %rdi
	callq _parsetoml_parsetoml_set_nested
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _parsetoml_parsetoml_fold_entries
Lbb242:
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_fold_entries */

.text
.balign 16
_parsetoml_parsetoml_set_nested:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdi, %rax
	movq (%rsi), %rcx
	cmpq $0, %rcx
	jz Lbb258
	cmpq $1, %rcx
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edi
	jnz Lbb247
	movq $0, (%rcx)
	movq %rdx, %r14
	movq %rax, %rbx
	movl $0, %eax
	jmp Lbb248
Lbb247:
	movq %rdx, %r14
	movq 16(%rsi), %rdx
	movq (%rdx), %rdx
	cmpq $0, %rdx
	movq %rax, %rbx
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb248:
	cmpl $0, %eax
	jnz Lbb256
	movq 8(%rsi), %r12
	movq 16(%rsi), %rsi
	movq %rsi, %r13
	movq %r12, %rsi
	movq %rbx, %rdi
	callq _parsetoml_parsetoml_get_sub_pairs
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rdi), %r8
	cmpq $1, %r8
	jz Lbb252
	movq 8(%rdi), %rdi
	movq %rdi, (%rcx)
	movq %rax, %rbx
	jmp Lbb255
Lbb252:
	movq %rcx, %rdi
	leaq _donna_nil(%rip), %rcx
	movq %rcx, (%rdi)
	movq %rax, %rbx
	leaq _donna_nil(%rip), %rax
	movq %rax, %rdi
Lbb255:
	callq _parsetoml_parsetoml_set_nested
	movq %rax, %rdi
	callq _parsetoml_parsetoml_TomlTable
	movq %r12, %rsi
	movq %rax, %rdx
	movq %rbx, %rax
	movq %rax, %rdi
	callq _parsetoml_parsetoml_upsert
	jmp Lbb258
Lbb256:
	movq %r14, %rdx
	movq %rbx, %rax
	movq 8(%rsi), %rsi
	movq %rax, %rdi
	callq _parsetoml_parsetoml_upsert
Lbb258:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_set_nested */

.text
.balign 16
_parsetoml_parsetoml_upsert:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rcx
	callq _parsetoml_parsetoml_upsert_loop
	leave
	ret
/* end function parsetoml_parsetoml_upsert */

.text
.balign 16
_parsetoml_parsetoml_upsert_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r13
	movq %rdx, %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb266
	movq 8(%rdi), %r14
	movq 16(%rdi), %r12
	movq (%r14), %rdi
	movq %rsi, %rbx
	callq _donna_string_equal
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -16(%rbp)
	cmpq $1, %rcx
	jz Lbb264
	movl $24, %edi
	callq _malloc
	movq %r15, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -16(%rbp), %rbx
	movq $1, (%rcx)
	movq %r14, 8(%rcx)
	movq %r13, 16(%rcx)
	movq %rdx, %r15
	movq %rsi, %r14
	movq %r12, %rdi
	callq _parsetoml_parsetoml_upsert_loop
	movq %rax, (%rbx)
	jmp Lbb268
Lbb264:
	movq %r13, %rcx
	movq %rbx, %r14
	movq %rax, %rbx
	movq %rcx, %rdi
	callq _donna_list_reverse
	movq %rax, %rdi
	movq %rdi, %r13
	movl $16, %edi
	callq _malloc
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %r13
	movq %rsi, (%r13)
	movq %rdx, 8(%r13)
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq _donna_list_append
	movq %rax, (%rbx)
	jmp Lbb268
Lbb266:
	movq %r13, %r12
	movq %r15, %r13
	movq %rsi, %rbx
	movl $16, %edi
	callq _malloc
	movq %r13, %rdx
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rsi, (%rbx)
	movq %rdx, 8(%rbx)
	movl $24, %edi
	callq _malloc
	movq %r12, %rcx
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	movq %rcx, 16(%rdi)
	callq _donna_list_reverse
Lbb268:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_upsert_loop */

.text
.balign 16
_parsetoml_parsetoml_get_sub_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb276
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	movq 8(%rax), %r13
	movq %rsi, %r12
	callq _donna_string_equal
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb272
	callq _parsetoml_parsetoml_get_sub_pairs
	movq %rax, (%rbx)
	jmp Lbb277
Lbb272:
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r13), %rax
	cmpq $4, %rax
	jz Lbb274
	leaq _parsetoml_parsetoml_NoPairs(%rip), %rax
	movq %rax, (%r12)
	leaq _parsetoml_parsetoml_NoPairs(%rip), %rax
	jmp Lbb275
Lbb274:
	movq 8(%r13), %rdi
	callq _parsetoml_parsetoml_GotPairs
	movq %rax, (%r12)
Lbb275:
	movq %rax, (%rbx)
	jmp Lbb277
Lbb276:
	leaq _parsetoml_parsetoml_NoPairs(%rip), %rax
Lbb277:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_get_sub_pairs */

.text
.balign 16
_parsetoml_parsetoml_table_lookup:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $4, %rax
	jz Lbb280
	leaq _parsetoml_parsetoml_NotFound(%rip), %rax
	jmp Lbb281
Lbb280:
	movq 8(%rdi), %rdi
	callq _parsetoml_parsetoml_lookup_pairs
Lbb281:
	leave
	ret
/* end function parsetoml_parsetoml_table_lookup */

.text
.balign 16
_parsetoml_parsetoml_lookup_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb287
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	movq 8(%rax), %r12
	movq %rsi, %r13
	callq _donna_string_equal
	movq %r13, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb285
	callq _parsetoml_parsetoml_lookup_pairs
	movq %rax, (%rbx)
	jmp Lbb288
Lbb285:
	movq %r12, %rdi
	callq _parsetoml_parsetoml_Found
	movq %rax, (%rbx)
	jmp Lbb288
Lbb287:
	leaq _parsetoml_parsetoml_NotFound(%rip), %rax
Lbb288:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_lookup_pairs */

.text
.balign 16
_parsetoml_parsetoml_trim_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_string_trim
	leave
	ret
/* end function parsetoml_parsetoml_trim_str */

.text
.balign 16
_parsetoml_parsetoml_skip_ws:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %rax
	cmpq %r13, %rax
	movq %rax, %rbx
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb295
	movq %rbx, %rsi
	movq %rdi, %r12
	callq _donna_string_char_at
	movq %r13, %rdx
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rbx, %rax
	cmpq $32, %rsi
	setz %cl
	movzbq %cl, %rcx
	cmpq $9, %rsi
	setz %r8b
	movzbq %r8b, %r8
	orq %r8, %rcx
	cmpq $13, %rsi
	setz %sil
	movzbq %sil, %rsi
	orq %rsi, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb294
	movq %rax, (%rbx)
	jmp Lbb296
Lbb294:
	movq %rax, %rsi
	addq $1, %rsi
	callq _parsetoml_parsetoml_skip_ws
	movq %rax, (%rbx)
	jmp Lbb296
Lbb295:
	movq %rbx, %rax
Lbb296:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_skip_ws */

.text
.balign 16
_parsetoml_parsetoml_find_outside_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %r8d
	callq _parsetoml_parsetoml_fos_loop
	leave
	ret
/* end function parsetoml_parsetoml_find_outside_str */

.text
.balign 16
_parsetoml_parsetoml_fos_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r8, %r15
	movq %rcx, %r14
	movq %rdx, %rax
	cmpq %r14, %rax
	movq %rax, %rbx
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb318
	movq %rsi, %r13
	movq %rbx, %rsi
	movq %rdi, %r12
	callq _donna_string_char_at
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r9
	movq %rbx, %rax
	cmpq $0, %r8
	setnz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rdx
	setz %r10b
	movzbq %r10b, %r10
	movq %rax, %rdx
	addq $1, %rdx
	cmpl $0, %r10d
	jnz Lbb310
	cmpq %r9, %rsi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %r8
	jz Lbb308
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $34, %r9
	jz Lbb306
	cmpq $39, %r9
	jz Lbb305
	movl $0, %r8d
	callq _parsetoml_parsetoml_fos_loop
	movq %rax, (%r13)
	jmp Lbb307
Lbb305:
	movl $39, %r8d
	callq _parsetoml_parsetoml_fos_loop
	movq %rax, (%r13)
	jmp Lbb307
Lbb306:
	movl $34, %r8d
	callq _parsetoml_parsetoml_fos_loop
	movq %rax, (%r13)
Lbb307:
	movq %rax, (%r12)
	jmp Lbb309
Lbb308:
	movq %rax, (%r12)
Lbb309:
	movq %rax, (%rbx)
	jmp Lbb319
Lbb310:
	cmpq $92, %r9
	setz %r10b
	movzbq %r10b, %r10
	cmpq $34, %r8
	setz %r11b
	movzbq %r11b, %r11
	andq %r11, %r10
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %r10
	jz Lbb316
	movq %r9, %rax
	cmpq %rax, %r8
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb314
	callq _parsetoml_parsetoml_fos_loop
	movq %rax, (%r13)
	jmp Lbb315
Lbb314:
	movl $0, %r8d
	callq _parsetoml_parsetoml_fos_loop
	movq %rax, (%r13)
Lbb315:
	movq %rax, (%r12)
	jmp Lbb317
Lbb316:
	movq %rax, %rdx
	addq $2, %rdx
	callq _parsetoml_parsetoml_fos_loop
	movq %rax, (%r12)
Lbb317:
	movq %rax, (%rbx)
	jmp Lbb319
Lbb318:
	movq $-1, %rax
Lbb319:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_fos_loop */

.text
.balign 16
_parsetoml_parsetoml_find_char:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rdx, %rax
	cmpq %r14, %rax
	movq %rax, %rbx
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb324
	movq %rsi, %r13
	movq %rbx, %rsi
	movq %rdi, %r12
	callq _donna_string_char_at
	movq %r14, %rcx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq %rbx, %rax
	cmpq %rdx, %rsi
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rdx
	jz Lbb323
	movq %rax, %rdx
	addq $1, %rdx
	callq _parsetoml_parsetoml_find_char
	movq %rax, (%rbx)
	jmp Lbb325
Lbb323:
	movq %rax, (%rbx)
	jmp Lbb325
Lbb324:
	movq $-1, %rax
Lbb325:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_find_char */

.text
.balign 16
_parsetoml_parsetoml_scan_elem:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r8, %r15
	movq %rcx, %r14
	movq %rdx, %r13
	cmpq %r13, %rsi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb360
	movq %rsi, %r12
	movq %rdi, %rbx
	callq _donna_string_char_at
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq $0, %r8
	setnz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %r9
	setz %r9b
	movzbq %r9b, %r9
	movq %rsi, %r14
	addq $1, %rsi
	cmpl $0, %r9d
	jnz Lbb351
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $34, %rax
	jz Lbb349
	cmpq $39, %rax
	jz Lbb348
	cmpq $91, %rax
	setz %r8b
	movzbq %r8b, %r8
	movq %rcx, %r9
	addq $1, %r9
	cmpl $0, %r8d
	jnz Lbb346
	cmpq $123, %rax
	jz Lbb344
	cmpq $93, %rax
	setz %r8b
	movzbq %r8b, %r8
	movq %rcx, %r9
	subq $1, %r9
	cmpl $0, %r8d
	jnz Lbb342
	cmpq $125, %rax
	jz Lbb340
	cmpq $44, %rax
	jz Lbb336
	movl $0, %r8d
	callq _parsetoml_parsetoml_scan_elem
	movq %rax, (%r12)
	jmp Lbb350
Lbb336:
	cmpq $0, %rcx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb338
	movl $0, %r8d
	callq _parsetoml_parsetoml_scan_elem
	movq %rax, (%r13)
	jmp Lbb339
Lbb338:
	movl $16, %edi
	callq _malloc
	movq %r14, %rsi
	movq %rsi, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r13)
Lbb339:
	movq %rax, (%r12)
	jmp Lbb350
Lbb340:
	movq %r9, %rcx
	movl $0, %r8d
	callq _parsetoml_parsetoml_scan_elem
	movq %rax, (%r12)
	jmp Lbb350
Lbb342:
	movq %r9, %rcx
	movl $0, %r8d
	callq _parsetoml_parsetoml_scan_elem
	movq %rax, (%r12)
	jmp Lbb350
Lbb344:
	movq %r9, %rcx
	movl $0, %r8d
	callq _parsetoml_parsetoml_scan_elem
	movq %rax, (%r12)
	jmp Lbb350
Lbb346:
	movq %r9, %rcx
	movl $0, %r8d
	callq _parsetoml_parsetoml_scan_elem
	movq %rax, (%r12)
	jmp Lbb350
Lbb348:
	movl $39, %r8d
	callq _parsetoml_parsetoml_scan_elem
	movq %rax, (%r12)
	jmp Lbb350
Lbb349:
	movl $34, %r8d
	callq _parsetoml_parsetoml_scan_elem
	movq %rax, (%r12)
Lbb350:
	movq %rax, (%rbx)
	jmp Lbb362
Lbb351:
	movq %r14, %r13
	cmpq $92, %rax
	setz %r9b
	movzbq %r9b, %r9
	cmpq $34, %r8
	setz %r10b
	movzbq %r10b, %r10
	andq %r10, %r9
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %r9
	jz Lbb357
	cmpq %rax, %r8
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb355
	callq _parsetoml_parsetoml_scan_elem
	movq %rax, (%r13)
	jmp Lbb356
Lbb355:
	movl $0, %r8d
	callq _parsetoml_parsetoml_scan_elem
	movq %rax, (%r13)
Lbb356:
	movq %rax, (%r12)
	jmp Lbb359
Lbb357:
	movq %r13, %rsi
	addq $2, %rsi
	callq _parsetoml_parsetoml_scan_elem
	movq %rax, (%r12)
Lbb359:
	movq %rax, (%rbx)
	jmp Lbb362
Lbb360:
	movq %r13, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdx
	movq %rdx, (%rax)
	movq $0, 8(%rax)
Lbb362:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_scan_elem */

.text
.balign 16
_parsetoml_parsetoml_strip_comment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _donna_string_length
	movq %rbx, %rdi
	movq %rax, %rdx
	movl $0, %ecx
	movl $0, %esi
	callq _parsetoml_parsetoml_sc_loop
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_strip_comment */

.text
.balign 16
_parsetoml_parsetoml_sc_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rdi, %rax
	cmpq %r13, %rsi
	movq %rax, %rbx
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb387
	movq %rsi, %r12
	movq %rbx, %rdi
	callq _donna_string_char_at
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, %rax
	cmpq $0, %rcx
	setnz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	movq %rsi, %r8
	addq $1, %r8
	cmpl $0, %r9d
	jnz Lbb379
	movq %rdi, %rcx
	movq %r8, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $34, %rcx
	jz Lbb376
	cmpq $39, %rcx
	jz Lbb374
	cmpq $35, %rcx
	jz Lbb373
	movq %rdi, %rsi
	movl $0, %ecx
	movq %rax, %rdi
	callq _parsetoml_parsetoml_sc_loop
	movq %rax, (%r12)
	jmp Lbb378
Lbb373:
	movq %rsi, %rdx
	movl $0, %esi
	movq %rax, %rdi
	callq _donna_string_slice
	movq %rax, %rdi
	callq _donna_string_trim
	movq %rax, (%r12)
	jmp Lbb378
Lbb374:
	movq %rdi, %rsi
	movl $39, %ecx
	movq %rax, %rdi
	callq _parsetoml_parsetoml_sc_loop
	movq %rax, (%r12)
	jmp Lbb378
Lbb376:
	movq %rdi, %rsi
	movl $34, %ecx
	movq %rsi, %r8
	movq %rax, %rdi
	callq _parsetoml_parsetoml_sc_loop
	movq %rax, (%r12)
Lbb378:
	movq %rax, (%rbx)
	jmp Lbb388
Lbb379:
	cmpq $92, %rdi
	setz %r9b
	movzbq %r9b, %r9
	cmpq $34, %rcx
	setz %r10b
	movzbq %r10b, %r10
	andq %r10, %r9
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %r9
	jz Lbb385
	movq %r8, %rsi
	cmpq %rdi, %rcx
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rdi
	jz Lbb383
	movq %rax, %rdi
	callq _parsetoml_parsetoml_sc_loop
	movq %rax, (%r13)
	jmp Lbb384
Lbb383:
	movl $0, %ecx
	movq %rax, %rdi
	callq _parsetoml_parsetoml_sc_loop
	movq %rax, (%r13)
Lbb384:
	movq %rax, (%r12)
	jmp Lbb386
Lbb385:
	addq $2, %rsi
	movq %rax, %rdi
	callq _parsetoml_parsetoml_sc_loop
	movq %rax, (%r12)
Lbb386:
	movq %rax, (%rbx)
	jmp Lbb388
Lbb387:
	movq %rbx, %rax
Lbb388:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_sc_loop */

.text
.balign 16
_parsetoml_parsetoml_all_digits:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	cmpq %r13, %rsi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb394
	movq %rsi, %r12
	movq %rdi, %rbx
	callq _donna_string_char_at
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	cmpq $48, %rcx
	setge %al
	movzbq %al, %rax
	cmpq $57, %rcx
	setle %cl
	movzbq %cl, %rcx
	andq %rcx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb393
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb395
Lbb393:
	addq $1, %rsi
	callq _parsetoml_parsetoml_all_digits
	movq %rax, (%rbx)
	jmp Lbb395
Lbb394:
	movl $1, %eax
Lbb395:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_all_digits */

.text
.balign 16
_parsetoml_parsetoml_parse_digits:
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
	jz Lbb401
	movq %rsi, %r13
	movq %rdi, %rbx
	callq _donna_string_char_at
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
	jz Lbb400
	movq %r12, (%rbx)
	movq %r12, %rax
	jmp Lbb402
Lbb400:
	addq $1, %rsi
	imulq $10, %r12, %rcx
	addq %rcx, %rax
	movq %rax, %rcx
	subq $48, %rcx
	callq _parsetoml_parsetoml_parse_digits
	movq %rax, (%rbx)
	jmp Lbb402
Lbb401:
	movq %r12, %rax
Lbb402:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_digits */

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

