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
	subq $32, %rsp
	callq donna_ffi_file_read
	subq $-32, %rsp
	leave
	ret
/* end function donna_files_read */

.text
.balign 16
.globl donna_files_write
donna_files_write:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_ffi_file_write
	subq $-32, %rsp
	leave
	ret
/* end function donna_files_write */

.text
.balign 16
.globl donna_files_append
donna_files_append:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_ffi_file_append
	subq $-32, %rsp
	leave
	ret
/* end function donna_files_append */

.text
.balign 16
.globl donna_files_exists
donna_files_exists:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_ffi_file_exists
	subq $-32, %rsp
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function donna_files_exists */

.text
.balign 16
.globl donna_files_is_file
donna_files_is_file:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_ffi_file_is_file
	subq $-32, %rsp
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function donna_files_is_file */

.text
.balign 16
.globl donna_files_is_dir
donna_files_is_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_ffi_file_is_dir
	subq $-32, %rsp
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function donna_files_is_dir */

.text
.balign 16
.globl donna_files_mkdir
donna_files_mkdir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_ffi_file_mkdir
	subq $-32, %rsp
	leave
	ret
/* end function donna_files_mkdir */

.text
.balign 16
.globl donna_files_delete
donna_files_delete:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_ffi_file_delete
	subq $-32, %rsp
	leave
	ret
/* end function donna_files_delete */

.text
.balign 16
.globl donna_files_copy
donna_files_copy:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_ffi_file_copy
	subq $-32, %rsp
	leave
	ret
/* end function donna_files_copy */

.text
.balign 16
.globl donna_files_list_dir
donna_files_list_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq donna_ffi_file_list_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq strlen
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb20
	subq $32, %rsp
	leaq donna_nil(%rip), %r9
	movl $0, %r8d
	movl $0, %edx
	callq donna_files_split_lines
	subq $-32, %rsp
	jmp Lbb21
Lbb20:
	leaq donna_nil(%rip), %rax
Lbb21:
	popq %rsi
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %r9, %rbx
	movq %r8, %r12
	movq %rdx, %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	callq strlen
	movq %r12, %r8
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq %rax, %r8
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	setz %dil
	movzbq %dil, %rdi
	movq %r8, %rdx
	subq %rsi, %rdx
	movq %rcx, %rax
	addq %rsi, %rax
	cmpl $0, %edi
	jnz Lbb27
	movzbq (%rcx, %r8, 1), %rdi
	cmpq $10, %rdi
	setz %r9b
	movzbq %r9b, %r9
	movq %rsi, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %r9
	movq %r8, %r12
	setz %r8b
	movzbq %r8b, %r8
	movq %r12, %r13
	addq $1, %r13
	cmpl $0, %r8d
	jnz Lbb25
	subq $32, %rsp
	movq %rbx, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	movq %rcx, %rbx
	callq donna_files_split_lines
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb32
Lbb25:
	movq %rbx, %rdi
	movq %rcx, %rbx
	movq %rax, %rcx
	subq $32, %rsp
	callq strndup
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	movq $1, (%r9)
	movq %rbx, 8(%r9)
	movq %rdi, 16(%r9)
	subq $32, %rsp
	movq %rdx, %r8
	callq donna_files_split_lines
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb32
Lbb27:
	movq %rax, %rcx
	movq %rbx, %rdi
	cmpq %r8, %rsi
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb30
	subq $32, %rsp
	callq strndup
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rbx, 8(%rcx)
	movq %rdi, 16(%rcx)
	subq $32, %rsp
	callq donna_files_reverse
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb32
Lbb30:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_files_reverse
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb32:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_files_split_lines */

.text
.balign 16
donna_files_reverse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq donna_files_reverse_acc
	subq $-32, %rsp
	leave
	ret
/* end function donna_files_reverse */

.text
.balign 16
donna_files_reverse_acc:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq %rax, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb37
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rdx
	movq %rdi, %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rsi, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq donna_files_reverse_acc
	subq $-32, %rsp
	jmp Lbb38
Lbb37:
	movq %rdi, %rax
Lbb38:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_files_reverse_acc */

