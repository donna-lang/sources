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
	subq $32, %rsp
	callq donna_files_drop_extension
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str1(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	leave
	ret
/* end function builder_interface_cache_path_for */

.text
.balign 16
.globl builder_interface_cache_write
builder_interface_cache_write:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	movq %rdx, %rcx
	subq $32, %rsp
	callq builder_interface_cache_encode
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_write
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function builder_interface_cache_write */

.text
.balign 16
.globl builder_interface_cache_read
builder_interface_cache_read:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_files_exists
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb6
	subq $32, %rsp
	callq donna_files_read
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_interface_cache_decode
	subq $-32, %rsp
	jmp Lbb7
Lbb6:
	leaq donna_option_None(%rip), %rax
Lbb7:
	popq %rsi
	leave
	ret
/* end function builder_interface_cache_read */

.text
.balign 16
builder_interface_cache_encode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq builder_interface_cache_encode_bindings
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str20(%rip), %rcx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_interface_cache_encode_ctors
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function builder_interface_cache_encode */

.text
.balign 16
builder_interface_cache_encode_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb12
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rdx
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str41(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str43(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_interface_cache_encode_type
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str47(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_interface_cache_encode_bindings
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb13
Lbb12:
	leaq str32(%rip), %rax
Lbb13:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_interface_cache_encode_bindings */

.text
.balign 16
builder_interface_cache_encode_ctors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb16
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rdx
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %rdi
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str73(%rip), %rcx
	callq __rt_str_concat
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	leaq str75(%rip), %rdx
	callq __rt_str_concat
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str78(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str82(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_interface_cache_encode_type_list
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str86(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_interface_cache_encode_ctors
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb17
Lbb16:
	leaq str58(%rip), %rax
Lbb17:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_interface_cache_encode_ctors */

.text
.balign 16
builder_interface_cache_encode_type_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb26
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb22
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb23
Lbb22:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb23:
	cmpl $0, %eax
	jnz Lbb25
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq builder_interface_cache_encode_type
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str124(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_interface_cache_encode_type_list
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb27
Lbb25:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq builder_interface_cache_encode_type
	subq $-32, %rsp
	jmp Lbb27
Lbb26:
	leaq str97(%rip), %rax
Lbb27:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function builder_interface_cache_encode_type_list */

.text
.balign 16
builder_interface_cache_encode_type:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb50
	cmpq $1, %rax
	jz Lbb49
	cmpq $2, %rax
	jz Lbb48
	cmpq $3, %rax
	jz Lbb47
	cmpq $4, %rax
	jz Lbb46
	cmpq $5, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb45
	cmpq $6, %rax
	jz Lbb42
	cmpq $7, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb41
	cmpq $8, %rax
	jz Lbb38
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq donna_int_to_string
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str239(%rip), %rcx
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb51
Lbb38:
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	callq donna_list_is_empty
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb40
	subq $32, %rsp
	leaq str225(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str227(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq donna_list_length
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str232(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_interface_cache_encode_type_tokens
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb51
Lbb40:
	subq $32, %rsp
	leaq str221(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str223(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb51
Lbb41:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_list_length
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str195(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str199(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rdi, 8(%rdx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq donna_list_append
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_interface_cache_encode_type_tokens
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb51
Lbb42:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_list_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb44
	subq $32, %rsp
	movq %rcx, %rdi
	callq donna_list_length
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str178(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str182(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_interface_cache_encode_type_tokens
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb51
Lbb44:
	leaq str177(%rip), %rax
	movq %rax, (%rsi)
	leaq str177(%rip), %rax
	jmp Lbb51
Lbb45:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq builder_interface_cache_encode_type
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str162(%rip), %rcx
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb51
Lbb46:
	leaq str155(%rip), %rax
	jmp Lbb51
Lbb47:
	leaq str150(%rip), %rax
	jmp Lbb51
Lbb48:
	leaq str145(%rip), %rax
	jmp Lbb51
Lbb49:
	leaq str140(%rip), %rax
	jmp Lbb51
Lbb50:
	leaq str135(%rip), %rax
Lbb51:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_interface_cache_encode_type */

.text
.balign 16
builder_interface_cache_encode_type_tokens:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb60
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb56
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb57
Lbb56:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb57:
	cmpl $0, %eax
	jnz Lbb59
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq builder_interface_cache_encode_type
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str276(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_interface_cache_encode_type_tokens
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb61
Lbb59:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq builder_interface_cache_encode_type
	subq $-32, %rsp
	jmp Lbb61
Lbb60:
	leaq str249(%rip), %rax
Lbb61:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function builder_interface_cache_encode_type_tokens */

.text
.balign 16
builder_interface_cache_decode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str281(%rip), %rdx
	callq donna_string_split
	movq %rax, %rsi
	subq $-32, %rsp
	movq (%rsi), %rax
	cmpq $1, %rax
	jz Lbb64
	movl $0, %eax
	jmp Lbb65
Lbb64:
	movq 8(%rsi), %rcx
	subq $32, %rsp
	leaq str295(%rip), %rdx
	callq strcmp
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb65:
	cmpl $0, %eax
	jnz Lbb67
	leaq donna_option_None(%rip), %rax
	jmp Lbb68
Lbb67:
	movq 16(%rsi), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	leaq donna_nil(%rip), %rdx
	callq builder_interface_cache_decode_lines
	subq $-32, %rsp
Lbb68:
	popq %rsi
	leave
	ret
/* end function builder_interface_cache_decode */

.text
.balign 16
builder_interface_cache_decode_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $72, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %rdx, %r13
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %r14
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb118
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb116
	subq $32, %rsp
	leaq str332(%rip), %rdx
	callq donna_string_split
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rbx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %eax
	jnz Lbb74
	movq $0, (%r12)
	movl $0, %eax
	jmp Lbb83
Lbb74:
	movq %rcx, %r15
	movq 8(%rbx), %rcx
	movq 16(%rbx), %rdx
	movq %rdx, -16(%rbp)
	subq $32, %rsp
	leaq str346(%rip), %rdx
	callq strcmp
	movq %r15, %rcx
	movq -16(%rbp), %rdx
	subq $-32, %rsp
	movq (%rdx), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb77
	movq $0, (%r8)
	movl $0, %edx
	jmp Lbb82
Lbb77:
	movq 16(%rdx), %rdx
	movq (%rdx), %r9
	cmpq $1, %r9
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r10d
	jnz Lbb80
	movq $0, (%r9)
	movl $0, %edx
	jmp Lbb81
Lbb80:
	movq 16(%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $0, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%r9)
Lbb81:
	andq $1, %rdx
	movq %rdx, (%r8)
Lbb82:
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%r12)
Lbb83:
	cmpl $0, %eax
	jnz Lbb110
	movq (%rbx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r15
	cmpl $0, %eax
	jnz Lbb87
	movq $0, (%r15)
	movq %rcx, %r12
	movl $0, %eax
	jmp Lbb101
Lbb87:
	movq %rcx, %r12
	movq 8(%rbx), %rcx
	movq 16(%rbx), %r8
	movq %r8, -24(%rbp)
	subq $32, %rsp
	leaq str418(%rip), %rdx
	callq strcmp
	movq %r12, %rcx
	movq -24(%rbp), %r8
	subq $-32, %rsp
	movq (%r8), %rdx
	cmpq $1, %rdx
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %r9d
	jnz Lbb90
	movq $0, (%rdx)
	movq %rcx, %r12
	movl $0, %ecx
	jmp Lbb100
Lbb90:
	movq 16(%r8), %r9
	movq (%r9), %r8
	cmpq $1, %r8
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r10d
	jnz Lbb93
	movq $0, (%r8)
	movq %rcx, %r12
	movl $0, %ecx
	jmp Lbb99
Lbb93:
	movq 16(%r9), %r9
	movq (%r9), %r9
	cmpq $1, %r9
	setz %r9b
	movzbq %r9b, %r9
	movq %rcx, %r12
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %r9d
	jnz Lbb96
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb98
Lbb96:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb98:
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb99:
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb100:
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rcx, %rax
	movq %rax, (%r15)
Lbb101:
	cmpl $0, %eax
	jnz Lbb103
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rdi)
	leaq donna_option_None(%rip), %rax
	jmp Lbb115
Lbb103:
	movq 16(%rbx), %rax
	movq 8(%rax), %rcx
	movq %rcx, -48(%rbp)
	movq 16(%rax), %rax
	movq 8(%rax), %r15
	movq 16(%rax), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	subq $32, %rsp
	callq builder_interface_cache_parse_int
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb108
	movq 8(%rax), %rax
	movq %rax, -40(%rbp)
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_interface_cache_parse_type_strings
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -56(%rbp)
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb106
	movq 8(%rax), %rdx
	movq %rdx, -32(%rbp)
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	movq -32(%rbp), %rdx
	movq -40(%rbp), %rax
	subq $-32, %rsp
	movq %r15, (%r12)
	movq %rdx, 8(%r12)
	movq %rax, 16(%r12)
	subq $32, %rsp
	movq %rcx, %r15
	movl $16, %ecx
	callq malloc
	movq %r15, %rcx
	movq %rax, %r15
	movq -48(%rbp), %rax
	subq $-32, %rsp
	movq %rax, (%r15)
	movq %r12, 8(%r15)
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r8
	movq -56(%rbp), %r12
	subq $-32, %rsp
	movq $1, (%r8)
	movq %r15, 8(%r8)
	movq %r14, 16(%r8)
	subq $32, %rsp
	movq %r13, %rdx
	callq builder_interface_cache_decode_lines
	subq $-32, %rsp
	movq %rax, (%r12)
	jmp Lbb107
Lbb106:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%r12)
	leaq donna_option_None(%rip), %rax
Lbb107:
	movq %rax, (%rbx)
	jmp Lbb109
Lbb108:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
Lbb109:
	movq %rax, (%rdi)
	jmp Lbb115
Lbb110:
	movq %r14, %r12
	movq 16(%rbx), %rax
	movq 8(%rax), %r15
	movq 16(%rax), %rax
	movq %rcx, %rbx
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq builder_interface_cache_decode_type
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb113
	movq 8(%rax), %rax
	movq %rax, -64(%rbp)
	subq $32, %rsp
	movq %rcx, %r14
	movl $16, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq -64(%rbp), %rax
	subq $-32, %rsp
	movq %r15, (%r14)
	movq %rax, 8(%r14)
	subq $32, %rsp
	movq %rcx, %r15
	movl $24, %ecx
	callq malloc
	movq %r15, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r14, 8(%rdx)
	movq %r13, 16(%rdx)
	subq $32, %rsp
	movq %r12, %r8
	callq builder_interface_cache_decode_lines
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb114
Lbb113:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
Lbb114:
	movq %rax, (%rdi)
Lbb115:
	movq %rax, (%rsi)
	jmp Lbb120
Lbb116:
	movq %rdi, %rcx
	movq %r14, %rbx
	movq %r13, %rdi
	subq $32, %rsp
	movq %rbx, %r8
	movq %rdi, %rdx
	callq builder_interface_cache_decode_lines
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb120
Lbb118:
	movq %r14, %rsi
	movq %r13, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $0, (%rsi)
	movq %rbx, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb120:
	movq %rbp, %rsp
	subq $128, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq %rcx, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb129
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb127
	subq $32, %rsp
	callq builder_interface_cache_decode_type
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb125
	movq 8(%rax), %r12
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	subq $32, %rsp
	callq builder_interface_cache_parse_type_strings
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb126
Lbb125:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rdi)
	leaq donna_option_None(%rip), %rax
Lbb126:
	movq %rax, (%rsi)
	jmp Lbb131
Lbb127:
	movq %rdi, %rcx
	movq %rbx, %rdi
	subq $32, %rsp
	movq %rdi, %rdx
	callq builder_interface_cache_parse_type_strings
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb131
Lbb129:
	movq %rbx, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb131:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_interface_cache_parse_type_strings */

.text
.balign 16
builder_interface_cache_decode_type:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str547(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_interface_cache_decode_type_tokens
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb136
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rax
	cmpq $0, %rax
	jz Lbb135
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_option_None(%rip), %rax
	jmp Lbb137
Lbb135:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb137
Lbb136:
	leaq donna_option_None(%rip), %rax
Lbb137:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_interface_cache_decode_type */

.text
.balign 16
builder_interface_cache_decode_type_tokens:
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
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb246
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb142
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb143
Lbb142:
	movq %rcx, %rdi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str588(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb143:
	cmpl $0, %eax
	jnz Lbb245
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb147
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb148
Lbb147:
	movq %rcx, %rdi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str614(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb148:
	cmpl $0, %eax
	jnz Lbb244
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb152
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb153
Lbb152:
	movq %rcx, %rdi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str640(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb153:
	cmpl $0, %eax
	jnz Lbb243
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb157
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb158
Lbb157:
	movq %rcx, %rdi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str666(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb158:
	cmpl $0, %eax
	jnz Lbb242
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb162
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb163
Lbb162:
	movq %rcx, %rdi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str692(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb163:
	cmpl $0, %eax
	jnz Lbb241
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb167
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb173
Lbb167:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	movq 16(%rbx), %rdi
	subq $32, %rsp
	leaq str718(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	movq (%rdi), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %edi
	jnz Lbb170
	movq $0, (%rdx)
	movl $0, %edx
	jmp Lbb172
Lbb170:
	movq $1, (%rdx)
	movl $1, %edx
Lbb172:
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rsi)
Lbb173:
	cmpl $0, %eax
	jnz Lbb238
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb177
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb178
Lbb177:
	movq %rcx, %rdi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str772(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb178:
	cmpl $0, %eax
	jnz Lbb235
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb182
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb188
Lbb182:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	movq 16(%rbx), %rdi
	subq $32, %rsp
	leaq str814(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	movq (%rdi), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %edi
	jnz Lbb185
	movq $0, (%rdx)
	movl $0, %edx
	jmp Lbb187
Lbb185:
	movq $1, (%rdx)
	movl $1, %edx
Lbb187:
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rsi)
Lbb188:
	cmpl $0, %eax
	jnz Lbb229
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb192
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb198
Lbb192:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	movq 16(%rbx), %rdi
	subq $32, %rsp
	leaq str882(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	movq (%rdi), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %edi
	jnz Lbb195
	movq $0, (%rdx)
	movl $0, %edx
	jmp Lbb197
Lbb195:
	movq $1, (%rdx)
	movl $1, %edx
Lbb197:
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rsi)
Lbb198:
	cmpl $0, %eax
	jnz Lbb220
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb202
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb212
Lbb202:
	movq %rcx, %rdi
	movq 8(%rcx), %rcx
	movq 16(%rdi), %rbx
	subq $32, %rsp
	leaq str965(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	movq (%rbx), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %edx
	jnz Lbb205
	movq $0, (%rdi)
	movl $0, %edx
	jmp Lbb211
Lbb205:
	movq 16(%rbx), %rdx
	movq (%rdx), %rdx
	cmpq $1, %rdx
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %r8d
	jnz Lbb208
	movq $0, (%rdx)
	movl $0, %edx
	jmp Lbb210
Lbb208:
	movq $1, (%rdx)
	movl $1, %edx
Lbb210:
	andq $1, %rdx
	movq %rdx, (%rdi)
Lbb211:
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rsi)
Lbb212:
	cmpl $0, %eax
	jnz Lbb214
	leaq donna_option_None(%rip), %rax
	jmp Lbb247
Lbb214:
	movq 16(%rcx), %rax
	movq 8(%rax), %r14
	movq 16(%rax), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq builder_interface_cache_parse_int
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb219
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq builder_interface_cache_decode_type_count
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb217
	movq 8(%rax), %rax
	movq (%rax), %rbx
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq $8, (%r13)
	movq %r14, 8(%r13)
	movq %rbx, 16(%r13)
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
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb218
Lbb217:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rdi)
	leaq donna_option_None(%rip), %rax
Lbb218:
	movq %rax, (%rsi)
	jmp Lbb247
Lbb219:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_option_None(%rip), %rax
	jmp Lbb247
Lbb220:
	movq 16(%rcx), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq builder_interface_cache_parse_int
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb228
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq builder_interface_cache_decode_type_count
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb226
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq builder_interface_cache_decode_type_tokens
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb224
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %r13
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r14
	subq $-32, %rsp
	movq $7, (%r14)
	movq %r15, 8(%r14)
	movq %r12, 16(%r14)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb225
Lbb224:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
Lbb225:
	movq %rax, (%rdi)
	jmp Lbb227
Lbb226:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rdi)
	leaq donna_option_None(%rip), %rax
Lbb227:
	movq %rax, (%rsi)
	jmp Lbb247
Lbb228:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_option_None(%rip), %rax
	jmp Lbb247
Lbb229:
	movq 16(%rcx), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq builder_interface_cache_parse_int
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb234
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq builder_interface_cache_decode_type_count
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb232
	movq 8(%rax), %rax
	movq (%rax), %rbx
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq $6, (%r13)
	movq %rbx, 8(%r13)
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
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb233
Lbb232:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rdi)
	leaq donna_option_None(%rip), %rax
Lbb233:
	movq %rax, (%rsi)
	jmp Lbb247
Lbb234:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_option_None(%rip), %rax
	jmp Lbb247
Lbb235:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq builder_interface_cache_decode_type_tokens
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb237
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $5, (%r12)
	movq %rdi, 8(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb247
Lbb237:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_option_None(%rip), %rax
	jmp Lbb247
Lbb238:
	movq 16(%rcx), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	subq $32, %rsp
	callq builder_interface_cache_parse_int
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb240
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $9, (%r12)
	movq %rdi, 8(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb247
Lbb240:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_option_None(%rip), %rax
	jmp Lbb247
Lbb241:
	movq 16(%rcx), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, (%rsi)
	movq %rdi, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb247
Lbb242:
	movq 16(%rcx), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	leaq compiler_typesystem_types_TBool(%rip), %rax
	movq %rax, (%rsi)
	movq %rdi, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb247
Lbb243:
	movq 16(%rcx), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	leaq compiler_typesystem_types_TString(%rip), %rax
	movq %rax, (%rsi)
	movq %rdi, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb247
Lbb244:
	movq 16(%rcx), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	movq %rax, (%rsi)
	movq %rdi, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb247
Lbb245:
	movq 16(%rcx), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	leaq compiler_typesystem_types_TInt(%rip), %rax
	movq %rax, (%rsi)
	movq %rdi, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb247
Lbb246:
	leaq donna_option_None(%rip), %rax
Lbb247:
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
	pushq %rsi
	pushq %rdi
	movq %r8, %rdi
	cmpq $0, %rcx
	setle %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb252
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdx, %rcx
	callq builder_interface_cache_decode_type_tokens
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb251
	movq 8(%rax), %rax
	movq (%rax), %rbx
	movq 8(%rax), %r13
	subq $1, %rcx
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rbx, 8(%r8)
	movq %rdi, 16(%r8)
	subq $32, %rsp
	callq builder_interface_cache_decode_type_count
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb254
Lbb251:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_option_None(%rip), %rax
	jmp Lbb254
Lbb252:
	movq %rdi, %rcx
	movq %rdx, %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rdi, (%rsi)
	movq %rdx, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb254:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_interface_cache_decode_type_count */

.text
.balign 16
builder_interface_cache_parse_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_int_parse
	subq $-32, %rsp
	leave
	ret
/* end function builder_interface_cache_parse_int */

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

