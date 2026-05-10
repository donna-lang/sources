.data
.balign 8
str0:
	.ascii ".ssa"
	.byte 0
/* end data */

.data
.balign 8
str3:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
str10:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
str12:
	.ascii "qbe"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str19:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str30:
	.ascii "error: qbe failed with status "
	.byte 0
/* end data */

.data
.balign 8
str39:
	.ascii "error: C compiler not found"
	.byte 0
/* end data */

.data
.balign 8
str46:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str58:
	.ascii "error: C compiler failed with status "
	.byte 0
/* end data */

.data
.balign 8
str61:
	.ascii "ok"
	.byte 0
/* end data */

.data
.balign 8
str71:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
str78:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
str105:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
str109:
	.ascii "1"
	.byte 0
/* end data */

.data
.balign 8
str113:
	.ascii "2"
	.byte 0
/* end data */

.data
.balign 8
str117:
	.ascii "3"
	.byte 0
/* end data */

.data
.balign 8
str121:
	.ascii "4"
	.byte 0
/* end data */

.data
.balign 8
str125:
	.ascii "5"
	.byte 0
/* end data */

.data
.balign 8
str129:
	.ascii "6"
	.byte 0
/* end data */

.data
.balign 8
str133:
	.ascii "7"
	.byte 0
/* end data */

.data
.balign 8
str137:
	.ascii "8"
	.byte 0
/* end data */

.data
.balign 8
str138:
	.ascii "9"
	.byte 0
/* end data */

.text
.balign 16
.globl builder_build_ssa_path
builder_build_ssa_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	movq %rdx, %rcx
	subq $32, %rsp
	leaq str0(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function builder_build_ssa_path */

.text
.balign 16
.globl builder_build_asm_path
builder_build_asm_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	movq %rdx, %rcx
	subq $32, %rsp
	leaq str3(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function builder_build_asm_path */

.text
.balign 16
.globl builder_build_bin_path
builder_build_bin_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_files_join
	subq $-32, %rsp
	leave
	ret
/* end function builder_build_bin_path */

.text
.balign 16
.globl builder_build_build
builder_build_build:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %rcx
	movq %r8, %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_codegen_codegen_generate
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_files_write
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_files_drop_extension
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str10(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %rdx, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str19(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rsi, 16(%rdx)
	subq $32, %rsp
	leaq str12(%rip), %rcx
	callq donna_shell_exec
	movq %rax, %rcx
	subq $-32, %rsp
	cmpq $0, %rcx
	setz %al
	movzbq %al, %rax
	cmpq $0, %rax
	jz Lbb13
	subq $32, %rsp
	callq builder_pipeline_c_compiler_available
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb12
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r12, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rdi, %r8
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %r8, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	leaq str46(%rip), %rax
	movq %rax, 8(%rcx)
	movq %rdi, 16(%rcx)
	subq $32, %rsp
	callq builder_pipeline_c_command
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	movq %rax, %rcx
	subq $-32, %rsp
	cmpq $0, %rcx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rax
	jz Lbb10
	leaq str61(%rip), %rax
	movq %rax, (%rdi)
	leaq str61(%rip), %rax
	jmp Lbb11
Lbb10:
	subq $32, %rsp
	callq builder_build_int_to_str
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str58(%rip), %rcx
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb11:
	movq %rax, (%rsi)
	jmp Lbb14
Lbb12:
	leaq str39(%rip), %rax
	movq %rax, (%rsi)
	leaq str39(%rip), %rax
	jmp Lbb14
Lbb13:
	subq $32, %rsp
	callq builder_build_int_to_str
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str30(%rip), %rcx
	callq __rt_str_concat
	subq $-32, %rsp
Lbb14:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_build_build */

.text
.balign 16
builder_build_int_to_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	cmpq $0, %rcx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb19
	cmpq $0, %rcx
	setl %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb18
	subq $32, %rsp
	callq builder_build_pos_int_to_str
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb20
Lbb18:
	negq %rcx
	addq $0, %rcx
	subq $32, %rsp
	callq builder_build_pos_int_to_str
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str78(%rip), %rcx
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb20
Lbb19:
	leaq str71(%rip), %rax
Lbb20:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function builder_build_int_to_str */

.text
.balign 16
builder_build_pos_int_to_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	cmpq $10, %rcx
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb23
	movq %rcx, %rsi
	movl $10, %ecx
	movq %rsi, %rax
	cqto
	idivq %rcx
	movq %rax, %rcx
	subq $32, %rsp
	callq builder_build_pos_int_to_str
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movl $10, %edi
	movq %rcx, %rax
	cqto
	idivq %rdi
	imulq $10, %rax, %rax
	subq %rax, %rcx
	subq $32, %rsp
	callq builder_build_digit_char
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb24
Lbb23:
	subq $32, %rsp
	callq builder_build_digit_char
	subq $-32, %rsp
Lbb24:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_build_pos_int_to_str */

.text
.balign 16
builder_build_digit_char:
	endbr64
	cmpq $0, %rcx
	jz Lbb43
	cmpq $1, %rcx
	jz Lbb42
	cmpq $2, %rcx
	jz Lbb41
	cmpq $3, %rcx
	jz Lbb40
	cmpq $4, %rcx
	jz Lbb39
	cmpq $5, %rcx
	jz Lbb38
	cmpq $6, %rcx
	jz Lbb37
	cmpq $7, %rcx
	jz Lbb36
	cmpq $8, %rcx
	jz Lbb35
	leaq str138(%rip), %rax
	jmp Lbb44
Lbb35:
	leaq str137(%rip), %rax
	jmp Lbb44
Lbb36:
	leaq str133(%rip), %rax
	jmp Lbb44
Lbb37:
	leaq str129(%rip), %rax
	jmp Lbb44
Lbb38:
	leaq str125(%rip), %rax
	jmp Lbb44
Lbb39:
	leaq str121(%rip), %rax
	jmp Lbb44
Lbb40:
	leaq str117(%rip), %rax
	jmp Lbb44
Lbb41:
	leaq str113(%rip), %rax
	jmp Lbb44
Lbb42:
	leaq str109(%rip), %rax
	jmp Lbb44
Lbb43:
	leaq str105(%rip), %rax
Lbb44:
	ret
/* end function builder_build_digit_char */

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

