.data
.balign 8
str1:
	.ascii ".iface"
	.byte 0
/* end data */

.data
.balign 8
str20:
	.ascii "donna-iface-v1"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str32:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str41:
	.ascii "B|"
	.byte 0
/* end data */

.data
.balign 8
str43:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
str47:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str58:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str73:
	.ascii "C|"
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
str78:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
str82:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
str86:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str97:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str124:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii "I"
	.byte 0
/* end data */

.data
.balign 8
str140:
	.ascii "F"
	.byte 0
/* end data */

.data
.balign 8
str145:
	.ascii "S"
	.byte 0
/* end data */

.data
.balign 8
str150:
	.ascii "B"
	.byte 0
/* end data */

.data
.balign 8
str155:
	.ascii "N"
	.byte 0
/* end data */

.data
.balign 8
str162:
	.ascii "L:"
	.byte 0
/* end data */

.data
.balign 8
str177:
	.ascii "U:0"
	.byte 0
/* end data */

.data
.balign 8
str178:
	.ascii "U:"
	.byte 0
/* end data */

.data
.balign 8
str182:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str195:
	.ascii "R:"
	.byte 0
/* end data */

.data
.balign 8
str199:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str221:
	.ascii "M:"
	.byte 0
/* end data */

.data
.balign 8
str223:
	.ascii ":0"
	.byte 0
/* end data */

.data
.balign 8
str225:
	.ascii "M:"
	.byte 0
/* end data */

.data
.balign 8
str227:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str232:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str239:
	.ascii "V:"
	.byte 0
/* end data */

.data
.balign 8
str249:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str276:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str281:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str295:
	.ascii "donna-iface-v1"
	.byte 0
/* end data */

.data
.balign 8
str332:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
str346:
	.ascii "B"
	.byte 0
/* end data */

.data
.balign 8
str418:
	.ascii "C"
	.byte 0
/* end data */

.data
.balign 8
str547:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str588:
	.ascii "I"
	.byte 0
/* end data */

.data
.balign 8
str614:
	.ascii "F"
	.byte 0
/* end data */

.data
.balign 8
str640:
	.ascii "S"
	.byte 0
/* end data */

.data
.balign 8
str666:
	.ascii "B"
	.byte 0
/* end data */

.data
.balign 8
str692:
	.ascii "N"
	.byte 0
/* end data */

.data
.balign 8
str718:
	.ascii "V"
	.byte 0
/* end data */

.data
.balign 8
str772:
	.ascii "L"
	.byte 0
/* end data */

.data
.balign 8
str814:
	.ascii "U"
	.byte 0
/* end data */

.data
.balign 8
str882:
	.ascii "R"
	.byte 0
/* end data */

.data
.balign 8
str965:
	.ascii "M"
	.byte 0
/* end data */

.text
.balign 16
.globl builder_interface_cache_path_for
builder_interface_cache_path_for:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_files_drop_extension
	movq %rax, %rdi
	leaq str1(%rip), %rsi
	callq __rt_str_concat
	leave
	ret
.type builder_interface_cache_path_for, @function
.size builder_interface_cache_path_for, .-builder_interface_cache_path_for
/* end function builder_interface_cache_path_for */

.text
.balign 16
.globl builder_interface_cache_write
builder_interface_cache_write:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movq %rsi, %rdi
	callq builder_interface_cache_encode
	movq %rbx, %rdi
	movq %rax, %rsi
	callq donna_files_write
	popq %rbx
	leave
	ret
.type builder_interface_cache_write, @function
.size builder_interface_cache_write, .-builder_interface_cache_write
/* end function builder_interface_cache_write */

.text
.balign 16
.globl builder_interface_cache_read
builder_interface_cache_read:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq donna_files_exists
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb6
	callq donna_files_read
	movq %rax, %rdi
	callq builder_interface_cache_decode
	jmp .Lbb7
.Lbb6:
	leaq donna_option_None(%rip), %rax
.Lbb7:
	popq %rbx
	leave
	ret
.type builder_interface_cache_read, @function
.size builder_interface_cache_read, .-builder_interface_cache_read
/* end function builder_interface_cache_read */

