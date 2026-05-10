.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str81:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str120:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str154:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str174:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str182:
	.ascii "/"
	.byte 0
/* end data */

.text
.balign 16
.globl donna_files_read
donna_files_read:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_file_read
	leave
	ret
.type donna_files_read, @function
.size donna_files_read, .-donna_files_read
/* end function donna_files_read */

.text
.balign 16
.globl donna_files_write
donna_files_write:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_file_write
	leave
	ret
.type donna_files_write, @function
.size donna_files_write, .-donna_files_write
/* end function donna_files_write */

.text
.balign 16
.globl donna_files_append
donna_files_append:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_file_append
	leave
	ret
.type donna_files_append, @function
.size donna_files_append, .-donna_files_append
/* end function donna_files_append */

.text
.balign 16
.globl donna_files_exists
donna_files_exists:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_file_exists
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
.type donna_files_exists, @function
.size donna_files_exists, .-donna_files_exists
/* end function donna_files_exists */

.text
.balign 16
.globl donna_files_is_file
donna_files_is_file:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_file_is_file
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
.type donna_files_is_file, @function
.size donna_files_is_file, .-donna_files_is_file
/* end function donna_files_is_file */

.text
.balign 16
.globl donna_files_is_dir
donna_files_is_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_file_is_dir
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
.type donna_files_is_dir, @function
.size donna_files_is_dir, .-donna_files_is_dir
/* end function donna_files_is_dir */

.text
.balign 16
.globl donna_files_mkdir
donna_files_mkdir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_file_mkdir
	leave
	ret
.type donna_files_mkdir, @function
.size donna_files_mkdir, .-donna_files_mkdir
/* end function donna_files_mkdir */

.text
.balign 16
.globl donna_files_delete
donna_files_delete:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_file_delete
	leave
	ret
.type donna_files_delete, @function
.size donna_files_delete, .-donna_files_delete
/* end function donna_files_delete */

.text
.balign 16
.globl donna_files_copy
donna_files_copy:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_file_copy
	leave
	ret
.type donna_files_copy, @function
.size donna_files_copy, .-donna_files_copy
/* end function donna_files_copy */

.text
.balign 16
.globl donna_files_list_dir
donna_files_list_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq donna_ffi_file_list_dir
	movq %rax, %rdi
	movq %rdi, %rbx
	callq strlen
	movq %rbx, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb20
	leaq donna_nil(%rip), %rcx
	movl $0, %edx
	movl $0, %esi
	callq donna_files_split_lines
	jmp .Lbb21
.Lbb20:
	leaq donna_nil(%rip), %rax
.Lbb21:
	popq %rbx
	leave
	ret
.type donna_files_list_dir, @function
.size donna_files_list_dir, .-donna_files_list_dir
/* end function donna_files_list_dir */

.text
.balign 16
donna_files_split_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r13
	movq %rdx, %r14
	movq %rsi, %rbx
	movq %rdi, %r12
	callq strlen
	movq %r14, %rdx
	movq %r12, %rdi
	cmpq %rax, %rdx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	movq %rdx, %rsi
	subq %rbx, %rsi
	movq %rdi, %rax
	addq %rbx, %rax
	cmpl $0, %ecx
	jnz .Lbb27
	movzbq (%rdi, %rdx, 1), %rcx
	cmpq $10, %rcx
	setz %cl
	movzbq %cl, %rcx
	movq %rbx, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	movq %rdx, %r15
	addq $1, %r15
	cmpl $0, %ecx
	jnz .Lbb25
	movq %r13, %rcx
	movq %r15, %rdx
	movq %r12, %rsi
	movq %rdi, %r13
	callq donna_files_split_lines
	movq %rax, (%rbx)
	jmp .Lbb32
.Lbb25:
	movq %r13, %r12
	movq %rdi, %r13
	movq %rax, %rdi
	callq strndup
	movq %r13, %rdi
	movq %rax, %r13
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rcx
	movq $1, (%rcx)
	movq %r13, 8(%rcx)
	movq %r12, 16(%rcx)
	movq %rsi, %rdx
	callq donna_files_split_lines
	movq %rax, (%rbx)
	jmp .Lbb32
.Lbb27:
	movq %rax, %rdi
	movq %r13, %r12
	cmpq %rdx, %rbx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb30
	callq strndup
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r13, 8(%rdi)
	movq %r12, 16(%rdi)
	callq donna_files_reverse
	movq %rax, (%rbx)
	jmp .Lbb32
.Lbb30:
	movq %r12, %rdi
	callq donna_files_reverse
	movq %rax, (%rbx)
.Lbb32:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_files_split_lines, @function
.size donna_files_split_lines, .-donna_files_split_lines
/* end function donna_files_split_lines */

.text
.balign 16
donna_files_reverse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq donna_nil(%rip), %rsi
	callq donna_files_reverse_acc
	leave
	ret
.type donna_files_reverse, @function
.size donna_files_reverse, .-donna_files_reverse
/* end function donna_files_reverse */

.text
.balign 16
donna_files_reverse_acc:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rax
	movq %rax, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb37
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	movq $1, (%rsi)
	movq %rbx, 8(%rsi)
	movq %rax, 16(%rsi)
	callq donna_files_reverse_acc
	jmp .Lbb38
.Lbb37:
	movq %r12, %rax
