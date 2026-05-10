.data
.balign 8
.globl donna_dict_Empty
donna_dict_Empty:
	.quad 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl donna_dict_Entry
donna_dict_Entry:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $32, %ecx
	callq malloc
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_dict_Entry */

.text
.balign 16
.globl donna_dict_new
donna_dict_new:
	endbr64
	leaq donna_dict_Empty(%rip), %rax
	ret
/* end function donna_dict_new */

.text
.balign 16
.globl donna_dict_insert
donna_dict_insert:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r9, %r14
	movq %r8, %rbx
	movq %rcx, %rax
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb9
	movq 8(%rax), %rcx
	movq 16(%rax), %rdx
	movq 24(%rax), %r13
	subq $32, %rsp
	movq %rdx, %r12
	movq %rcx, %rdx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq *%r14
	movq %r14, %r9
	movq %r13, %r8
	movq %r12, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb7
	subq $32, %rsp
	movq %r8, %r12
	movq %rbx, %r8
	movq %rdx, %rbx
	movq %rdi, %rdx
	movq %rcx, %rdi
	movq %r12, %rcx
	callq donna_dict_insert
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_dict_Entry
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb11
Lbb7:
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_dict_Entry
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb11
Lbb9:
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $32, %rsp
	leaq donna_dict_Empty(%rip), %r8
	callq donna_dict_Entry
	subq $-32, %rsp
Lbb11:
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
/* end function donna_dict_insert */