.text
.balign 16
.globl donna_files_join
donna_files_join:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str81(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function donna_files_join */

.text
.balign 16
.globl donna_files_basename
donna_files_basename:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movl $0, %r8d
	movl $0, %edx
	callq donna_files_last_segment
	subq $-32, %rsp
	leave
	ret
/* end function donna_files_basename */

.text
.balign 16
donna_files_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq %rdx, %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	callq strlen
	movq %rbx, %r8
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq %rax, %r8
	setz %dl
	movzbq %dl, %rdx
	cmpq $1, %rdx
	jz Lbb47
	movzbq (%rcx, %r8, 1), %rax
	cmpq $47, %rax
	setz %al
	movzbq %al, %rax
	movq %rsi, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %r8, %rdx
	addq $1, %rdx
	cmpl $0, %eax
	jnz Lbb46
	subq $32, %rsp
	movq %rdx, %r8
	movq %rdi, %rdx
	callq donna_files_last_segment
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb48
Lbb46:
	subq $32, %rsp
	movq %rdx, %r8
	callq donna_files_last_segment
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb48
Lbb47:
	movq %rax, %rdx
	subq %rsi, %rdx
	addq %rsi, %rcx
	subq $32, %rsp
	callq strndup
	subq $-32, %rsp
Lbb48:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_files_last_segment */

.text
.balign 16
.globl donna_files_dirname
donna_files_dirname:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq strlen
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rax, %rdx
	subq $1, %rdx
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_files_find_last_slash
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	cmpq $-1, %rdx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb51
	subq $32, %rsp
	callq strndup
	subq $-32, %rsp
	jmp Lbb52
Lbb51:
	leaq str120(%rip), %rax
Lbb52:
	popq %rsi
	leave
	ret
/* end function donna_files_dirname */

.text
.balign 16
donna_files_find_last_slash:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rax
	cmpq $0, %rax
	setl %dl
	movzbq %dl, %rdx
	cmpq $1, %rdx
	jz Lbb57
	movzbq (%rcx, %rax, 1), %rdx
	cmpq $47, %rdx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb56
	movq %rax, %rdx
	subq $1, %rdx
	subq $32, %rsp
	callq donna_files_find_last_slash
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb58
Lbb56:
	movq %rax, (%rsi)
	jmp Lbb58
Lbb57:
	movq $-1, %rax
Lbb58:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function donna_files_find_last_slash */

.text
.balign 16
.globl donna_files_extension
donna_files_extension:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq donna_files_basename
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strlen
	subq $-32, %rsp
	movq %rax, %rdx
	subq $1, %rdx
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_files_find_last_dot
	movq %rax, %rdi
	subq $-32, %rsp
	cmpq $-1, %rdi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb61
	subq $32, %rsp
	movq %rsi, %rcx
	callq strlen
	subq $-32, %rsp
	movq %rax, %rdx
	subq %rdi, %rdx
	movq %rsi, %rcx
	addq %rdi, %rcx
	subq $32, %rsp
	callq strndup
	subq $-32, %rsp
	jmp Lbb62
Lbb61:
	leaq str154(%rip), %rax
Lbb62:
	popq %rdi
	popq %rsi
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rcx, %rdi
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_files_basename
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_files_dirname
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	callq strlen
	movq %rbx, %rcx
	subq $-32, %rsp
	movq %rax, %rdx
	subq $1, %rdx
	subq $32, %rsp
	movq %rcx, %rbx
	callq donna_files_find_last_dot
	movq %rbx, %rcx
	movq %rax, %rdx
	movq %rdi, %rax
	subq $-32, %rsp
	cmpq $-1, %rdx
	setz %dil
	movzbq %dil, %rdi
	cmpq $1, %rdi
	jz Lbb68
	subq $32, %rsp
	callq strndup
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str174(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	cmpq $0, %rdx
	movq %rax, %rdi
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb66
	subq $32, %rsp
	leaq str182(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	movq %rdi, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %rax, %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb68
Lbb66:
	movq %rdi, %rax
	movq %rax, (%rsi)
Lbb68:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_files_drop_extension */

.text
.balign 16
donna_files_find_last_dot:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rax
	cmpq $0, %rax
	setl %dl
	movzbq %dl, %rdx
	cmpq $1, %rdx
	jz Lbb73
	movzbq (%rcx, %rax, 1), %rdx
	cmpq $46, %rdx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb72
	movq %rax, %rdx
	subq $1, %rdx
	subq $32, %rsp
	callq donna_files_find_last_dot
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb74
Lbb72:
	movq %rax, (%rsi)
	jmp Lbb74
Lbb73:
	movq $-1, %rax
Lbb74:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function donna_files_find_last_dot */

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

