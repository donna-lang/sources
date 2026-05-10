.data
.balign 8
.globl parsetoml_parsetoml_NotFound
parsetoml_parsetoml_NotFound:
	.quad 1
/* end data */

.data
.balign 8
.globl parsetoml_parsetoml_NoPairs
parsetoml_parsetoml_NoPairs:
	.quad 1
/* end data */

.data
.balign 8
str18:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str43:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str45:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str59:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str61:
	.ascii "' is not a string"
	.byte 0
/* end data */

.data
.balign 8
str73:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str89:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str91:
	.ascii "' is not an integer"
	.byte 0
/* end data */

.data
.balign 8
str103:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str105:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str119:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str121:
	.ascii "' is not a boolean"
	.byte 0
/* end data */

.data
.balign 8
str133:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str149:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str151:
	.ascii "' is not a table"
	.byte 0
/* end data */

.data
.balign 8
str163:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str165:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str179:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str181:
	.ascii "' is not an array"
	.byte 0
/* end data */

.data
.balign 8
str208:
	.ascii "__err:"
	.byte 0
/* end data */

.data
.balign 8
str263:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str289:
	.ascii "[["
	.byte 0
/* end data */

.data
.balign 8
str299:
	.ascii "["
	.byte 0
/* end data */

.data
.balign 8
str340:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str342:
	.ascii "#"
	.byte 0
/* end data */

.data
.balign 8
str354:
	.ascii "unclosed '[' in: "
	.byte 0
/* end data */

.data
.balign 8
str360:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str374:
	.ascii "expected '=' in: "
	.byte 0
/* end data */

.data
.balign 8
str417:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str424:
	.ascii "empty key"
	.byte 0
/* end data */

.data
.balign 8
str426:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str437:
	.ascii "empty value"
	.byte 0
/* end data */

.data
.balign 8
str462:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str484:
	.ascii "unterminated string"
	.byte 0
/* end data */

.data
.balign 8
str503:
	.ascii "unexpected end after "
	.byte 92
	.byte 0
/* end data */

.data
.balign 8
str512:
	.byte 34
	.byte 0
/* end data */

.data
.balign 8
str516:
	.byte 92
	.byte 0
/* end data */

.data
.balign 8
str520:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str524:
	.byte 9
	.byte 0
/* end data */

.data
.balign 8
str528:
	.byte 13
	.byte 0
/* end data */

.data
.balign 8
str549:
	.ascii "unterminated literal string"
	.byte 0
/* end data */

.data
.balign 8
str559:
	.ascii "unterminated literal string"
	.byte 0
/* end data */

.data
.balign 8
str571:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str643:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str695:
	.ascii "expected '=' in pair: "
	.byte 0
/* end data */

.data
.balign 8
str734:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
str743:
	.ascii "false"
	.byte 0
/* end data */

.data
.balign 8
str761:
	.ascii "empty integer"
	.byte 0
/* end data */

.data
.balign 8
str777:
	.ascii "invalid integer: "
	.byte 0
/* end data */

.data
.balign 8
str786:
	.ascii "invalid value: "
	.byte 0
/* end data */

.text
.balign 16
.globl parsetoml_parsetoml_Ok
parsetoml_parsetoml_Ok:
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
/* end function parsetoml_parsetoml_Ok */

.text
.balign 16
.globl parsetoml_parsetoml_Err
parsetoml_parsetoml_Err:
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
/* end function parsetoml_parsetoml_Err */

.text
.balign 16
.globl parsetoml_parsetoml_TomlString
parsetoml_parsetoml_TomlString:
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
/* end function parsetoml_parsetoml_TomlString */

.text
.balign 16
.globl parsetoml_parsetoml_TomlInt
parsetoml_parsetoml_TomlInt:
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
/* end function parsetoml_parsetoml_TomlInt */

.text
.balign 16
.globl parsetoml_parsetoml_TomlBool
parsetoml_parsetoml_TomlBool:
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
/* end function parsetoml_parsetoml_TomlBool */

.text
.balign 16
.globl parsetoml_parsetoml_TomlArray
parsetoml_parsetoml_TomlArray:
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
/* end function parsetoml_parsetoml_TomlArray */

.text
.balign 16
.globl parsetoml_parsetoml_TomlTable
parsetoml_parsetoml_TomlTable:
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
	movq $4, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_TomlTable */

.text
.balign 16
.globl parsetoml_parsetoml_Found
parsetoml_parsetoml_Found:
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
/* end function parsetoml_parsetoml_Found */

.text
.balign 16
.globl parsetoml_parsetoml_GotPairs
parsetoml_parsetoml_GotPairs:
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
/* end function parsetoml_parsetoml_GotPairs */

