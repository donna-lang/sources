.data
.balign 8
_str0:
	.ascii ".ssa"
	.byte 0
/* end data */

.data
.balign 8
_str3:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
_str10:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
_str12:
	.ascii "qbe"
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str19:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
_str30:
	.ascii "error: qbe failed with status "
	.byte 0
/* end data */

.data
.balign 8
_str39:
	.ascii "error: C compiler not found"
	.byte 0
/* end data */

.data
.balign 8
_str46:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
_str58:
	.ascii "error: C compiler failed with status "
	.byte 0
/* end data */

.data
.balign 8
_str61:
	.ascii "ok"
	.byte 0
/* end data */

.data
.balign 8
_str71:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
_str78:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
_str105:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
_str109:
	.ascii "1"
	.byte 0
/* end data */

.data
.balign 8
_str113:
	.ascii "2"
	.byte 0
/* end data */

.data
.balign 8
_str117:
	.ascii "3"
	.byte 0
/* end data */

.data
.balign 8
_str121:
	.ascii "4"
	.byte 0
/* end data */

.data
.balign 8
_str125:
	.ascii "5"
	.byte 0
/* end data */

.data
.balign 8
_str129:
	.ascii "6"
	.byte 0
/* end data */

.data
.balign 8
_str133:
	.ascii "7"
	.byte 0
/* end data */

.data
.balign 8
_str137:
	.ascii "8"
	.byte 0
/* end data */

.data
.balign 8
_str138:
	.ascii "9"
	.byte 0
/* end data */

.text
.balign 16
.globl _builder_build_ssa_path
_builder_build_ssa_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movq %rsi, %rdi
	leaq _str0(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_files_join
	popq %rbx
	leave
	ret
/* end function builder_build_ssa_path */

.text
.balign 16
.globl _builder_build_asm_path
_builder_build_asm_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movq %rsi, %rdi
	leaq _str3(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_files_join
	popq %rbx
	leave
	ret
/* end function builder_build_asm_path */

.text
.balign 16
.globl _builder_build_bin_path
_builder_build_bin_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_files_join
	leave
	ret
/* end function builder_build_bin_path */

.text
.balign 16
.globl _builder_build_build
_builder_build_build:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rcx, %rdi
	movq %rdx, %r12
	movq %rsi, %rbx
	callq _compiler_codegen_codegen_generate
	movq %rax, %rsi
	movq %rbx, %rdi
	callq _donna_files_write
	movq %rbx, %rdi
	callq _donna_files_drop_extension
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str10(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %r14
	movl $24, %edi
	callq _malloc
	movq %rbx, %rsi
	movq %rax, %r13
	movq $1, (%r13)
	movq %rsi, 8(%r13)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movl $24, %edi
	callq _malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %r14, 8(%rbx)
	movq %r13, 16(%rbx)
	movl $24, %edi
	callq _malloc
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq _str19(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rbx, 16(%rsi)
	leaq _str12(%rip), %rdi
	callq _donna_shell_exec
	movq %rax, %rdi
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	cmpq $0, %rax
	jz Lbb13
	callq _builder_pipeline_c_compiler_available
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb12
	movl $24, %edi
	callq _malloc
	movq %rax, %r13
	movq $1, (%r13)
	movq %r14, 8(%r13)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movl $24, %edi
	callq _malloc
	movq %r12, %rdx
	movq %rax, %r12
	movq $1, (%r12)
	movq %rdx, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	leaq _str46(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	callq _builder_pipeline_c_command
	movq %rax, %rdi
	callq _donna_shell_run
	movq %rax, %rdi
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rax
	jz Lbb10
	leaq _str61(%rip), %rax
	movq %rax, (%r12)
	leaq _str61(%rip), %rax
	jmp Lbb11
Lbb10:
	callq _builder_build_int_to_str
	movq %rax, %rsi
	leaq _str58(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, (%r12)
Lbb11:
	movq %rax, (%rbx)
	jmp Lbb14
Lbb12:
	leaq _str39(%rip), %rax
	movq %rax, (%rbx)
	leaq _str39(%rip), %rax
	jmp Lbb14
Lbb13:
	callq _builder_build_int_to_str
	movq %rax, %rsi
	leaq _str30(%rip), %rdi
	callq ___rt_str_concat
Lbb14:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_build_build */

.text
.balign 16
_builder_build_int_to_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb19
	cmpq $0, %rdi
	setl %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb18
	callq _builder_build_pos_int_to_str
	movq %rax, (%rbx)
	jmp Lbb20
Lbb18:
	negq %rdi
	addq $0, %rdi
	callq _builder_build_pos_int_to_str
	movq %rax, %rsi
	leaq _str78(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb20
Lbb19:
	leaq _str71(%rip), %rax
Lbb20:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function builder_build_int_to_str */

.text
.balign 16
_builder_build_pos_int_to_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	cmpq $10, %rbx
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb23
	movl $10, %ecx
	movq %rbx, %rax
	cqto
	idivq %rcx
	movq %rax, %rdi
	callq _builder_build_pos_int_to_str
	movq %rbx, %rdi
	movq %rax, %rbx
	movl $10, %ecx
	movq %rdi, %rax
	cqto
	idivq %rcx
	imulq $10, %rax, %rax
	subq %rax, %rdi
	callq _builder_build_digit_char
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb25
Lbb23:
	movq %rbx, %rdi
	callq _builder_build_digit_char
Lbb25:
	popq %rbx
	leave
	ret
/* end function builder_build_pos_int_to_str */

.text
.balign 16
_builder_build_digit_char:
	endbr64
	cmpq $0, %rdi
	jz Lbb44
	cmpq $1, %rdi
	jz Lbb43
	cmpq $2, %rdi
	jz Lbb42
	cmpq $3, %rdi
	jz Lbb41
	cmpq $4, %rdi
	jz Lbb40
	cmpq $5, %rdi
	jz Lbb39
	cmpq $6, %rdi
	jz Lbb38
	cmpq $7, %rdi
	jz Lbb37
	cmpq $8, %rdi
	jz Lbb36
	leaq _str138(%rip), %rax
	jmp Lbb45
Lbb36:
	leaq _str137(%rip), %rax
	jmp Lbb45
Lbb37:
	leaq _str133(%rip), %rax
	jmp Lbb45
Lbb38:
	leaq _str129(%rip), %rax
	jmp Lbb45
Lbb39:
	leaq _str125(%rip), %rax
	jmp Lbb45
Lbb40:
	leaq _str121(%rip), %rax
	jmp Lbb45
Lbb41:
	leaq _str117(%rip), %rax
	jmp Lbb45
Lbb42:
	leaq _str113(%rip), %rax
	jmp Lbb45
Lbb43:
	leaq _str109(%rip), %rax
	jmp Lbb45
Lbb44:
	leaq _str105(%rip), %rax
Lbb45:
	ret
/* end function builder_build_digit_char */

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

