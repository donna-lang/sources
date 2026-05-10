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
	pushq %rbx
	movq %rdi, %rbx
	movq %rsi, %rdi
	leaq str0(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	callq donna_files_join
	popq %rbx
	leave
	ret
.type builder_build_ssa_path, @function
.size builder_build_ssa_path, .-builder_build_ssa_path
/* end function builder_build_ssa_path */

.text
.balign 16
.globl builder_build_asm_path
builder_build_asm_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movq %rsi, %rdi
	leaq str3(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	callq donna_files_join
	popq %rbx
	leave
	ret
.type builder_build_asm_path, @function
.size builder_build_asm_path, .-builder_build_asm_path
/* end function builder_build_asm_path */

.text
.balign 16
.globl builder_build_bin_path
builder_build_bin_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_files_join
	leave
	ret
.type builder_build_bin_path, @function
.size builder_build_bin_path, .-builder_build_bin_path
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
	pushq %r13
	pushq %r14
	movq %rcx, %rdi
	movq %rdx, %r12
	movq %rsi, %rbx
	callq compiler_codegen_codegen_generate
	movq %rax, %rsi
	movq %rbx, %rdi
	callq donna_files_write
	movq %rbx, %rdi
	callq donna_files_drop_extension
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str10(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %r14
	movl $24, %edi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %r13
	movq $1, (%r13)
	movq %rsi, 8(%r13)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %r14, 8(%rbx)
	movq %r13, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq str19(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rbx, 16(%rsi)
	leaq str12(%rip), %rdi
	callq donna_shell_exec
	movq %rax, %rdi
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	cmpq $0, %rax
	jz .Lbb13
	callq builder_pipeline_c_compiler_available
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz .Lbb12
	movl $24, %edi
	callq malloc
	movq %rax, %r13
	movq $1, (%r13)
	movq %r14, 8(%r13)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movl $24, %edi
	callq malloc
	movq %r12, %rdx
	movq %rax, %r12
	movq $1, (%r12)
	movq %rdx, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	leaq str46(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	callq builder_pipeline_c_command
	movq %rax, %rdi
	callq donna_shell_run
	movq %rax, %rdi
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rax
	jz .Lbb10
	leaq str61(%rip), %rax
	movq %rax, (%r12)
	leaq str61(%rip), %rax
	jmp .Lbb11
.Lbb10:
	callq builder_build_int_to_str
	movq %rax, %rsi
	leaq str58(%rip), %rdi
	callq __rt_str_concat
	movq %rax, (%r12)
.Lbb11:
	movq %rax, (%rbx)
	jmp .Lbb14
.Lbb12:
	leaq str39(%rip), %rax
	movq %rax, (%rbx)
	leaq str39(%rip), %rax
	jmp .Lbb14
.Lbb13:
	callq builder_build_int_to_str
	movq %rax, %rsi
	leaq str30(%rip), %rdi
	callq __rt_str_concat
.Lbb14:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_build_build, @function
.size builder_build_build, .-builder_build_build
/* end function builder_build_build */

.text
.balign 16
builder_build_int_to_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb19
	cmpq $0, %rdi
	setl %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb18
	callq builder_build_pos_int_to_str
	movq %rax, (%rbx)
	jmp .Lbb20
.Lbb18:
	negq %rdi
	addq $0, %rdi
	callq builder_build_pos_int_to_str
	movq %rax, %rsi
	leaq str78(%rip), %rdi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb20
.Lbb19:
	leaq str71(%rip), %rax
.Lbb20:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type builder_build_int_to_str, @function
.size builder_build_int_to_str, .-builder_build_int_to_str
/* end function builder_build_int_to_str */

.text
.balign 16
builder_build_pos_int_to_str:
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
	jz .Lbb23
	movl $10, %ecx
	movq %rbx, %rax
	cqto
	idivq %rcx
	movq %rax, %rdi
	callq builder_build_pos_int_to_str
	movq %rbx, %rdi
	movq %rax, %rbx
	movl $10, %ecx
	movq %rdi, %rax
	cqto
	idivq %rcx
	imulq $10, %rax, %rax
	subq %rax, %rdi
	callq builder_build_digit_char
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	jmp .Lbb25
.Lbb23:
	movq %rbx, %rdi
	callq builder_build_digit_char
.Lbb25:
	popq %rbx
	leave
	ret
.type builder_build_pos_int_to_str, @function
.size builder_build_pos_int_to_str, .-builder_build_pos_int_to_str
/* end function builder_build_pos_int_to_str */

.text
.balign 16
builder_build_digit_char:
	endbr64
	cmpq $0, %rdi
	jz .Lbb44
	cmpq $1, %rdi
	jz .Lbb43
	cmpq $2, %rdi
	jz .Lbb42
	cmpq $3, %rdi
	jz .Lbb41
	cmpq $4, %rdi
	jz .Lbb40
	cmpq $5, %rdi
	jz .Lbb39
	cmpq $6, %rdi
	jz .Lbb38
	cmpq $7, %rdi
	jz .Lbb37
	cmpq $8, %rdi
	jz .Lbb36
	leaq str138(%rip), %rax
	jmp .Lbb45
.Lbb36:
	leaq str137(%rip), %rax
	jmp .Lbb45
.Lbb37:
	leaq str133(%rip), %rax
	jmp .Lbb45
.Lbb38:
	leaq str129(%rip), %rax
	jmp .Lbb45
.Lbb39:
	leaq str125(%rip), %rax
	jmp .Lbb45
.Lbb40:
	leaq str121(%rip), %rax
	jmp .Lbb45
.Lbb41:
	leaq str117(%rip), %rax
	jmp .Lbb45
.Lbb42:
	leaq str113(%rip), %rax
	jmp .Lbb45
.Lbb43:
	leaq str109(%rip), %rax
	jmp .Lbb45
.Lbb44:
	leaq str105(%rip), %rax
.Lbb45:
	ret
.type builder_build_digit_char, @function
.size builder_build_digit_char, .-builder_build_digit_char
/* end function builder_build_digit_char */

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
