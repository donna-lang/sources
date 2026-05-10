.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str81:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str120:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str154:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str174:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str182:
	.ascii "/"
	.byte 0
/* end data */

.text
.balign 16
.globl _donna_files_read
_donna_files_read:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_file_read
	leave
	ret
/* end function donna_files_read */

.text
.balign 16
.globl _donna_files_write
_donna_files_write:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_file_write
	leave
	ret
/* end function donna_files_write */

.text
.balign 16
.globl _donna_files_append
_donna_files_append:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_file_append
	leave
	ret
/* end function donna_files_append */

.text
.balign 16
.globl _donna_files_exists
_donna_files_exists:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_file_exists
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function donna_files_exists */

.text
.balign 16
.globl _donna_files_is_file
_donna_files_is_file:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_file_is_file
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function donna_files_is_file */

.text
.balign 16
.globl _donna_files_is_dir
_donna_files_is_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_file_is_dir
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function donna_files_is_dir */

.text
.balign 16
.globl _donna_files_mkdir
_donna_files_mkdir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_file_mkdir
	leave
	ret
/* end function donna_files_mkdir */

.text
.balign 16
.globl _donna_files_delete
_donna_files_delete:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_file_delete
	leave
	ret
/* end function donna_files_delete */

.text
.balign 16
.globl _donna_files_copy
_donna_files_copy:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_file_copy
	leave
	ret
/* end function donna_files_copy */

.text
.balign 16
.globl _donna_files_list_dir
_donna_files_list_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _donna_ffi_file_list_dir
	movq %rax, %rdi
	movq %rdi, %rbx
	callq _strlen
	movq %rbx, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb20
	leaq _donna_nil(%rip), %rcx
	movl $0, %edx
	movl $0, %esi
	callq _donna_files_split_lines
	jmp Lbb21
Lbb20:
	leaq _donna_nil(%rip), %rax
Lbb21:
	popq %rbx
	leave
	ret
/* end function donna_files_list_dir */

.text
.balign 16
_donna_files_split_lines:
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
	callq _strlen
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
	jnz Lbb27
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
	jnz Lbb25
	movq %r13, %rcx
	movq %r15, %rdx
	movq %r12, %rsi
	movq %rdi, %r13
	callq _donna_files_split_lines
	movq %rax, (%rbx)
	jmp Lbb32
Lbb25:
	movq %r13, %r12
	movq %rdi, %r13
	movq %rax, %rdi
	callq _strndup
	movq %r13, %rdi
	movq %rax, %r13
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rcx
	movq $1, (%rcx)
	movq %r13, 8(%rcx)
	movq %r12, 16(%rcx)
	movq %rsi, %rdx
	callq _donna_files_split_lines
	movq %rax, (%rbx)
	jmp Lbb32
Lbb27:
	movq %rax, %rdi
	movq %r13, %r12
	cmpq %rdx, %rbx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb30
	callq _strndup
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r13, 8(%rdi)
	movq %r12, 16(%rdi)
	callq _donna_files_reverse
	movq %rax, (%rbx)
	jmp Lbb32
Lbb30:
	movq %r12, %rdi
	callq _donna_files_reverse
	movq %rax, (%rbx)
Lbb32:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_files_split_lines */

.text
.balign 16
_donna_files_reverse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rsi
	callq _donna_files_reverse_acc
	leave
	ret
/* end function donna_files_reverse */

.text
.balign 16
_donna_files_reverse_acc:
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
	jz Lbb37
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	movq $1, (%rsi)
	movq %rbx, 8(%rsi)
	movq %rax, 16(%rsi)
	callq _donna_files_reverse_acc
	jmp Lbb38
Lbb37:
	movq %r12, %rax
Lbb38:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_files_reverse_acc */

