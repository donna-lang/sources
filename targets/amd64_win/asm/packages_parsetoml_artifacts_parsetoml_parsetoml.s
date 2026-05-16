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
str45:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str47:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str63:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str65:
	.ascii "' is not a string"
	.byte 0
/* end data */

.data
.balign 8
str78:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str80:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str96:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str98:
	.ascii "' is not an integer"
	.byte 0
/* end data */

.data
.balign 8
str111:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str113:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str129:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str131:
	.ascii "' is not a boolean"
	.byte 0
/* end data */

.data
.balign 8
str144:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str146:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str162:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str164:
	.ascii "' is not a table"
	.byte 0
/* end data */

.data
.balign 8
str177:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str179:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str195:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str197:
	.ascii "' is not an array"
	.byte 0
/* end data */

.data
.balign 8
str226:
	.ascii "__err:"
	.byte 0
/* end data */

.data
.balign 8
str281:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str308:
	.ascii "[["
	.byte 0
/* end data */

.data
.balign 8
str318:
	.ascii "["
	.byte 0
/* end data */

.data
.balign 8
str361:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str363:
	.ascii "#"
	.byte 0
/* end data */

.data
.balign 8
str375:
	.ascii "unclosed '[' in: "
	.byte 0
/* end data */

.data
.balign 8
str382:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str397:
	.ascii "expected '=' in: "
	.byte 0
/* end data */

.data
.balign 8
str444:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str451:
	.ascii "empty key"
	.byte 0
/* end data */

.data
.balign 8
str454:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str466:
	.ascii "empty value"
	.byte 0
/* end data */

.data
.balign 8
str492:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str517:
	.ascii "unterminated string"
	.byte 0
/* end data */

.data
.balign 8
str538:
	.ascii "unexpected end after "
	.byte 92
	.byte 0
/* end data */

.data
.balign 8
str548:
	.byte 34
	.byte 0
/* end data */

.data
.balign 8
str552:
	.byte 92
	.byte 0
/* end data */

.data
.balign 8
str556:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str560:
	.byte 9
	.byte 0
/* end data */

.data
.balign 8
str564:
	.byte 13
	.byte 0
/* end data */

.data
.balign 8
str585:
	.ascii "unterminated literal string"
	.byte 0
/* end data */

.data
.balign 8
str596:
	.ascii "unterminated literal string"
	.byte 0
/* end data */

.data
.balign 8
str611:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str690:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str748:
	.ascii "expected '=' in pair: "
	.byte 0
/* end data */

.data
.balign 8
str789:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
str800:
	.ascii "false"
	.byte 0
/* end data */

.data
.balign 8
str820:
	.ascii "empty integer"
	.byte 0
/* end data */

.data
.balign 8
str837:
	.ascii "invalid integer: "
	.byte 0
/* end data */