.Lbb38:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_files_reverse_acc, @function
.size donna_files_reverse_acc, .-donna_files_reverse_acc
/* end function donna_files_reverse_acc */

.text
.balign 16
.globl donna_files_join
donna_files_join:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	leaq str81(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type donna_files_join, @function
.size donna_files_join, .-donna_files_join
/* end function donna_files_join */

.text
.balign 16
.globl donna_files_basename
donna_files_basename:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %edx
	movl $0, %esi
	callq donna_files_last_segment
	leave
	ret
.type donna_files_basename, @function
.size donna_files_basename, .-donna_files_basename
/* end function donna_files_basename */

.text
.balign 16
donna_files_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %rbx
	movq %rdi, %r12
	callq strlen
	movq %r13, %rdx
	movq %r12, %rdi
	cmpq %rax, %rdx
	setz %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz .Lbb47
	movzbq (%rdi, %rdx, 1), %rax
	cmpq $47, %rax
	setz %al
	movzbq %al, %rax
	movq %rbx, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rdx, %rsi
	addq $1, %rsi
	cmpl $0, %eax
	jnz .Lbb46
	movq %rsi, %rdx
	movq %r12, %rsi
	callq donna_files_last_segment
	movq %rax, (%rbx)
	jmp .Lbb48
.Lbb46:
	movq %rsi, %rdx
	callq donna_files_last_segment
	movq %rax, (%rbx)
	jmp .Lbb48
.Lbb47:
	movq %rax, %rsi
	subq %rbx, %rsi
	addq %rbx, %rdi
	callq strndup
.Lbb48:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_files_last_segment, @function
.size donna_files_last_segment, .-donna_files_last_segment
/* end function donna_files_last_segment */

.text
.balign 16
.globl donna_files_dirname
donna_files_dirname:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq strlen
	movq %rbx, %rdi
	movq %rax, %rsi
	subq $1, %rsi
	movq %rdi, %rbx
	callq donna_files_find_last_slash
	movq %rbx, %rdi
	movq %rax, %rsi
	cmpq $-1, %rsi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb51
	callq strndup
	jmp .Lbb52
.Lbb51:
	leaq str120(%rip), %rax
.Lbb52:
	popq %rbx
	leave
	ret
.type donna_files_dirname, @function
.size donna_files_dirname, .-donna_files_dirname
/* end function donna_files_dirname */

.text
.balign 16
donna_files_find_last_slash:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rax
	cmpq $0, %rax
	setl %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz .Lbb57
	movzbq (%rdi, %rax, 1), %rcx
	cmpq $47, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz .Lbb56
	movq %rax, %rsi
	subq $1, %rsi
	callq donna_files_find_last_slash
	movq %rax, (%rbx)
	jmp .Lbb58
.Lbb56:
	movq %rax, (%rbx)
	jmp .Lbb58
.Lbb57:
	movq $-1, %rax
.Lbb58:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type donna_files_find_last_slash, @function
.size donna_files_find_last_slash, .-donna_files_find_last_slash
/* end function donna_files_find_last_slash */

.text
.balign 16
.globl donna_files_extension
donna_files_extension:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	callq donna_files_basename
	movq %rax, %rbx
	movq %rbx, %rdi
	callq strlen
	movq %rax, %rsi
	subq $1, %rsi
	movq %rbx, %rdi
	callq donna_files_find_last_dot
	movq %rax, %r12
	cmpq $-1, %r12
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb61
	movq %rbx, %rdi
	callq strlen
	movq %rax, %rsi
	subq %r12, %rsi
	movq %rbx, %rdi
	addq %r12, %rdi
	callq strndup
	jmp .Lbb62
.Lbb61:
	leaq str154(%rip), %rax
.Lbb62:
	popq %r12
	popq %rbx
	leave
	ret
.type donna_files_extension, @function
.size donna_files_extension, .-donna_files_extension
/* end function donna_files_extension */

.text
.balign 16
.globl donna_files_drop_extension
donna_files_drop_extension:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %r12
	movq %r12, %rdi
	callq donna_files_basename
	movq %rax, %rdi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_files_dirname
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r13
	callq strlen
	movq %r13, %rdi
	movq %rax, %rsi
	subq $1, %rsi
	movq %rdi, %r13
	callq donna_files_find_last_dot
	movq %r13, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	cmpq $-1, %rsi
	setz %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz .Lbb68
	callq strndup
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq str174(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	cmpq $0, %rcx
	movq %rax, %r12
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb66
	leaq str182(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %r12, %rax
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb68
.Lbb66:
	movq %r12, %rax
	movq %rax, (%rbx)
.Lbb68:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_files_drop_extension, @function
.size donna_files_drop_extension, .-donna_files_drop_extension
/* end function donna_files_drop_extension */

.text
.balign 16
donna_files_find_last_dot:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rax
	cmpq $0, %rax
	setl %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz .Lbb73
	movzbq (%rdi, %rax, 1), %rcx
	cmpq $46, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz .Lbb72
	movq %rax, %rsi
	subq $1, %rsi
	callq donna_files_find_last_dot
	movq %rax, (%rbx)
	jmp .Lbb74
.Lbb72:
	movq %rax, (%rbx)
	jmp .Lbb74
.Lbb73:
	movq $-1, %rax
.Lbb74:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type donna_files_find_last_dot, @function
.size donna_files_find_last_dot, .-donna_files_find_last_dot
/* end function donna_files_find_last_dot */

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