.text
.balign 16
.globl _donna_files_join
_donna_files_join:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	leaq _str81(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	popq %rbx
	leave
	ret
/* end function donna_files_join */

.text
.balign 16
.globl _donna_files_basename
_donna_files_basename:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %edx
	movl $0, %esi
	callq _donna_files_last_segment
	leave
	ret
/* end function donna_files_basename */

.text
.balign 16
_donna_files_last_segment:
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
	callq _strlen
	movq %r13, %rdx
	movq %r12, %rdi
	cmpq %rax, %rdx
	setz %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz Lbb47
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
	jnz Lbb46
	movq %rsi, %rdx
	movq %r12, %rsi
	callq _donna_files_last_segment
	movq %rax, (%rbx)
	jmp Lbb48
Lbb46:
	movq %rsi, %rdx
	callq _donna_files_last_segment
	movq %rax, (%rbx)
	jmp Lbb48
Lbb47:
	movq %rax, %rsi
	subq %rbx, %rsi
	addq %rbx, %rdi
	callq _strndup
Lbb48:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_files_last_segment */

.text
.balign 16
.globl _donna_files_dirname
_donna_files_dirname:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _strlen
	movq %rbx, %rdi
	movq %rax, %rsi
	subq $1, %rsi
	movq %rdi, %rbx
	callq _donna_files_find_last_slash
	movq %rbx, %rdi
	movq %rax, %rsi
	cmpq $-1, %rsi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb51
	callq _strndup
	jmp Lbb52
Lbb51:
	leaq _str120(%rip), %rax
Lbb52:
	popq %rbx
	leave
	ret
/* end function donna_files_dirname */

.text
.balign 16
_donna_files_find_last_slash:
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
	jz Lbb57
	movzbq (%rdi, %rax, 1), %rcx
	cmpq $47, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb56
	movq %rax, %rsi
	subq $1, %rsi
	callq _donna_files_find_last_slash
	movq %rax, (%rbx)
	jmp Lbb58
Lbb56:
	movq %rax, (%rbx)
	jmp Lbb58
Lbb57:
	movq $-1, %rax
Lbb58:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function donna_files_find_last_slash */

.text
.balign 16
.globl _donna_files_extension
_donna_files_extension:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	callq _donna_files_basename
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _strlen
	movq %rax, %rsi
	subq $1, %rsi
	movq %rbx, %rdi
	callq _donna_files_find_last_dot
	movq %rax, %r12
	cmpq $-1, %r12
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb61
	movq %rbx, %rdi
	callq _strlen
	movq %rax, %rsi
	subq %r12, %rsi
	movq %rbx, %rdi
	addq %r12, %rdi
	callq _strndup
	jmp Lbb62
Lbb61:
	leaq _str154(%rip), %rax
Lbb62:
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_files_extension */

.text
.balign 16
.globl _donna_files_drop_extension
_donna_files_drop_extension:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %r12
	movq %r12, %rdi
	callq _donna_files_basename
	movq %rax, %rdi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _donna_files_dirname
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r13
	callq _strlen
	movq %r13, %rdi
	movq %rax, %rsi
	subq $1, %rsi
	movq %rdi, %r13
	callq _donna_files_find_last_dot
	movq %r13, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	cmpq $-1, %rsi
	setz %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz Lbb68
	callq _strndup
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq _str174(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
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
	jz Lbb66
	leaq _str182(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	movq %r12, %rax
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb68
Lbb66:
	movq %r12, %rax
	movq %rax, (%rbx)
Lbb68:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_files_drop_extension */

.text
.balign 16
_donna_files_find_last_dot:
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
	jz Lbb73
	movzbq (%rdi, %rax, 1), %rcx
	cmpq $46, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb72
	movq %rax, %rsi
	subq $1, %rsi
	callq _donna_files_find_last_dot
	movq %rax, (%rbx)
	jmp Lbb74
Lbb72:
	movq %rax, (%rbx)
	jmp Lbb74
Lbb73:
	movq $-1, %rax
Lbb74:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function donna_files_find_last_dot */

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