.data
.balign 8
str847:
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
	subq $8, %rsp
	pushq %rsi
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
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb21
Lbb20:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb21:
	popq %rsi
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
	pushq %rsi
	pushq %rdi
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
	leaq str63(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str65(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb27
Lbb25:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb27
Lbb26:
	subq $32, %rsp
	leaq str45(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str47(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb27:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
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
	pushq %rsi
	pushq %rdi
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
	leaq str96(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str98(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb33
Lbb31:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb33
Lbb32:
	subq $32, %rsp
	leaq str78(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str80(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb33:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
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
	pushq %rsi
	pushq %rdi
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
	leaq str129(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str131(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb39
Lbb37:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb39
Lbb38:
	subq $32, %rsp
	leaq str111(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str113(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb39:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
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
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rdx, %rsi
	callq parsetoml_parsetoml_table_lookup
	movq %rsi, %rdx
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb44
	movq 8(%rax), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdi), %rax
	cmpq $4, %rax
	jz Lbb43
	subq $32, %rsp
	leaq str162(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str164(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb45
Lbb43:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb45
Lbb44:
	subq $32, %rsp
	leaq str144(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str146(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb45:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
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
	pushq %rsi
	pushq %rdi
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
	leaq str195(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str197(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb51
Lbb49:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb51
Lbb50:
	subq $32, %rsp
	leaq str177(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str179(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb51:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
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
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $4, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
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
	leaq str226(%rip), %rcx
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
	leaq str281(%rip), %rax
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
	movq %r8, %r12
	movq %rdx, %rbx
	movq %rcx, %rax
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
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb79
	subq $32, %rsp
	movq %r8, %r9
	movq %rdx, %r8
	movq %rdi, %rdx
	callq parsetoml_parsetoml_process_line
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb83
Lbb79:
	movq %rdi, %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_doc
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb83
Lbb81:
	movq %r12, %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rsi, %r8
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r8, 8(%rax)
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
	leaq str308(%rip), %rdx
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
	leaq str318(%rip), %rdx
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
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
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
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
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
	leaq str361(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str363(%rip), %rdx
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
	leaq str382(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq parsetoml_parsetoml_trim_str(%rip), %rdx
	callq donna_list_map
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb106
Lbb105:
	subq $32, %rsp
	leaq str375(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
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
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
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
	movq 8(%rax), %r12
	subq $32, %rsp
	callq donna_list_append
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r13, (%rbx)
	movq %r12, 8(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb112
Lbb111:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb112:
	movq %rax, (%rsi)
	jmp Lbb115
Lbb113:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb115
Lbb114:
	subq $32, %rsp
	leaq str397(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb115:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
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
	leaq str444(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb118
	subq $32, %rsp
	leaq str454(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq parsetoml_parsetoml_trim_str(%rip), %rdx
	callq donna_list_map
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb119
Lbb118:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str451(%rip), %rcx
	movq %rcx, 8(%rax)
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
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str466(%rip), %rcx
	movq %rcx, 8(%rax)
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
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	leaq str492(%rip), %r9
	movl $1, %edx
	callq parsetoml_parsetoml_read_dq
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb134
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $0, (%rsi)
	movq %rdi, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb135
Lbb134:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb135:
	popq %rdi
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
	movq %r9, %r15
	movq %r8, %rbx
	movq %rdx, %rdi
	cmpq %rbx, %rdi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb168
	subq $32, %rsp
	movq %rdi, %rdx
	movq %rcx, %rsi
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
	movq %rdi, %rdx
	addq $1, %rdx
	cmpl $0, %eax
	jnz Lbb140
	subq $32, %rsp
	movq %r8, %r12
	movl $1, %r8d
	movq %rdx, %rbx
	movq %rdi, %rdx
	movq %rcx, %rdi
	callq donna_string_slice
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r15, %rcx
	callq __rt_str_concat
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r14
	callq parsetoml_parsetoml_read_dq
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb169
Lbb140:
	movq %r8, %r14
	movq %rdi, %rbx
	cmpq %r14, %rdx
	setge %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb164
	subq $32, %rsp
	movq %rdx, %r13
	movq %rcx, %r12
	callq donna_string_char_at
	movq %r14, %r8
	movq %r13, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
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
	subq $32, %rsp
	movq %r8, %r13
	movl $1, %r8d
	movq %rcx, %r14
	callq donna_string_slice
	movq %r15, %r9
	movq %r14, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq %rdx, (%r12)
	jmp Lbb163
Lbb148:
	movq %r15, %r9
	movq %r8, %r13
	leaq str564(%rip), %rax
	movq %rax, (%r12)
	leaq str564(%rip), %rax
	movq %rax, %rdx
	jmp Lbb163
Lbb151:
	movq %r15, %r9
	movq %r8, %r13
	leaq str560(%rip), %rax
	movq %rax, (%r12)
	leaq str560(%rip), %rax
	movq %rax, %rdx
	jmp Lbb163
Lbb154:
	movq %r15, %r9
	movq %r8, %r13
	leaq str556(%rip), %rax
	movq %rax, (%r12)
	leaq str556(%rip), %rax
	movq %rax, %rdx
	jmp Lbb163
Lbb157:
	movq %r15, %r9
	movq %r8, %r13
	leaq str552(%rip), %rax
	movq %rax, (%r12)
	leaq str552(%rip), %rax
	movq %rax, %rdx
	jmp Lbb163
Lbb160:
	movq %r15, %r9
	movq %r8, %r13
	leaq str548(%rip), %rax
	movq %rax, (%r12)
	leaq str548(%rip), %rax
	movq %rax, %rdx
Lbb163:
	movq %rbx, %r12
	addq $2, %r12
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r9, %rcx
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
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str538(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rdi)
Lbb165:
	movq %rax, (%rsi)
	jmp Lbb169
Lbb166:
	movq %r15, %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %r9
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r9, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb169
Lbb168:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str517(%rip), %rcx
	movq %rcx, 8(%rax)
Lbb169:
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
	pushq %rbx
	pushq %rsi
	pushq %rdi
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
	jz Lbb174
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
	jz Lbb173
	movq %rax, %r8
	subq $1, %r8
	subq $32, %rsp
	movl $1, %edx
	callq donna_string_slice
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $0, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb175
Lbb173:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str596(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb175
Lbb174:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str585(%rip), %rcx
	movq %rcx, 8(%rax)
Lbb175:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
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
	pushq %rbx
	pushq %rsi
	pushq %rdi
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
	leaq str611(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb180
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
	jnz Lbb179
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $3, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb181
Lbb179:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb181
Lbb180:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $3, (%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb181:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
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
	jz Lbb190
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
	jnz Lbb189
	movq 8(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdi
	jz Lbb187
	movq %rdx, (%rax)
	movq %rdx, %rdi
	jmp Lbb188
Lbb187:
	movq %rdx, %rdi
	movq %r13, %rdx
	addq $1, %rdx
	movq %rdx, (%rax)
Lbb188:
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
	jmp Lbb192
Lbb189:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb192
Lbb190:
	movq %rbx, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb192:
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
	pushq %rbx
	pushq %rsi
	pushq %rdi
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
	leaq str690(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb197
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
	jnz Lbb196
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $4, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb198
Lbb196:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb198
Lbb197:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $4, (%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb198:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
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
	movq %r8, %r15
	subq $32, %rsp
	movq %r15, %r8
	movq %rcx, %rsi
	callq parsetoml_parsetoml_skip_ws
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	cmpq %r15, %rdx
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb210
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movl $0, %r9d
	movq %r15, %r8
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
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %r9
	movl $0, %r8d
	movq %rdx, %rbx
	movl $61, %edx
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq parsetoml_parsetoml_find_outside_str
	movq %rbx, %rdx
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	cmpq $-1, %r8
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rsi, -24(%rbp)
	cmpq $1, %rax
	jz Lbb209
	subq $32, %rsp
	movq %r8, %r14
	movq %rdx, %rbx
	movl $0, %edx
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %r14, %r8
	movq %rbx, %rdx
	movq %rsi, %rcx
	movq %rax, %r14
	movq -24(%rbp), %rsi
	movq -16(%rbp), %rbx
	subq $-32, %rsp
	movq %rdx, %rax
	movq %r8, %rdx
	addq $1, %rdx
	subq %r8, %rdi
	movq %rdi, %r8
	subq $1, %r8
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_value
	movq %r15, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb207
	movq 8(%rax), %rax
	movq %rax, -32(%rbp)
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rbx
	jz Lbb205
	movq %rdx, (%rax)
	movq %rdx, %rbx
	jmp Lbb206
Lbb205:
	movq %rdx, %rbx
	movq %r13, %rdx
	addq $1, %rdx
	movq %rdx, (%rax)
Lbb206:
	movq %rdx, %r15
	subq $32, %rsp
	movq %rcx, %r13
	movl $16, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq -32(%rbp), %rax
	subq $-32, %rsp
	movq %r14, (%r13)
	movq %rax, 8(%r13)
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
	jmp Lbb208
Lbb207:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb208:
	movq %rax, (%rsi)
	jmp Lbb212
Lbb209:
	subq $32, %rsp
	leaq str748(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb212
Lbb210:
	movq %r12, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb212:
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
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str789(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb217
	subq $32, %rsp
	leaq str800(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb216
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_int
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb218
Lbb216:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $2, (%rdi)
	movq $0, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb218
Lbb217:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $2, (%rsi)
	movq $1, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb218:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
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
	jz Lbb237
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
	jz Lbb223
	movq $0, (%rax)
	movl $0, %edx
	jmp Lbb225
Lbb223:
	movq $1, (%rax)
	movl $1, %edx
Lbb225:
	cmpq %r8, %rdx
	setge %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb235
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
	jz Lbb232
	subq $32, %rsp
	movl $0, %r9d
	movq %rbx, %rcx
	callq parsetoml_parsetoml_parse_digits
	movq %rax, %r13
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %r12
	jz Lbb229
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %r13, 8(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb231
Lbb229:
	movq %r13, %r12
	movl $0, %r13d
	subq %r12, %r13
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %r13, 8(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb231:
	movq %rax, (%rdi)
	jmp Lbb234
Lbb232:
	movq %rbx, %rdx
	subq $32, %rsp
	leaq str847(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb234:
	movq %rax, (%rsi)
	jmp Lbb238
Lbb235:
	movq %rbx, %rdx
	subq $32, %rsp
	leaq str837(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb238
Lbb237:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str820(%rip), %rcx
	movq %rcx, 8(%rax)
Lbb238:
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
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq parsetoml_parsetoml_fold_entries
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $4, (%rax)
	movq %rsi, 8(%rax)
	popq %rsi
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
	jz Lbb243
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
Lbb243:
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
	jz Lbb258
	cmpq $1, %rcx
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %esi
	jnz Lbb248
	movq $0, (%rcx)
	movq %rax, %rsi
	movl $0, %eax
	jmp Lbb249
Lbb248:
	movq 16(%rdx), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	movq %rax, %rsi
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb249:
	cmpl $0, %eax
	jnz Lbb256
	movq 8(%rdx), %rbx
	movq 16(%rdx), %rdx
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rbx, %rdx
	movq %rsi, %rcx
	callq parsetoml_parsetoml_get_sub_pairs
	movq %r12, %r8
	movq %rdi, %rdx
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdi
	cmpq $1, %rdi
	jz Lbb253
	movq 8(%rcx), %rcx
	movq %rcx, (%rsi)
	movq %rax, %rdi
	jmp Lbb255
Lbb253:
	leaq donna_nil(%rip), %rcx
	movq %rcx, (%rsi)
	movq %rax, %rdi
	leaq donna_nil(%rip), %rax
	movq %rax, %rcx
Lbb255:
	subq $32, %rsp
	callq parsetoml_parsetoml_set_nested
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %r8
	movq %rdi, %rax
	subq $-32, %rsp
	movq $4, (%r8)
	movq %rsi, 8(%r8)
	subq $32, %rsp
	movq %rax, %rcx
	callq parsetoml_parsetoml_upsert
	subq $-32, %rsp
	jmp Lbb258
Lbb256:
	movq %r12, %r8
	movq %rsi, %rax
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rax, %rcx
	callq parsetoml_parsetoml_upsert
	subq $-32, %rsp
Lbb258:
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
	jz Lbb266
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
	jz Lbb264
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
	jmp Lbb268
Lbb264:
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
	jmp Lbb268
Lbb266:
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
Lbb268:
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
	jz Lbb276
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
	jz Lbb272
	subq $32, %rsp
	callq parsetoml_parsetoml_get_sub_pairs
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb277
Lbb272:
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rbx), %rax
	cmpq $4, %rax
	jz Lbb274
	leaq parsetoml_parsetoml_NoPairs(%rip), %rax
	movq %rax, (%rdi)
	leaq parsetoml_parsetoml_NoPairs(%rip), %rax
	jmp Lbb275
Lbb274:
	movq 8(%rbx), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb275:
	movq %rax, (%rsi)
	jmp Lbb277
Lbb276:
	leaq parsetoml_parsetoml_NoPairs(%rip), %rax
Lbb277:
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
	jz Lbb280
	leaq parsetoml_parsetoml_NotFound(%rip), %rax
	jmp Lbb281
Lbb280:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq parsetoml_parsetoml_lookup_pairs
	subq $-32, %rsp
Lbb281:
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
	jz Lbb286
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
	jz Lbb285
	subq $32, %rsp
	callq parsetoml_parsetoml_lookup_pairs
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb287
Lbb285:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb287
Lbb286:
	leaq parsetoml_parsetoml_NotFound(%rip), %rax
Lbb287:
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
	jz Lbb294
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
	jz Lbb293
	movq %rax, (%rsi)
	jmp Lbb295
Lbb293:
	movq %rax, %rdx
	addq $1, %rdx
	subq $32, %rsp
	callq parsetoml_parsetoml_skip_ws
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb295
Lbb294:
	movq %rsi, %rax
Lbb295:
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
	jz Lbb317
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
	jnz Lbb309
	cmpq %r10, %rdx
	setz %r11b
	movzbq %r11b, %r11
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %r11
	jz Lbb307
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $34, %r10
	jz Lbb305
	cmpq $39, %r10
	jz Lbb304
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb306
Lbb304:
	subq $48, %rsp
	movq %rsp, %rax
	movq $39, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb306
Lbb305:
	subq $48, %rsp
	movq %rsp, %rax
	movq $34, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	movq %rax, (%rbx)
Lbb306:
	movq %rax, (%rdi)
	jmp Lbb308
Lbb307:
	movq %rax, (%rdi)
Lbb308:
	movq %rax, (%rsi)
	jmp Lbb318
Lbb309:
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
	jz Lbb315
	movq %r10, %rax
	cmpq %rax, %rbx
	setz %al
	movzbq %al, %rax
	movq %rbx, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb313
	subq $48, %rsp
	movq %rsp, %rax
	movq %r12, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb314
Lbb313:
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	movq %rax, (%rbx)
Lbb314:
	movq %rax, (%rdi)
	jmp Lbb316
Lbb315:
	movq %rax, %r8
	addq $2, %r8
	subq $48, %rsp
	movq %rsp, %rax
	movq %rbx, 32(%rax)
	callq parsetoml_parsetoml_fos_loop
	subq $-48, %rsp
	movq %rax, (%rdi)
Lbb316:
	movq %rax, (%rsi)
	jmp Lbb318
Lbb317:
	movq $-1, %rax
Lbb318:
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
	jz Lbb323
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
	jz Lbb322
	movq %rax, %r8
	addq $1, %r8
	subq $32, %rsp
	callq parsetoml_parsetoml_find_char
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb324
Lbb322:
	movq %rax, (%rsi)
	jmp Lbb324
Lbb323:
	movq $-1, %rax
Lbb324:
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
	jz Lbb359
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
	jnz Lbb350
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $34, %rax
	jz Lbb348
	cmpq $39, %rax
	jz Lbb347
	cmpq $91, %rax
	setz %r10b
	movzbq %r10b, %r10
	movq %r9, %r8
	addq $1, %r8
	cmpl $0, %r10d
	jnz Lbb345
	cmpq $123, %rax
	jz Lbb343
	cmpq $93, %rax
	setz %r10b
	movzbq %r10b, %r10
	movq %r9, %r8
	subq $1, %r8
	cmpl $0, %r10d
	jnz Lbb341
	cmpq $125, %rax
	jz Lbb339
	cmpq $44, %rax
	jz Lbb335
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb349
Lbb335:
	cmpq $0, %r9
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb337
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb338
Lbb337:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %r13, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rbx)
Lbb338:
	movq %rax, (%rdi)
	jmp Lbb349
Lbb339:
	movq %r8, %r9
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb349
Lbb341:
	movq %r8, %r9
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb349
Lbb343:
	movq %r8, %r9
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb349
Lbb345:
	movq %r8, %r9
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb349
Lbb347:
	subq $48, %rsp
	movq %rsp, %rax
	movq $39, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb349
Lbb348:
	subq $48, %rsp
	movq %rsp, %rax
	movq $34, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rdi)
Lbb349:
	movq %rax, (%rsi)
	jmp Lbb360
Lbb350:
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
	jz Lbb356
	movq %rbx, %r13
	cmpq %rax, %r13
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb354
	subq $48, %rsp
	movq %rsp, %rax
	movq %r13, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb355
Lbb354:
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r8
	callq parsetoml_parsetoml_scan_elem
	subq $-48, %rsp
	movq %rax, (%rbx)
Lbb355:
	movq %rax, (%rdi)
	jmp Lbb358
Lbb356:
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
Lbb358:
	movq %rax, (%rsi)
	jmp Lbb360
Lbb359:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rsi, (%rax)
	movq $0, 8(%rax)
Lbb360:
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
	jz Lbb386
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
	jnz Lbb377
	movq %rcx, %r9
	movq %rdi, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $34, %r9
	jz Lbb374
	cmpq $39, %r9
	jz Lbb372
	cmpq $35, %r9
	jz Lbb371
	movq %rcx, %rdx
	subq $32, %rsp
	movl $0, %r9d
	movq %rax, %rcx
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb376
Lbb371:
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
	jmp Lbb376
Lbb372:
	movq %rcx, %rdx
	subq $32, %rsp
	movl $39, %r9d
	movq %rax, %rcx
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb376
Lbb374:
	movq %rcx, %rdx
	subq $32, %rsp
	movl $34, %r9d
	movq %rdx, %r10
	movq %rax, %rcx
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb376:
	movq %rax, (%rsi)
	jmp Lbb387
Lbb377:
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
	jz Lbb384
	movq %r10, %rdx
	cmpq %rcx, %r9
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb382
	subq $32, %rsp
	movq %rax, %rcx
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb383
Lbb382:
	subq $32, %rsp
	movl $0, %r9d
	movq %rax, %rcx
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb383:
	movq %rax, (%rdi)
	jmp Lbb385
Lbb384:
	addq $2, %rdx
	subq $32, %rsp
	movq %rax, %rcx
	callq parsetoml_parsetoml_sc_loop
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb385:
	movq %rax, (%rsi)
	jmp Lbb387
Lbb386:
	movq %rsi, %rax
Lbb387:
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
	jz Lbb393
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
	jz Lbb392
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb394
Lbb392:
	addq $1, %rdx
	subq $32, %rsp
	callq parsetoml_parsetoml_all_digits
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb394
Lbb393:
	movl $1, %eax
Lbb394:
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
	jz Lbb400
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
	jz Lbb399
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb401
Lbb399:
	addq $1, %rdx
	imulq $10, %rdi, %rdi
	addq %rdi, %rax
	movq %rax, %r9
	subq $48, %r9
	subq $32, %rsp
	callq parsetoml_parsetoml_parse_digits
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb401
Lbb400:
	movq %rdi, %rax
Lbb401:
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