.text
.balign 16
.globl donna_dict_get
donna_dict_get:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %r9, %r13
	movq %r8, %rax
	movq %rax, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb17
	movq %rdx, %r12
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rdi
	movq 24(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r12, %rcx
	callq *%r13
	movq %r13, %r9
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %r8
	jz Lbb15
	subq $32, %rsp
	movq %rax, %r8
	callq donna_dict_get
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb18
Lbb15:
	movq %rdi, %rax
	movq %rax, (%rsi)
	jmp Lbb18
Lbb17:
	movq %rsi, %rax
Lbb18:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_dict_get */

.text
.balign 16
.globl donna_dict_has_key
donna_dict_has_key:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb24
	movq %rdx, %rdi
	movq 8(%rcx), %rdx
	movq 24(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq *%rbx
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb22
	subq $32, %rsp
	callq donna_dict_has_key
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb25
Lbb22:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb25
Lbb24:
	movl $0, %eax
Lbb25:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_dict_has_key */

.text
.balign 16
.globl donna_dict_delete
donna_dict_delete:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %r8, %r13
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb30
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	movq 24(%rax), %rsi
	subq $32, %rsp
	movq %rdx, %r12
	movq %rcx, %rdx
	movq %rcx, %rdi
	movq %r12, %rcx
	callq *%r13
	movq %r13, %r8
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb29
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq donna_dict_delete
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_dict_Entry
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb31
Lbb29:
	movq %rax, (%rsi)
	jmp Lbb31
Lbb30:
	leaq donna_dict_Empty(%rip), %rax
Lbb31:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_dict_delete */

.text
.balign 16
.globl donna_dict_size
donna_dict_size:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb34
	movq 24(%rcx), %rcx
	subq $32, %rsp
	callq donna_dict_size
	subq $-32, %rsp
	addq $1, %rax
	jmp Lbb35
Lbb34:
	movl $0, %eax
Lbb35:
	leave
	ret
/* end function donna_dict_size */

.text
.balign 16
.globl donna_dict_is_empty
donna_dict_is_empty:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_dict_is_empty */

.text
.balign 16
.globl donna_dict_keys
donna_dict_keys:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb40
	movq 8(%rcx), %rdi
	movq 24(%rcx), %rcx
	subq $32, %rsp
	callq donna_dict_keys
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb41
Lbb40:
	leaq donna_nil(%rip), %rax
Lbb41:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_dict_keys */

.text
.balign 16
.globl donna_dict_values
donna_dict_values:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb44
	movq 16(%rcx), %rdi
	movq 24(%rcx), %rcx
	subq $32, %rsp
	callq donna_dict_values
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb45
Lbb44:
	leaq donna_nil(%rip), %rax
Lbb45:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_dict_values */

.text
.balign 16
.globl donna_dict_to_list
donna_dict_to_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb48
	movq 8(%rcx), %r12
	movq 16(%rcx), %rbx
	movq 24(%rcx), %rcx
	subq $32, %rsp
	callq donna_dict_to_list
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb49
Lbb48:
	leaq donna_nil(%rip), %rax
Lbb49:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_dict_to_list */

.text
.balign 16
.globl donna_dict_from_list
donna_dict_from_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb52
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rdi, %rdx
	callq donna_dict_from_list
	movq %rdi, %r9
	movq %rax, %rcx
	subq $-32, %rsp
	movq (%rsi), %rdx
	movq 8(%rsi), %r8
	subq $32, %rsp
	callq donna_dict_insert
	subq $-32, %rsp
	jmp Lbb53
Lbb52:
	leaq donna_dict_Empty(%rip), %rax
Lbb53:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_dict_from_list */

.text
.balign 16
.globl donna_dict_merge
donna_dict_merge:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb56
	movq 8(%rcx), %rdx
	movq %r8, %rdi
	movq 16(%rcx), %r8
	movq 24(%rcx), %rsi
	subq $32, %rsp
	movq %rdi, %r9
	movq %rax, %rcx
	callq donna_dict_insert
	movq %rdi, %r8
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_dict_merge
	subq $-32, %rsp
Lbb56:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_dict_merge */

.text
.balign 16
.globl donna_dict_map_values
donna_dict_map_values:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rbx
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb59
	movq 8(%rax), %rsi
	movq 16(%rax), %rcx
	movq 24(%rax), %rdi
	subq $32, %rsp
	callq *%rbx
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_dict_map_values
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_dict_Entry
	subq $-32, %rsp
	jmp Lbb60
Lbb59:
	leaq donna_dict_Empty(%rip), %rax
Lbb60:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_dict_map_values */

.text
.balign 16
.globl donna_dict_filter
donna_dict_filter:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb65
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rbx
	movq 24(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %r12
	movq %rbx, %rdx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq *%r12
	movq %r12, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb64
	subq $32, %rsp
	callq donna_dict_filter
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb66
Lbb64:
	subq $32, %rsp
	callq donna_dict_filter
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_dict_Entry
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb66
Lbb65:
	leaq donna_dict_Empty(%rip), %rax
Lbb66:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_dict_filter */

.text
.balign 16
.globl donna_dict_fold
donna_dict_fold:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb69
	movq 8(%rcx), %rdx
	movq %r8, %rdi
	movq 16(%rcx), %r8
	movq 24(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq *%rdi
	movq %rdi, %r8
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_dict_fold
	subq $-32, %rsp
Lbb69:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_dict_fold */

.text
.balign 16
.globl donna_dict_find_keys
donna_dict_find_keys:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb74
	movq 8(%rcx), %rbx
	movq %rdx, %rdi
	movq 16(%rcx), %rdx
	movq 24(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq *%rdi
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb73
	subq $32, %rsp
	callq donna_dict_find_keys
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb75
Lbb73:
	subq $32, %rsp
	callq donna_dict_find_keys
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb75
Lbb74:
	leaq donna_nil(%rip), %rax
Lbb75:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_dict_find_keys */

.text
.balign 16
.globl donna_dict_update
donna_dict_update:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r9, %r14
	movq %r8, %r13
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb81
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	movq 24(%rax), %r12
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rcx, %rdx
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq *%r14
	movq %r14, %r9
	movq %r13, %r8
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb79
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r12, %rcx
	callq donna_dict_update
	movq %rbx, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rdx
	movq %rcx, %rdi
	callq donna_dict_Entry
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb82
Lbb79:
	movq %r12, %rbx
	xchgq %rdi, %rcx
	subq $32, %rsp
	callq *%r8
	movq %rbx, %r8
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_dict_Entry
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb82
Lbb81:
	leaq donna_dict_Empty(%rip), %rax
Lbb82:
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
/* end function donna_dict_update */