.text
.balign 16
builder_interface_cache_encode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rax
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq builder_interface_cache_encode_bindings
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq str20(%rip), %rdi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq builder_interface_cache_encode_ctors
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type builder_interface_cache_encode, @function
.size builder_interface_cache_encode, .-builder_interface_cache_encode
/* end function builder_interface_cache_encode */

.text
.balign 16
builder_interface_cache_encode_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb12
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq (%rax), %rsi
	movq 8(%rax), %rdi
	movq %rdi, %r12
	leaq str41(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str43(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq builder_interface_cache_encode_type
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str47(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq builder_interface_cache_encode_bindings
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	jmp .Lbb13
.Lbb12:
	leaq str32(%rip), %rax
.Lbb13:
	popq %r12
	popq %rbx
	leave
	ret
.type builder_interface_cache_encode_bindings, @function
.size builder_interface_cache_encode_bindings, .-builder_interface_cache_encode_bindings
/* end function builder_interface_cache_encode_bindings */

.text
.balign 16
builder_interface_cache_encode_ctors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb16
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq (%rax), %rsi
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq 8(%rax), %r12
	movq 16(%rax), %rdi
	movq %rdi, %r13
	leaq str73(%rip), %rdi
	callq __rt_str_concat
	movq %r14, %rsi
	movq %rax, %rdi
	movq %rsi, %r14
	leaq str75(%rip), %rsi
	callq __rt_str_concat
	movq %r14, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str78(%rip), %rsi
	callq __rt_str_concat
	movq %r13, %rdi
	movq %rax, %r13
	callq donna_int_to_string
	movq %r13, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str82(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq builder_interface_cache_encode_type_list
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str86(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq builder_interface_cache_encode_ctors
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	jmp .Lbb17
.Lbb16:
	leaq str58(%rip), %rax
.Lbb17:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_interface_cache_encode_ctors, @function
.size builder_interface_cache_encode_ctors, .-builder_interface_cache_encode_ctors
/* end function builder_interface_cache_encode_ctors */

.text
.balign 16
builder_interface_cache_encode_type_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb26
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb22
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb23
.Lbb22:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb23:
	cmpl $0, %eax
	jnz .Lbb25
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq builder_interface_cache_encode_type
	movq %rax, %rdi
	leaq str124(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq builder_interface_cache_encode_type_list
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	jmp .Lbb27
.Lbb25:
	movq 8(%rdi), %rdi
	callq builder_interface_cache_encode_type
	jmp .Lbb27
.Lbb26:
	leaq str97(%rip), %rax
.Lbb27:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type builder_interface_cache_encode_type_list, @function
.size builder_interface_cache_encode_type_list, .-builder_interface_cache_encode_type_list
/* end function builder_interface_cache_encode_type_list */

.text
.balign 16
builder_interface_cache_encode_type:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb50
	cmpq $1, %rax
	jz .Lbb49
	cmpq $2, %rax
	jz .Lbb48
	cmpq $3, %rax
	jz .Lbb47
	cmpq $4, %rax
	jz .Lbb46
	cmpq $5, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb45
	cmpq $6, %rax
	jz .Lbb42
	cmpq $7, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb41
	cmpq $8, %rax
	jz .Lbb38
	movq 8(%rdi), %rdi
	callq donna_int_to_string
	movq %rax, %rsi
	leaq str239(%rip), %rdi
	callq __rt_str_concat
	jmp .Lbb51
.Lbb38:
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, %r12
	callq donna_list_is_empty
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb40
	leaq str225(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str227(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r13
	movq %r12, %rdi
	callq donna_list_length
	movq %rax, %rdi
	callq donna_int_to_string
	movq %r13, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str232(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq builder_interface_cache_encode_type_tokens
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb51
.Lbb40:
	leaq str221(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str223(%rip), %rsi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb51
.Lbb41:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %r12
	movq %rdi, %rbx
	callq donna_list_length
	movq %rax, %rdi
	callq donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq str195(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str199(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rsi)
	callq donna_list_append
	movq %rax, %rdi
	callq builder_interface_cache_encode_type_tokens
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	jmp .Lbb51
.Lbb42:
	movq 8(%rdi), %rdi
	movq %rdi, %rbx
	callq donna_list_is_empty
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb44
	movq %rdi, %r12
	callq donna_list_length
	movq %rax, %rdi
	callq donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq str178(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str182(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq builder_interface_cache_encode_type_tokens
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb51
.Lbb44:
	leaq str177(%rip), %rax
	movq %rax, (%rbx)
	leaq str177(%rip), %rax
	jmp .Lbb51
.Lbb45:
	movq 8(%rdi), %rdi
	callq builder_interface_cache_encode_type
	movq %rax, %rsi
	leaq str162(%rip), %rdi
	callq __rt_str_concat
	jmp .Lbb51
.Lbb46:
	leaq str155(%rip), %rax
	jmp .Lbb51
.Lbb47:
	leaq str150(%rip), %rax
	jmp .Lbb51
.Lbb48:
	leaq str145(%rip), %rax
	jmp .Lbb51
.Lbb49:
	leaq str140(%rip), %rax
	jmp .Lbb51
.Lbb50:
	leaq str135(%rip), %rax
.Lbb51:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_interface_cache_encode_type, @function
.size builder_interface_cache_encode_type, .-builder_interface_cache_encode_type
/* end function builder_interface_cache_encode_type */

.text
.balign 16
builder_interface_cache_encode_type_tokens:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb60
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb56
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb57
.Lbb56:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb57:
	cmpl $0, %eax
	jnz .Lbb59
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq builder_interface_cache_encode_type
	movq %rax, %rdi
	leaq str276(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq builder_interface_cache_encode_type_tokens
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	jmp .Lbb61
.Lbb59:
	movq 8(%rdi), %rdi
	callq builder_interface_cache_encode_type
	jmp .Lbb61
.Lbb60:
	leaq str249(%rip), %rax
.Lbb61:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type builder_interface_cache_encode_type_tokens, @function
.size builder_interface_cache_encode_type_tokens, .-builder_interface_cache_encode_type_tokens
/* end function builder_interface_cache_encode_type_tokens */

.text
.balign 16
builder_interface_cache_decode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq str281(%rip), %rsi
	callq donna_string_split
	movq %rax, %rbx
	movq (%rbx), %rax
	cmpq $1, %rax
	jz .Lbb64
	movl $0, %eax
	jmp .Lbb65
.Lbb64:
	movq 8(%rbx), %rdi
	leaq str295(%rip), %rsi
	callq strcmp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb65:
	cmpl $0, %eax
	jnz .Lbb67
	leaq donna_option_None(%rip), %rax
	jmp .Lbb68
.Lbb67:
	movq 16(%rbx), %rdi
	leaq donna_nil(%rip), %rdx
	leaq donna_nil(%rip), %rsi
	callq builder_interface_cache_decode_lines
.Lbb68:
	popq %rbx
	leave
	ret
.type builder_interface_cache_decode, @function
.size builder_interface_cache_decode, .-builder_interface_cache_decode
/* end function builder_interface_cache_decode */

.text
.balign 16
builder_interface_cache_decode_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $136, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %rbx
	movq %rsi, %r15
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb123
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rdi, %r13
	callq donna_string_is_empty
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -128(%rbp)
	cmpq $1, %rax
	jz .Lbb121
	leaq str332(%rip), %rsi
	callq donna_string_split
	movq %r12, %rdi
	movq %rax, %r13
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r13), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -24(%rbp)
	cmpl $0, %eax
	jnz .Lbb74
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb83
.Lbb74:
	movq %rdi, %r14
	movq 8(%r13), %rdi
	movq 16(%r13), %rdx
	movq %rdx, -16(%rbp)
	leaq str346(%rip), %rsi
	callq strcmp
	movq %r14, %rdi
	movq -16(%rbp), %rdx
	movq -24(%rbp), %rcx
	movq -128(%rbp), %r14
	movq (%rdx), %rsi
	cmpq $1, %rsi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r8d
	jnz .Lbb77
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb82
.Lbb77:
	movq 16(%rdx), %rdx
	movq (%rdx), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz .Lbb80
	movq $0, (%r8)
	movl $0, %edx
	jmp .Lbb81
.Lbb80:
	movq 16(%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $0, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%r8)
.Lbb81:
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb82:
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb83:
	cmpl $0, %eax
	jnz .Lbb114
	movq (%r13), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rdx, -40(%rbp)
	cmpl $0, %eax
	jnz .Lbb87
	movq $0, (%rdx)
	movq %r13, %rax
	movq %rdi, %r13
	movl $0, %ecx
	jmp .Lbb101
.Lbb87:
	movq %rdi, %r14
	movq 8(%r13), %rdi
	movq 16(%r13), %rsi
	movq %rsi, -32(%rbp)
	leaq str418(%rip), %rsi
	callq strcmp
	movq %r14, %rdi
	movq %rax, %rcx
	movq %r13, %rax
	movq -32(%rbp), %rsi
	movq -40(%rbp), %rdx
	movq -128(%rbp), %r14
	movq (%rsi), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	movq %rdi, %r13
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz .Lbb90
	movq $0, (%rdi)
	movl $0, %esi
	jmp .Lbb100
.Lbb90:
	movq 16(%rsi), %rsi
	movq (%rsi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz .Lbb93
	movq $0, (%r8)
	movl $0, %esi
	jmp .Lbb99
.Lbb93:
	movq 16(%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $1, %rsi
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r9d
	jnz .Lbb96
	movq $0, (%rsi)
	movl $0, %esi
	jmp .Lbb98
.Lbb96:
	movq $1, (%rsi)
	movl $1, %esi
.Lbb98:
	andq $1, %rsi
	movq %rsi, (%r8)
.Lbb99:
	andq $1, %rsi
	movq %rsi, (%rdi)
.Lbb100:
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq %rsi, %rcx
	movq %rcx, (%rdx)
.Lbb101:
	cmpl $0, %ecx
	jnz .Lbb104
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r12)
	leaq donna_option_None(%rip), %rax
	movq %r14, %rbx
	jmp .Lbb120
.Lbb104:
	movq 16(%rax), %rax
	movq 8(%rax), %rcx
	movq %rcx, -80(%rbp)
	movq 16(%rax), %rax
	movq 8(%rax), %rcx
	movq %rcx, -56(%rbp)
	movq 16(%rax), %rax
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	movq %rax, -48(%rbp)
	callq builder_interface_cache_parse_int
	movq %r13, %rdi
	movq %rdi, %r13
	movq -48(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -96(%rbp)
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz .Lbb111
	movq 8(%rax), %rax
	movq %rax, -72(%rbp)
	leaq donna_nil(%rip), %rsi
	callq builder_interface_cache_parse_type_strings
	movq %r14, %rcx
	movq %r13, %rdi
	movq -96(%rbp), %r13
	movq -56(%rbp), %r14
	movq %r14, %rdx
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -88(%rbp)
	movq (%rax), %rsi
	cmpq $0, %rsi
	jz .Lbb108
	movq %rdx, %r14
	movq 8(%rax), %rcx
	movq %rcx, -64(%rbp)
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq -64(%rbp), %rcx
	movq -72(%rbp), %rax
	movq %r14, (%r13)
	movq %rcx, 8(%r13)
	movq %rax, 16(%r13)
	movq %rdi, %r14
	movl $16, %edi
	callq malloc
	movq %r14, %rdi
	movq %rax, %r14
	movq -80(%rbp), %rax
	movq %rax, (%r14)
	movq %r13, 8(%r14)
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r14, %rcx
	movq %r13, %rdi
	movq %rax, %rdx
	movq %rbx, %rax
	movq -88(%rbp), %r14
	movq -96(%rbp), %r13
	movq -128(%rbp), %rbx
	movq $1, (%rdx)
	movq %rcx, 8(%rdx)
	movq %rax, 16(%rdx)
	movq %r15, %rsi
	callq builder_interface_cache_decode_lines
	movq %rax, (%r14)
	jmp .Lbb110
.Lbb108:
	movq %rcx, %rbx
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r14)
	leaq donna_option_None(%rip), %rax
.Lbb110:
	movq %rax, (%r13)
	jmp .Lbb113
.Lbb111:
	movq %rcx, %r13
	movq %r14, %rbx
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r13)
	leaq donna_option_None(%rip), %rax
.Lbb113:
	movq %rax, (%r12)
	jmp .Lbb120
.Lbb114:
	xchgq %r14, %rbx
	movq 16(%r13), %rax
	movq 8(%rax), %r13
	movq %r13, -104(%rbp)
	movq 16(%rax), %rax
	movq %rdi, %r13
	movq 8(%rax), %rdi
	callq builder_interface_cache_decode_type
	movq %r13, %rdi
	movq -104(%rbp), %r13
	movq %r13, %rcx
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -120(%rbp)
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz .Lbb118
	movq %rcx, %r13
	movq 8(%rax), %rax
	movq %rax, -112(%rbp)
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq -112(%rbp), %rax
	movq %r13, (%rbx)
	movq %rax, 8(%rbx)
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rbx, %rax
	movq -120(%rbp), %r13
	movq -128(%rbp), %rbx
	movq $1, (%rsi)
	movq %rax, 8(%rsi)
	movq %r15, 16(%rsi)
	movq %r14, %rdx
	callq builder_interface_cache_decode_lines
	movq %rax, (%r13)
	jmp .Lbb119
.Lbb118:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r13)
	leaq donna_option_None(%rip), %rax
.Lbb119:
	movq %rax, (%r12)
.Lbb120:
	movq %rax, (%rbx)
	jmp .Lbb125
.Lbb121:
	movq %r12, %rdi
	movq %rbx, %r13
	movq %r14, %rbx
	movq %r15, %r12
	movq %r13, %rdx
	movq %r12, %rsi
	callq builder_interface_cache_decode_lines
	movq %rax, (%rbx)
	jmp .Lbb125
.Lbb123:
	movq %r15, %rdi
	callq donna_list_reverse
	movq %rbx, %rdi
	movq %rax, %r13
	callq donna_list_reverse
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $0, (%rbx)
	movq %r13, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
.Lbb125:
	movq %rbp, %rsp
	subq $176, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_interface_cache_decode_lines, @function
.size builder_interface_cache_decode_lines, .-builder_interface_cache_decode_lines
/* end function builder_interface_cache_decode_lines */

.text
.balign 16
builder_interface_cache_parse_type_strings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r13
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb134
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rdi, %rbx
	callq donna_string_is_empty
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb132
	callq builder_interface_cache_decode_type
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb130
	movq 8(%rax), %r14
	movq %rdi, %r15
	movl $24, %edi
	callq malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	movq %r13, 16(%rsi)
	callq builder_interface_cache_parse_type_strings
	movq %rax, (%r12)
	jmp .Lbb131
.Lbb130:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r12)
	leaq donna_option_None(%rip), %rax
.Lbb131:
	movq %rax, (%rbx)
	jmp .Lbb136
.Lbb132:
	movq %r12, %rdi
	movq %r13, %r12
	movq %r12, %rsi
	callq builder_interface_cache_parse_type_strings
	movq %rax, (%rbx)
	jmp .Lbb136
.Lbb134:
	movq %r13, %rdi
	callq donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
.Lbb136:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_interface_cache_parse_type_strings, @function
.size builder_interface_cache_parse_type_strings, .-builder_interface_cache_parse_type_strings
/* end function builder_interface_cache_parse_type_strings */

.text
.balign 16
builder_interface_cache_decode_type:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	leaq str547(%rip), %rsi
	callq donna_string_split
	movq %rax, %rdi
	callq builder_interface_cache_decode_type_tokens
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb141
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rax
	cmpq $0, %rax
	jz .Lbb140
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
	jmp .Lbb142
.Lbb140:
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb142
.Lbb141:
	leaq donna_option_None(%rip), %rax
.Lbb142:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type builder_interface_cache_decode_type, @function
.size builder_interface_cache_decode_type, .-builder_interface_cache_decode_type
/* end function builder_interface_cache_decode_type */

.text
.balign 16
builder_interface_cache_decode_type_tokens:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb251
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb147
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb148
.Lbb147:
	movq %rdi, %r12
	movq 8(%rdi), %rdi
	leaq str588(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb148:
	cmpl $0, %eax
	jnz .Lbb250
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb152
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb153
.Lbb152:
	movq %rdi, %r12
	movq 8(%rdi), %rdi
	leaq str614(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb153:
	cmpl $0, %eax
	jnz .Lbb249
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb157
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb158
.Lbb157:
	movq %rdi, %r12
	movq 8(%rdi), %rdi
	leaq str640(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb158:
	cmpl $0, %eax
	jnz .Lbb248
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb162
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb163
.Lbb162:
	movq %rdi, %r12
	movq 8(%rdi), %rdi
	leaq str666(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb163:
	cmpl $0, %eax
	jnz .Lbb247
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb167
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb168
.Lbb167:
	movq %rdi, %r12
	movq 8(%rdi), %rdi
	leaq str692(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb168:
	cmpl $0, %eax
	jnz .Lbb246
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb172
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb178
.Lbb172:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	movq 16(%r13), %r12
	leaq str718(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	movq (%r12), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb175
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb177
.Lbb175:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb177:
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rcx, %rax
	movq %rax, (%rbx)
.Lbb178:
	cmpl $0, %eax
	jnz .Lbb243
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb182
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb183
.Lbb182:
	movq %rdi, %r12
	movq 8(%rdi), %rdi
	leaq str772(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb183:
	cmpl $0, %eax
	jnz .Lbb240
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb187
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb193
.Lbb187:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	movq 16(%r13), %r12
	leaq str814(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	movq (%r12), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb190
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb192
.Lbb190:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb192:
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rcx, %rax
	movq %rax, (%rbx)
.Lbb193:
	cmpl $0, %eax
	jnz .Lbb234
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb197
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb203
.Lbb197:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	movq 16(%r13), %r12
	leaq str882(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	movq (%r12), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb200
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb202
.Lbb200:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb202:
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rcx, %rax
	movq %rax, (%rbx)
.Lbb203:
	cmpl $0, %eax
	jnz .Lbb225
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb207
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb217
.Lbb207:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	movq 16(%r13), %r12
	leaq str965(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	movq (%r12), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %ecx
	jnz .Lbb210
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb216
.Lbb210:
	movq 16(%r12), %rcx
	movq (%rcx), %rcx
	cmpq $1, %rcx
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %esi
	jnz .Lbb213
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb215
.Lbb213:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb215:
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb216:
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rcx, %rax
	movq %rax, (%rbx)
.Lbb217:
	cmpl $0, %eax
	jnz .Lbb219
	leaq donna_option_None(%rip), %rax
	jmp .Lbb252
.Lbb219:
	movq 16(%rdi), %rax
	movq 8(%rax), %r15
	movq 16(%rax), %rax
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq builder_interface_cache_parse_int
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb224
	movq 8(%rax), %rdi
	leaq donna_nil(%rip), %rdx
	callq builder_interface_cache_decode_type_count
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb222
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r14
	movl $24, %edi
	callq malloc
	xchgq %rax, %r15
	movq $8, (%r15)
	movq %rax, 8(%r15)
	movq %r13, 16(%r15)
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb223
.Lbb222:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r12)
	leaq donna_option_None(%rip), %rax
.Lbb223:
	movq %rax, (%rbx)
	jmp .Lbb252
.Lbb224:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
	jmp .Lbb252
.Lbb225:
	movq 16(%rdi), %rax
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq builder_interface_cache_parse_int
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb233
	movq 8(%rax), %rdi
	leaq donna_nil(%rip), %rdx
	callq builder_interface_cache_decode_type_count
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb231
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %rdi
	callq builder_interface_cache_decode_type_tokens
	movq %r13, %rcx
	subq $16, %rsp
	movq %rsp, %r13
	movq %rcx, %r15
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb229
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq 8(%rax), %rax
	movq %rax, -16(%rbp)
	movl $24, %edi
	callq malloc
	movq %r15, %rcx
	xchgq %rax, %r14
	movq -16(%rbp), %r15
	movq $7, (%r14)
	movq %rcx, 8(%r14)
	movq %rax, 16(%r14)
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq %rax, (%r14)
	movq %r15, 8(%r14)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
	jmp .Lbb230
.Lbb229:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r13)
	leaq donna_option_None(%rip), %rax
.Lbb230:
	movq %rax, (%r12)
	jmp .Lbb232
.Lbb231:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r12)
	leaq donna_option_None(%rip), %rax
.Lbb232:
	movq %rax, (%rbx)
	jmp .Lbb252
.Lbb233:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
	jmp .Lbb252
.Lbb234:
	movq 16(%rdi), %rax
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq builder_interface_cache_parse_int
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb239
	movq 8(%rax), %rdi
	leaq donna_nil(%rip), %rdx
	callq builder_interface_cache_decode_type_count
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb237
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r14
	movl $16, %edi
	callq malloc
	movq %rax, %r15
	movq $6, (%r15)
	movq %r13, 8(%r15)
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb238
.Lbb237:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r12)
	leaq donna_option_None(%rip), %rax
.Lbb238:
	movq %rax, (%rbx)
	jmp .Lbb252
.Lbb239:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
	jmp .Lbb252
.Lbb240:
	movq 16(%rdi), %rdi
	callq builder_interface_cache_decode_type_tokens
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb242
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq %rax, %r14
	movq $5, (%r14)
	movq %r12, 8(%r14)
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb252
.Lbb242:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
	jmp .Lbb252
.Lbb243:
	movq 16(%rdi), %rax
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	callq builder_interface_cache_parse_int
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb245
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq %rax, %r14
	movq $9, (%r14)
	movq %r12, 8(%r14)
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb252
.Lbb245:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
	jmp .Lbb252
.Lbb246:
	movq 16(%rdi), %r12
	movl $16, %edi
	callq malloc
	movq %rax, %rbx
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, (%rbx)
	movq %r12, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb252
.Lbb247:
	movq 16(%rdi), %r12
	movl $16, %edi
	callq malloc
	movq %rax, %rbx
	leaq compiler_typesystem_types_TBool(%rip), %rax
	movq %rax, (%rbx)
	movq %r12, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb252
.Lbb248:
	movq 16(%rdi), %r12
	movl $16, %edi
	callq malloc
	movq %rax, %rbx
	leaq compiler_typesystem_types_TString(%rip), %rax
	movq %rax, (%rbx)
	movq %r12, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb252
.Lbb249:
	movq 16(%rdi), %r12
	movl $16, %edi
	callq malloc
	movq %rax, %rbx
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	movq %rax, (%rbx)
	movq %r12, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb252
.Lbb250:
	movq 16(%rdi), %r12
	movl $16, %edi
	callq malloc
	movq %rax, %rbx
	leaq compiler_typesystem_types_TInt(%rip), %rax
	movq %rax, (%rbx)
	movq %r12, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb252
.Lbb251:
	leaq donna_option_None(%rip), %rax
.Lbb252:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_interface_cache_decode_type_tokens, @function
.size builder_interface_cache_decode_type_tokens, .-builder_interface_cache_decode_type_tokens
/* end function builder_interface_cache_decode_type_tokens */

.text
.balign 16
builder_interface_cache_decode_type_count:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r12
	cmpq $0, %rdi
	setle %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb257
	movq %rdi, %rbx
	movq %rsi, %rdi
	callq builder_interface_cache_decode_type_tokens
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb256
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r15
	subq $1, %rdi
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq builder_interface_cache_decode_type_count
	movq %rax, (%rbx)
	jmp .Lbb259
.Lbb256:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
	jmp .Lbb259
.Lbb257:
	movq %r12, %rdi
	movq %rsi, %rbx
	callq donna_list_reverse
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %r12, (%rbx)
	movq %rsi, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
.Lbb259:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_interface_cache_decode_type_count, @function
.size builder_interface_cache_decode_type_count, .-builder_interface_cache_decode_type_count
/* end function builder_interface_cache_decode_type_count */

.text
.balign 16
builder_interface_cache_parse_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_int_parse
	leave
	ret
.type builder_interface_cache_parse_int, @function
.size builder_interface_cache_parse_int, .-builder_interface_cache_parse_int
/* end function builder_interface_cache_parse_int */

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