.text
.balign 16
.globl parsetoml_parsetoml_parse
parsetoml_parsetoml_parse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str18(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	leaq donna_nil(%rip), %rdx
	callq parsetoml_parsetoml_parse_doc
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb20
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_build_table
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	jmp Lbb21
Lbb20:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb21:
	leave
	ret
/* end function parsetoml_parsetoml_parse */

.text
.balign 16
.globl parsetoml_parsetoml_get_string
parsetoml_parsetoml_get_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rdx, %rsi
	callq parsetoml_parsetoml_table_lookup
	movq %rsi, %rdx
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb26
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb25
	subq $32, %rsp
	leaq str59(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str61(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb27
Lbb25:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb27
Lbb26:
	subq $32, %rsp
	leaq str43(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str45(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb27:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_get_string */

.text
.balign 16
.globl parsetoml_parsetoml_get_int
parsetoml_parsetoml_get_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rdx, %rsi
	callq parsetoml_parsetoml_table_lookup
	movq %rsi, %rdx
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb32
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb31
	subq $32, %rsp
	leaq str89(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str91(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb33
Lbb31:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb33
Lbb32:
	subq $32, %rsp
	leaq str73(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str75(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb33:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_get_int */

.text
.balign 16
.globl parsetoml_parsetoml_get_bool
parsetoml_parsetoml_get_bool:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rdx, %rsi
	callq parsetoml_parsetoml_table_lookup
	movq %rsi, %rdx
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb38
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $2, %rcx
	jz Lbb37
	subq $32, %rsp
	leaq str119(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str121(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb39
Lbb37:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb39
Lbb38:
	subq $32, %rsp
	leaq str103(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str105(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb39:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_get_bool */

.text
.balign 16
.globl parsetoml_parsetoml_get_table
parsetoml_parsetoml_get_table:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rdx, %rsi
	callq parsetoml_parsetoml_table_lookup
	movq %rsi, %rdx
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb44
	movq 8(%rax), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rax
	cmpq $4, %rax
	jz Lbb43
	subq $32, %rsp
	leaq str149(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str151(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb45
Lbb43:
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb45
Lbb44:
	subq $32, %rsp
	leaq str133(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str135(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb45:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_get_table */

.text
.balign 16
.globl parsetoml_parsetoml_get_array
parsetoml_parsetoml_get_array:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rdx, %rsi
	callq parsetoml_parsetoml_table_lookup
	movq %rsi, %rdx
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb50
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $3, %rcx
	jz Lbb49
	subq $32, %rsp
	leaq str179(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str181(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb51
Lbb49:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb51
Lbb50:
	subq $32, %rsp
	leaq str163(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str165(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb51:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_get_array */

.text
.balign 16
.globl parsetoml_parsetoml_unwrap_table
parsetoml_parsetoml_unwrap_table:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb54
	subq $32, %rsp
	leaq donna_nil(%rip), %rcx
	callq parsetoml_parsetoml_TomlTable
	subq $-32, %rsp
	jmp Lbb55
Lbb54:
	movq 8(%rcx), %rax
Lbb55:
	leave
	ret
/* end function parsetoml_parsetoml_unwrap_table */

.text
.balign 16
.globl parsetoml_parsetoml_unwrap_string
parsetoml_parsetoml_unwrap_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb58
	movq 8(%rcx), %rdx
	subq $32, %rsp
	leaq str208(%rip), %rcx
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb59
Lbb58:
	movq 8(%rcx), %rax
Lbb59:
	leave
	ret
/* end function parsetoml_parsetoml_unwrap_string */

.text
.balign 16
.globl parsetoml_parsetoml_unwrap_int
parsetoml_parsetoml_unwrap_int:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb62
	movl $0, %eax
	jmp Lbb63
Lbb62:
	movq 8(%rcx), %rax
Lbb63:
	ret
/* end function parsetoml_parsetoml_unwrap_int */

.text
.balign 16
.globl parsetoml_parsetoml_unwrap_bool
parsetoml_parsetoml_unwrap_bool:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb66
	movl $0, %eax
	jmp Lbb67
Lbb66:
	movq 8(%rcx), %rax
Lbb67:
	ret
/* end function parsetoml_parsetoml_unwrap_bool */

.text
.balign 16
.globl parsetoml_parsetoml_is_ok
parsetoml_parsetoml_is_ok:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
/* end function parsetoml_parsetoml_is_ok */

.text
.balign 16
.globl parsetoml_parsetoml_is_err
parsetoml_parsetoml_is_err:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	movl $1, %ecx
	movl $0, %eax
	cmovnz %rcx, %rax
	ret
/* end function parsetoml_parsetoml_is_err */

.text
.balign 16
.globl parsetoml_parsetoml_err_msg
parsetoml_parsetoml_err_msg:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb74
	movq 8(%rcx), %rax
	jmp Lbb75
Lbb74:
	leaq str263(%rip), %rax
Lbb75:
	ret
/* end function parsetoml_parsetoml_err_msg */

.text
.balign 16
parsetoml_parsetoml_parse_doc:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rdx, %r12
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb81
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq parsetoml_parsetoml_is_empty_or_comment
	movq %r12, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb79
	subq $32, %rsp
	movq %rbx, %r9
	movq %rdx, %r8
	movq %rdi, %rdx
	callq parsetoml_parsetoml_process_line
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb83
Lbb79:
	movq %rdi, %rcx
	movq %rbx, %rdi
	subq $32, %rsp
	movq %rdi, %r8
	callq parsetoml_parsetoml_parse_doc
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb83
Lbb81:
	movq %rbx, %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
Lbb83:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_doc */

.text
.balign 16
parsetoml_parsetoml_process_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %r12
	movq %rdx, %rsi
	movq %r8, %rdx
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str289(%rip), %rdx
	movq %rcx, %rdi
	callq donna_string_starts_with
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb86
	subq $32, %rsp
	movq %r8, %r9
	movq %rdx, %r8
	movq %rsi, %rdx
	callq parsetoml_parsetoml_process_non_array_table
	subq $-32, %rsp
	jmp Lbb88
Lbb86:
	movq %rsi, %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_doc
	subq $-32, %rsp
Lbb88:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_process_line */

.text
.balign 16
parsetoml_parsetoml_process_non_array_table:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %r12
	movq %r8, %rbx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str299(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %r12, %r9
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb91
	subq $32, %rsp
	callq parsetoml_parsetoml_apply_kv
	subq $-32, %rsp
	jmp Lbb92
Lbb91:
	subq $32, %rsp
	callq parsetoml_parsetoml_apply_section
	subq $-32, %rsp
Lbb92:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_process_non_array_table */

.text
.balign 16
parsetoml_parsetoml_apply_section:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %r9, %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_section
	movq %rdi, %r8
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb95
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_doc
	subq $-32, %rsp
	jmp Lbb96
Lbb95:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb96:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_apply_section */

.text
.balign 16
parsetoml_parsetoml_apply_kv:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %r12
	movq %rdx, %rsi
	movq %r8, %rdx
	subq $32, %rsp
	movq %rdx, %rdi
	callq parsetoml_parsetoml_parse_kv
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rsi
	cmpq $1, %rsi
	movq %rdx, %rbx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb99
	movq 8(%rax), %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %r12, %r9
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rsi, 8(%r8)
	movq %r9, 16(%r8)
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_doc
	subq $-32, %rsp
	jmp Lbb100
Lbb99:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb100:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_apply_kv */

.text
.balign 16
parsetoml_parsetoml_is_empty_or_comment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str340(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str342(%rip), %rdx
	callq donna_string_starts_with
	subq $-32, %rsp
	orq %rsi, %rax
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_is_empty_or_comment */

.text
.balign 16
parsetoml_parsetoml_parse_section:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_string_length
	movq %rsi, %rdx
	movq %rax, %r9
	subq $-32, %rsp
	subq $32, %rsp
	movl $1, %r8d
	movq %rdx, %rsi
	movl $93, %edx
	movq %rsi, %rcx
	callq parsetoml_parsetoml_find_char
	movq %rsi, %rdx
	subq $-32, %rsp
	cmpq $-1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz Lbb105
	movq %rax, %r8
	subq $1, %r8
	subq $32, %rsp
	movq %rdx, %rsi
	movl $1, %edx
	movq %rsi, %rcx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str360(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq parsetoml_parsetoml_trim_str(%rip), %rdx
	callq donna_list_map
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	jmp Lbb106
Lbb105:
	subq $32, %rsp
	leaq str354(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb106:
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_parse_section */

.text
.balign 16
parsetoml_parsetoml_parse_kv:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rcx, %rdi
	movq %rdx, %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_string_length
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %r9
	movl $0, %r8d
	movq %rdx, %rbx
	movl $61, %edx
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq parsetoml_parsetoml_find_outside_str
	movq %rbx, %rdx
	movq %rax, %r12
	subq $-32, %rsp
	cmpq $-1, %r12
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb114
	subq $32, %rsp
	movq %r12, %r8
	movq %rdx, %rbx
	movl $0, %edx
	movq %rbx, %rcx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rdx, %rbx
	movq %r12, %rdx
	addq $1, %rdx
	movq %rsi, %rax
	subq %r12, %rax
	movq %rax, %r8
	subq $1, %r8
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_key_str
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb113
	movq 8(%rax), %rbx
	subq $32, %rsp
	callq parsetoml_parsetoml_strip_comment
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_value
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb111
	movq 8(%rax), %rbx
	subq $32, %rsp
	callq donna_list_append
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %r12, (%rcx)
	movq %rbx, 8(%rcx)
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb112
Lbb111:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb112:
	movq %rax, (%rsi)
	jmp Lbb115
Lbb113:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb115
Lbb114:
	subq $32, %rsp
	leaq str374(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb115:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_kv */

.text
.balign 16
parsetoml_parsetoml_parse_key_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str417(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb118
	subq $32, %rsp
	leaq str426(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq parsetoml_parsetoml_trim_str(%rip), %rdx
	callq donna_list_map
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	jmp Lbb119
Lbb118:
	subq $32, %rsp
	leaq str424(%rip), %rcx
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb119:
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_parse_key_str */

.text
.balign 16
parsetoml_parsetoml_parse_value:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb130
	subq $32, %rsp
	movl $0, %edx
	movq %rcx, %rsi
	callq donna_string_char_at
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $34, %rax
	jz Lbb129
	cmpq $39, %rax
	jz Lbb128
	cmpq $91, %rax
	jz Lbb127
	cmpq $123, %rax
	jz Lbb126
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_scalar
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb131
Lbb126:
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_inline_table
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb131
Lbb127:
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_array
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb131
Lbb128:
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_sq_string
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb131
Lbb129:
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_dq_string
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb131
Lbb130:
	subq $32, %rsp
	leaq str437(%rip), %rcx
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb131:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_parse_value */

.text
.balign 16
parsetoml_parsetoml_parse_dq_string:
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
	leaq str462(%rip), %r9
	movl $1, %edx
	callq parsetoml_parsetoml_read_dq
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb134
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_TomlString
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	jmp Lbb135
Lbb134:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb135:
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_parse_dq_string */

.text
.balign 16
parsetoml_parsetoml_read_dq:
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
	movq %r8, %rbx
	movq %rdx, %r13
	movq %rcx, %rdi
	movq %r9, %rcx
	cmpq %rbx, %r13
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb167
	subq $32, %rsp
	movq %r13, %rdx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_string_char_at
	movq %rbx, %r8
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $34, %rax
	jz Lbb166
	cmpq $92, %rax
	setz %al
	movzbq %al, %rax
	movq %r13, %rdx
	addq $1, %rdx
	cmpl $0, %eax
	jnz Lbb140
	subq $32, %rsp
	movq %r8, %r12
	movl $1, %r8d
	movq %rdx, %rbx
	movq %r13, %rdx
	movq %rcx, %r13
	movq %rdi, %rcx
	callq donna_string_slice
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r15
	movq %rcx, %rbx
	callq parsetoml_parsetoml_read_dq
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb168
Lbb140:
	movq %r8, %r15
	movq %r13, %r12
	movq %rdi, %rbx
	cmpq %r15, %rdx
	setge %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb164
	subq $32, %rsp
	movq %rdx, %r14
	movq %rcx, %r13
	movq %rbx, %rcx
	callq donna_string_char_at
	movq %r15, %r8
	movq %r14, %rdx
	movq %r13, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r14
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
	subq $32, %rsp
	movq %r8, %r13
	movl $1, %r8d
	movq %rcx, %r15
	movq %rbx, %rcx
	callq donna_string_slice
	movq %r15, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq %rdx, (%r14)
	jmp Lbb163
Lbb148:
	movq %r8, %r13
	leaq str528(%rip), %rax
	movq %rax, (%r14)
	leaq str528(%rip), %rax
	movq %rax, %rdx
	jmp Lbb163
Lbb151:
	movq %r8, %r13
	leaq str524(%rip), %rax
	movq %rax, (%r14)
	leaq str524(%rip), %rax
	movq %rax, %rdx
	jmp Lbb163
Lbb154:
	movq %r8, %r13
	leaq str520(%rip), %rax
	movq %rax, (%r14)
	leaq str520(%rip), %rax
	movq %rax, %rdx
	jmp Lbb163
Lbb157:
	movq %r8, %r13
	leaq str516(%rip), %rax
	movq %rax, (%r14)
	leaq str516(%rip), %rax
	movq %rax, %rdx
	jmp Lbb163
Lbb160:
	movq %r8, %r13
	leaq str512(%rip), %rax
	movq %rax, (%r14)
	leaq str512(%rip), %rax
	movq %rax, %rdx
Lbb163:
	addq $2, %r12
	subq $32, %rsp
	callq __rt_str_concat
	movq %r13, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_read_dq
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb165
Lbb164:
	subq $32, %rsp
	leaq str503(%rip), %rcx
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb165:
	movq %rax, (%rsi)
	jmp Lbb168
Lbb166:
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb168
Lbb167:
	subq $32, %rsp
	leaq str484(%rip), %rcx
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb168:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %rdi
	popq %rsi
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
parsetoml_parsetoml_parse_sq_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	cmpq $2, %r9
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb173
	subq $32, %rsp
	movl $1, %r8d
	movl $39, %edx
	movq %rcx, %rsi
	callq parsetoml_parsetoml_find_char
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $-1, %rax
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb172
	movq %rax, %r8
	subq $1, %r8
	subq $32, %rsp
	movl $1, %edx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_TomlString
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb174
Lbb172:
	subq $32, %rsp
	leaq str559(%rip), %rcx
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb174
Lbb173:
	subq $32, %rsp
	leaq str549(%rip), %rcx
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb174:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_parse_sq_string */

.text
.balign 16
parsetoml_parsetoml_parse_array:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $2, %r8
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
	leaq str571(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb179
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r9
	movl $0, %edx
	callq parsetoml_parsetoml_parse_arr_elems
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb178
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_TomlArray
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb180
Lbb178:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb180
Lbb179:
	subq $32, %rsp
	leaq donna_nil(%rip), %rcx
	callq parsetoml_parsetoml_TomlArray
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
Lbb180:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_parse_array */

.text
.balign 16
parsetoml_parsetoml_parse_arr_elems:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r9, %rbx
	movq %r8, %r12
	subq $32, %rsp
	movq %r12, %r8
	movq %rcx, %rsi
	callq parsetoml_parsetoml_skip_ws
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	cmpq %r12, %rdx
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb189
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movl $0, %r9d
	movq %r12, %r8
	movq %rdx, %rdi
	movq %rcx, %rsi
	callq parsetoml_parsetoml_scan_elem
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-48, %rsp
	movq (%rax), %r13
	movq 8(%rax), %rdi
	movq %r13, %r8
	subq %rdx, %r8
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_value
	movq %r12, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb188
	movq 8(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdi
	jz Lbb186
	movq %rdx, (%rax)
	movq %rdx, %rdi
	jmp Lbb187
Lbb186:
	movq %rdx, %rdi
	movq %r13, %rdx
	addq $1, %rdx
	movq %rdx, (%rax)
Lbb187:
	movq %rdx, %r14
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	movq $1, (%r9)
	movq %r12, 8(%r9)
	movq %rbx, 16(%r9)
	subq $32, %rsp
	movq %rdi, %r8
	callq parsetoml_parsetoml_parse_arr_elems
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb191
Lbb188:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb191
Lbb189:
	movq %rbx, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
Lbb191:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_arr_elems */

.text
.balign 16
parsetoml_parsetoml_parse_inline_table:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $2, %r8
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
	leaq str643(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb196
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r9
	movl $0, %edx
	callq parsetoml_parsetoml_parse_inline_pairs
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb195
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_TomlTable
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb197
Lbb195:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb197
Lbb196:
	subq $32, %rsp
	leaq donna_nil(%rip), %rcx
	callq parsetoml_parsetoml_TomlTable
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
Lbb197:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_parse_inline_table */

.text
.balign 16
parsetoml_parsetoml_parse_inline_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %r9, %r12
	movq %r8, %r14
	subq $32, %rsp
	movq %r14, %r8
	movq %rcx, %rsi
	callq parsetoml_parsetoml_skip_ws
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	cmpq %r14, %rdx
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb209
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movl $0, %r9d
	movq %r14, %r8
	movq %rdx, %rdi
	movq %rcx, %rsi
	callq parsetoml_parsetoml_scan_elem
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-48, %rsp
	movq (%rax), %r13
	movq 8(%rax), %rbx
	movq %rbx, -16(%rbp)
	movq %r13, %r8
	subq %rdx, %r8
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_string_length
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, -24(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rax, %r9
	movl $0, %r8d
	movq %rdx, %rdi
	movl $61, %edx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq parsetoml_parsetoml_find_outside_str
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	cmpq $-1, %rdi
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb208
	subq $32, %rsp
	movq %rdi, %r8
	movq %rdx, %r15
	movl $0, %edx
	movq %rcx, %rbx
	movq %r15, %rcx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %r15, %rdx
	movq %rbx, %rcx
	movq %rax, -32(%rbp)
	movq -24(%rbp), %rax
	movq -16(%rbp), %rbx
	subq $-32, %rsp
	movq %rdx, %r15
	movq %rdi, %rdx
	addq $1, %rdx
	subq %rdi, %rax
	movq %rax, %r8
	subq $1, %r8
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r15, %rcx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_value
	movq %r14, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb206
	movq 8(%rax), %r14
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rbx
	jz Lbb204
	movq %rdx, (%rax)
	movq %rdx, %rbx
	jmp Lbb205
Lbb204:
	movq %rdx, %rbx
	movq %r13, %rdx
	addq $1, %rdx
	movq %rdx, (%rax)
Lbb205:
	movq %rdx, %r15
	subq $32, %rsp
	movq %rcx, %r13
	movl $16, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq -32(%rbp), %rax
	subq $-32, %rsp
	movq %rax, (%r13)
	movq %r14, 8(%r13)
	subq $32, %rsp
	movq %rcx, %r14
	movl $24, %ecx
	callq malloc
	movq %r15, %rdx
	movq %r14, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	movq $1, (%r9)
	movq %r13, 8(%r9)
	movq %r12, 16(%r9)
	subq $32, %rsp
	movq %rbx, %r8
	callq parsetoml_parsetoml_parse_inline_pairs
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb207
Lbb206:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb207:
	movq %rax, (%rsi)
	jmp Lbb211
Lbb208:
	subq $32, %rsp
	leaq str695(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb211
Lbb209:
	movq %r12, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
Lbb211:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %rdi
	popq %rsi
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
parsetoml_parsetoml_parse_scalar:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str734(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb216
	subq $32, %rsp
	leaq str743(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb215
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_int
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb217
Lbb215:
	subq $32, %rsp
	movl $0, %ecx
	callq parsetoml_parsetoml_TomlBool
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb217
Lbb216:
	subq $32, %rsp
	movl $1, %ecx
	callq parsetoml_parsetoml_TomlBool
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
Lbb217:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_parse_scalar */

.text
.balign 16
parsetoml_parsetoml_parse_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_string_length
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	cmpq $0, %rsi
	jz Lbb235
	subq $32, %rsp
	movq %rdx, %rbx
	movl $0, %edx
	movq %rbx, %rcx
	callq donna_string_char_at
	movq %rsi, %r8
	subq $-32, %rsp
	cmpq $45, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %r12
	jz Lbb222
	movq $0, (%rax)
	movl $0, %edx
	jmp Lbb224
Lbb222:
	movq $1, (%rax)
	movl $1, %edx
Lbb224:
	cmpq %r8, %rdx
	setge %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb233
	subq $32, %rsp
	movq %r8, %r13
	movq %rdx, %rdi
	movq %rbx, %rcx
	callq parsetoml_parsetoml_all_digits
	movq %r13, %r8
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rax
	jz Lbb230
	subq $32, %rsp
	movl $0, %r9d
	movq %rbx, %rcx
	callq parsetoml_parsetoml_parse_digits
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %r12
	jz Lbb228
	subq $32, %rsp
	movq %rax, %rcx
	callq parsetoml_parsetoml_TomlInt
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb229
Lbb228:
	movl $0, %ecx
	subq %rax, %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_TomlInt
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Ok
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb229:
	movq %rax, (%rdi)
	jmp Lbb232
Lbb230:
	movq %rbx, %rdx
	subq $32, %rsp
	leaq str786(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb232:
	movq %rax, (%rsi)
	jmp Lbb236
Lbb233:
	movq %rbx, %rdx
	subq $32, %rsp
	leaq str777(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb236
Lbb235:
	subq $32, %rsp
	leaq str761(%rip), %rcx
	callq parsetoml_parsetoml_Err
	subq $-32, %rsp
Lbb236:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_int */

.text
.balign 16
parsetoml_parsetoml_build_table:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq parsetoml_parsetoml_fold_entries
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_TomlTable
	subq $-32, %rsp
	leave
	ret
/* end function parsetoml_parsetoml_build_table */

.text
.balign 16
parsetoml_parsetoml_fold_entries:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb241
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	movq (%rsi), %rdx
	movq 8(%rsi), %r8
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq parsetoml_parsetoml_set_nested
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_fold_entries
	subq $-32, %rsp
Lbb241:
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_fold_entries */

.text
.balign 16
parsetoml_parsetoml_set_nested:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r8, %r12
	movq %rcx, %rax
	movq (%rdx), %rcx
	cmpq $0, %rcx
	jz Lbb256
	cmpq $1, %rcx
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %esi
	jnz Lbb246
	movq $0, (%rcx)
	movq %rax, %rsi
	movl $0, %eax
	jmp Lbb247
Lbb246:
	movq 16(%rdx), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	movq %rax, %rsi
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb247:
	cmpl $0, %eax
	jnz Lbb254
	movq 8(%rdx), %rdi
	movq 16(%rdx), %rdx
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rdi, %rdx
	movq %rsi, %rcx
	callq parsetoml_parsetoml_get_sub_pairs
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %r9
	cmpq $1, %r9
	jz Lbb251
	movq 8(%rcx), %rcx
	movq %rcx, (%rsi)
	movq %rax, %rsi
	jmp Lbb253
Lbb251:
	leaq donna_nil(%rip), %rcx
	movq %rcx, (%rsi)
	movq %rax, %rsi
	leaq donna_nil(%rip), %rax
	movq %rax, %rcx
Lbb253:
	subq $32, %rsp
	callq parsetoml_parsetoml_set_nested
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_TomlTable
	movq %rdi, %rdx
	movq %rax, %r8
	movq %rsi, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %rax, %rcx
	callq parsetoml_parsetoml_upsert
	subq $-32, %rsp
	jmp Lbb256
Lbb254:
	movq %r12, %r8
	movq %rsi, %rax
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rax, %rcx
	callq parsetoml_parsetoml_upsert
	subq $-32, %rsp
Lbb256:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_set_nested */

.text
.balign 16
parsetoml_parsetoml_upsert:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %r9
	callq parsetoml_parsetoml_upsert_loop
	subq $-32, %rsp
	leave
	ret
/* end function parsetoml_parsetoml_upsert */

.text
.balign 16
parsetoml_parsetoml_upsert_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r9, %rbx
	movq %r8, %r14
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb264
	movq 8(%rcx), %r12
	movq 16(%rcx), %rdi
	movq (%r12), %rcx
	subq $32, %rsp
	movq %rdx, %r13
	callq donna_string_equal
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb262
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %r14, %r8
	movq %r13, %rdx
	movq %rax, %r9
	subq $-32, %rsp
	movq $1, (%r9)
	movq %r12, 8(%r9)
	movq %rbx, 16(%r9)
	subq $32, %rsp
	movq %r8, %r13
	movq %rdx, %r12
	movq %rdi, %rcx
	callq parsetoml_parsetoml_upsert_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb266
Lbb262:
	movq %rbx, %r9
	movq %r13, %r12
	movq %r14, %r13
	subq $32, %rsp
	movq %r9, %rcx
	callq donna_list_reverse
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $16, %ecx
	callq malloc
	movq %r13, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rdx, (%rbx)
	movq %r8, 8(%rbx)
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
	callq donna_list_append
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb266
Lbb264:
	movq %rbx, %rdi
	movq %r14, %rbx
	movq %rdx, %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rbx, %r8
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rdx, (%rsi)
	movq %r8, 8(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rdi, %r9
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rsi, 8(%rcx)
	movq %r9, 16(%rcx)
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb266:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_upsert_loop */

.text
.balign 16
parsetoml_parsetoml_get_sub_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb274
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	movq 8(%rax), %rbx
	subq $32, %rsp
	movq %rdx, %rdi
	callq donna_string_equal
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb270
	subq $32, %rsp
	callq parsetoml_parsetoml_get_sub_pairs
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb275
Lbb270:
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rbx), %rax
	cmpq $4, %rax
	jz Lbb272
	leaq parsetoml_parsetoml_NoPairs(%rip), %rax
	movq %rax, (%rdi)
	leaq parsetoml_parsetoml_NoPairs(%rip), %rax
	jmp Lbb273
Lbb272:
	movq 8(%rbx), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_GotPairs
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb273:
	movq %rax, (%rsi)
	jmp Lbb275
Lbb274:
	leaq parsetoml_parsetoml_NoPairs(%rip), %rax
Lbb275:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_get_sub_pairs */

.text
.balign 16
parsetoml_parsetoml_table_lookup:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $4, %rax
	jz Lbb278
	leaq parsetoml_parsetoml_NotFound(%rip), %rax
	jmp Lbb279
Lbb278:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_lookup_pairs
	subq $-32, %rsp
Lbb279:
	leave
	ret
/* end function parsetoml_parsetoml_table_lookup */

.text
.balign 16
parsetoml_parsetoml_lookup_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb285
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	movq %rdx, %rbx
	callq donna_string_equal
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb283
	subq $32, %rsp
	callq parsetoml_parsetoml_lookup_pairs
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb286
Lbb283:
	movq %rdi, %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_Found
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb286
Lbb285:
	leaq parsetoml_parsetoml_NotFound(%rip), %rax
Lbb286:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_lookup_pairs */

.text
.balign 16
parsetoml_parsetoml_trim_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_string_trim
	subq $-32, %rsp
	leave
	ret
/* end function parsetoml_parsetoml_trim_str */

.text
.balign 16
parsetoml_parsetoml_skip_ws:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq %rdx, %rax
	cmpq %rbx, %rax
	movq %rax, %rsi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb293
	subq $32, %rsp
	movq %rsi, %rdx
	movq %rcx, %rdi
	callq donna_string_char_at
	movq %rbx, %r8
	movq %rdi, %rcx
	xchgq %rax, %rsi
	subq $-32, %rsp
	cmpq $32, %rsi
	setz %dl
	movzbq %dl, %rdx
	cmpq $9, %rsi
	setz %dil
	movzbq %dil, %rdi
	orq %rdi, %rdx
	cmpq $13, %rsi
	setz %sil
	movzbq %sil, %rsi
	orq %rsi, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb292
	movq %rax, (%rsi)
	jmp Lbb294
Lbb292:
	movq %rax, %rdx
	addq $1, %rdx
	subq $32, %rsp
	callq parsetoml_parsetoml_skip_ws
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb294
Lbb293:
	movq %rsi, %rax
Lbb294:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_skip_ws */

.text
.balign 16
parsetoml_parsetoml_find_outside_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	leave
	ret
/* end function parsetoml_parsetoml_find_outside_str */

.text
.balign 16
parsetoml_parsetoml_fos_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq 48(%rbp), %rbx
	movq %r9, %r13
	movq %r8, %rax
	cmpq %r13, %rax
	movq %rax, %rsi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb316
	subq $32, %rsp
	movq %rdx, %r12
	movq %rsi, %rdx
	movq %rcx, %rdi
	callq donna_string_char_at
	movq %r13, %r9
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, %r10
	movq %rsi, %rax
	subq $-32, %rsp
	cmpq $0, %rbx
	setnz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	setz %dil
	movzbq %dil, %rdi
	movq %rax, %r8
	addq $1, %r8
	cmpl $0, %edi
	jnz Lbb308
	cmpq %r10, %rdx
	setz %r11b
	movzbq %r11b, %r11
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %r11
	jz Lbb306
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $34, %r10
	jz Lbb304
	cmpq $39, %r10
	jz Lbb303
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb305
Lbb303:
	subq $48, %rsp
	movq %rsp, %rax
	movq $39, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb305
Lbb304:
	subq $48, %rsp
	movq %rsp, %rax
	movq $34, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	movq %rax, (%rbx)
Lbb305:
	movq %rax, (%rdi)
	jmp Lbb307
Lbb306:
	movq %rax, (%rdi)
Lbb307:
	movq %rax, (%rsi)
	jmp Lbb317
Lbb308:
	cmpq $92, %r10
	setz %dil
	movzbq %dil, %rdi
	cmpq $34, %rbx
	setz %r11b
	movzbq %r11b, %r11
	andq %rdi, %r11
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %r11
	jz Lbb314
	movq %r10, %rax
	cmpq %rax, %rbx
	setz %al
	movzbq %al, %rax
	movq %rbx, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb312
	subq $48, %rsp
	movq %rsp, %rax
	movq %r12, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb313
Lbb312:
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	movq %rax, (%rbx)
Lbb313:
	movq %rax, (%rdi)
	jmp Lbb315
Lbb314:
	movq %rax, %r8
	addq $2, %r8
	subq $48, %rsp
	movq %rsp, %rax
	movq %rbx, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	movq %rax, (%rdi)
Lbb315:
	movq %rax, (%rsi)
	jmp Lbb317
Lbb316:
	movq $-1, %rax
Lbb317:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_fos_loop */

.text
.balign 16
parsetoml_parsetoml_find_char:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %r12
	movq %r8, %rax
	cmpq %r12, %rax
	movq %rax, %rsi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb322
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rsi, %rdx
	movq %rcx, %rdi
	callq donna_string_char_at
	movq %r12, %r9
	movq %rbx, %rdx
	movq %rdi, %rcx
	xchgq %rax, %rsi
	subq $-32, %rsp
	cmpq %rsi, %rdx
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb321
	movq %rax, %r8
	addq $1, %r8
	subq $32, %rsp
	callq parsetoml_parsetoml_find_char
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb323
Lbb321:
	movq %rax, (%rsi)
	jmp Lbb323
Lbb322:
	movq $-1, %rax
Lbb323:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_find_char */

.text
.balign 16
parsetoml_parsetoml_scan_elem:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq 48(%rbp), %rbx
	movq %r9, %r12
	movq %r8, %rsi
	movq %rdx, %r13
	cmpq %rsi, %r13
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb358
	subq $32, %rsp
	movq %r13, %rdx
	movq %rcx, %rdi
	callq donna_string_char_at
	movq %r12, %r9
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rbx
	setnz %dl
	movzbq %dl, %rdx
	movq %rsi, %r12
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	movq %r13, %rdx
	addq $1, %rdx
	cmpl $0, %edi
	jnz Lbb349
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $34, %rax
	jz Lbb347
	cmpq $39, %rax
	jz Lbb346
	cmpq $91, %rax
	setz %r10b
	movzbq %r10b, %r10
	movq %r9, %r8
	addq $1, %r8
	cmpl $0, %r10d
	jnz Lbb344
	cmpq $123, %rax
	jz Lbb342
	cmpq $93, %rax
	setz %r10b
	movzbq %r10b, %r10
	movq %r9, %r8
	subq $1, %r8
	cmpl $0, %r10d
	jnz Lbb340
	cmpq $125, %rax
	jz Lbb338
	cmpq $44, %rax
	jz Lbb334
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb348
Lbb334:
	cmpq $0, %r9
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb336
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb337
Lbb336:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %r13, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rbx)
Lbb337:
	movq %rax, (%rdi)
	jmp Lbb348
Lbb338:
	movq %r8, %r9
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb348
Lbb340:
	movq %r8, %r9
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb348
Lbb342:
	movq %r8, %r9
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb348
Lbb344:
	movq %r8, %r9
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb348
Lbb346:
	subq $48, %rsp
	movq %rsp, %rax
	movq $39, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb348
Lbb347:
	subq $48, %rsp
	movq %rsp, %rax
	movq $34, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
Lbb348:
	movq %rax, (%rsi)
	jmp Lbb359
Lbb349:
	cmpq $92, %rax
	setz %dil
	movzbq %dil, %rdi
	cmpq $34, %rbx
	setz %r8b
	movzbq %r8b, %r8
	andq %rdi, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %r8
	jz Lbb355
	movq %rbx, %r13
	cmpq %rax, %r13
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb353
	subq $48, %rsp
	movq %rsp, %rax
	movq %r13, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb354
Lbb353:
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rbx)
Lbb354:
	movq %rax, (%rdi)
	jmp Lbb357
Lbb355:
	xchgq %rbx, %r12
	movq %r13, %rdx
	addq $2, %rdx
	subq $48, %rsp
	movq %rsp, %rax
	movq %r12, 32(%rax)
	movq %rbx, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
Lbb357:
	movq %rax, (%rsi)
	jmp Lbb359
Lbb358:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rsi, (%rax)
	movq $0, 8(%rax)
Lbb359:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_scan_elem */

.text
.balign 16
parsetoml_parsetoml_strip_comment:
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
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function parsetoml_parsetoml_strip_comment */

.text
.balign 16
parsetoml_parsetoml_sc_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %r12
	movq %r8, %rbx
	movq %rcx, %rax
	cmpq %rbx, %rdx
	movq %rax, %rsi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb385
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rsi, %rcx
	callq donna_string_char_at
	movq %r12, %r9
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	cmpq $0, %r9
	setnz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	setz %r10b
	movzbq %r10b, %r10
	movq %rdx, %rdi
	addq $1, %rdi
	cmpl $0, %r10d
	jnz Lbb376
	movq %rcx, %r9
	movq %rdi, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $34, %r9
	jz Lbb373
	cmpq $39, %r9
	jz Lbb371
	cmpq $35, %r9
	jz Lbb370
	movq %rcx, %rdx
	subq $32, %rsp
	movl $0, %r9d
	movq %rax, %rcx
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb375
Lbb370:
	subq $32, %rsp
	movq %rdx, %r8
	movl $0, %edx
	movq %rax, %rcx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb375
Lbb371:
	movq %rcx, %rdx
	subq $32, %rsp
	movl $39, %r9d
	movq %rax, %rcx
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb375
Lbb373:
	movq %rcx, %rdx
	subq $32, %rsp
	movl $34, %r9d
	movq %rdx, %r10
	movq %rax, %rcx
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb375:
	movq %rax, (%rsi)
	jmp Lbb386
Lbb376:
	movq %rdi, %r10
	cmpq $92, %rcx
	setz %dil
	movzbq %dil, %rdi
	cmpq $34, %r9
	setz %r11b
	movzbq %r11b, %r11
	andq %rdi, %r11
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %r11
	jz Lbb383
	movq %r10, %rdx
	cmpq %rcx, %r9
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb381
	subq $32, %rsp
	movq %rax, %rcx
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb382
Lbb381:
	subq $32, %rsp
	movl $0, %r9d
	movq %rax, %rcx
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb382:
	movq %rax, (%rdi)
	jmp Lbb384
Lbb383:
	addq $2, %rdx
	subq $32, %rsp
	movq %rax, %rcx
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb384:
	movq %rax, (%rsi)
	jmp Lbb386
Lbb385:
	movq %rsi, %rax
Lbb386:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_sc_loop */

.text
.balign 16
parsetoml_parsetoml_all_digits:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	cmpq %rbx, %rdx
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb392
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rcx, %rsi
	callq donna_string_char_at
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	cmpq $48, %rsi
	setge %al
	movzbq %al, %rax
	cmpq $57, %rsi
	setle %sil
	movzbq %sil, %rsi
	andq %rsi, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb391
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb393
Lbb391:
	addq $1, %rdx
	subq $32, %rsp
	callq parsetoml_parsetoml_all_digits
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb393
Lbb392:
	movl $1, %eax
Lbb393:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_all_digits */

.text
.balign 16
parsetoml_parsetoml_parse_digits:
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
	jz Lbb399
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
	jz Lbb398
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb400
Lbb398:
	addq $1, %rdx
	imulq $10, %rdi, %rdi
	addq %rdi, %rax
	movq %rax, %r9
	subq $48, %r9
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_digits
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb400
Lbb399:
	movq %rdi, %rax
Lbb400:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function parsetoml_parsetoml_parse_digits */

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

