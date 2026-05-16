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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_Entry, @function
.size donna_dict_Entry, .-donna_dict_Entry
/* end function donna_dict_Entry */

.text
.balign 16
.globl donna_dict_new
donna_dict_new:
	endbr64
	leaq donna_dict_Empty(%rip), %rax
	ret
.type donna_dict_new, @function
.size donna_dict_new, .-donna_dict_new
/* end function donna_dict_new */

.text
.balign 16
.globl donna_dict_insert
donna_dict_insert:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r15
	movq %rdx, %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb9
	movq 8(%rdi), %r14
	movq 16(%rdi), %rbx
	movq %rbx, -16(%rbp)
	movq 24(%rdi), %r12
	movq %rsi, %rbx
	movq %r14, %rsi
	movq %rbx, %rdi
	callq *%r15
	movq %r15, %rcx
	movq %r13, %rdx
	movq %rbx, %rsi
	movq -16(%rbp), %r13
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb7
	movq %r12, %rdi
	callq donna_dict_insert
	movq %rax, %r12
	movl $32, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %r12, 24(%rax)
	movq %rax, (%rbx)
	jmp .Lbb11
.Lbb7:
	movq %rdx, %r14
	movq %rsi, %r13
	movl $32, %edi
	callq malloc
	movq %r14, %rdx
	movq %r13, %rsi
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r12, 24(%rax)
	movq %rax, (%rbx)
	jmp .Lbb11
.Lbb9:
	movq %r13, %r12
	movq %rsi, %rbx
	movl $32, %edi
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rsi
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	movq %rdx, 16(%rax)
	leaq donna_dict_Empty(%rip), %rcx
	movq %rcx, 24(%rax)
.Lbb11:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_insert, @function
.size donna_dict_insert, .-donna_dict_insert
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
	pushq %r14
	pushq %r15
	movq %rcx, %r15
	movq %rdx, %rax
	movq %rax, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb17
	movq %rsi, %r14
	movq 8(%rdi), %rsi
	movq 16(%rdi), %r12
	movq 24(%rdi), %rdi
	movq %rdi, %r13
	movq %r14, %rdi
	callq *%r15
	movq %r15, %rcx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rdx
	jz .Lbb15
	movq %rax, %rdx
	callq donna_dict_get
	movq %rax, (%rbx)
	jmp .Lbb18
.Lbb15:
	movq %r12, %rax
	movq %rax, (%rbx)
	jmp .Lbb18
.Lbb17:
	movq %rbx, %rax
.Lbb18:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_get, @function
.size donna_dict_get, .-donna_dict_get
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb24
	movq %rsi, %r12
	movq 8(%rdi), %rsi
	movq 24(%rdi), %rdi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq *%r13
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb22
	callq donna_dict_has_key
	movq %rax, (%rbx)
	jmp .Lbb25
.Lbb22:
	movq $1, (%rbx)
	movl $1, %eax
	jmp .Lbb25
.Lbb24:
	movl $0, %eax
.Lbb25:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_has_key, @function
.size donna_dict_has_key, .-donna_dict_has_key
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
	pushq %r14
	pushq %r15
	movq %rdx, %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb30
	movq 8(%rdi), %r14
	movq 16(%rdi), %r13
	movq 24(%rdi), %rbx
	movq %rsi, %r12
	movq %r14, %rsi
	movq %r12, %rdi
	callq *%r15
	movq %r15, %rdx
	movq %r12, %rsi
	movq %rax, %rcx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz .Lbb29
	movq %rax, %rdi
	callq donna_dict_delete
	movq %rax, %r12
	movl $32, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %r12, 24(%rax)
	movq %rax, (%rbx)
	jmp .Lbb31
.Lbb29:
	movq %rax, (%rbx)
	jmp .Lbb31
.Lbb30:
	leaq donna_dict_Empty(%rip), %rax
.Lbb31:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_delete, @function
.size donna_dict_delete, .-donna_dict_delete
/* end function donna_dict_delete */

.text
.balign 16
.globl donna_dict_size
donna_dict_size:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb34
	movq 24(%rdi), %rdi
	callq donna_dict_size
	addq $1, %rax
	jmp .Lbb35
.Lbb34:
	movl $0, %eax
.Lbb35:
	leave
	ret
.type donna_dict_size, @function
.size donna_dict_size, .-donna_dict_size
/* end function donna_dict_size */

.text
.balign 16
.globl donna_dict_is_empty
donna_dict_is_empty:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
.type donna_dict_is_empty, @function
.size donna_dict_is_empty, .-donna_dict_is_empty
/* end function donna_dict_is_empty */

.text
.balign 16
.globl donna_dict_keys
donna_dict_keys:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb40
	movq 8(%rdi), %r12
	movq 24(%rdi), %rdi
	callq donna_dict_keys
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb41
.Lbb40:
	leaq donna_nil(%rip), %rax
.Lbb41:
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_keys, @function
.size donna_dict_keys, .-donna_dict_keys
/* end function donna_dict_keys */

.text
.balign 16
.globl donna_dict_values
donna_dict_values:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb44
	movq 16(%rdi), %r12
	movq 24(%rdi), %rdi
	callq donna_dict_values
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb45
.Lbb44:
	leaq donna_nil(%rip), %rax
.Lbb45:
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_values, @function
.size donna_dict_values, .-donna_dict_values
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
	pushq %r13
	pushq %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb48
	movq 8(%rdi), %r14
	movq 16(%rdi), %r13
	movq 24(%rdi), %rdi
	callq donna_dict_to_list
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb49
.Lbb48:
	leaq donna_nil(%rip), %rax
.Lbb49:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_to_list, @function
.size donna_dict_to_list, .-donna_dict_to_list
/* end function donna_dict_to_list */

.text
.balign 16
.globl donna_dict_from_list
donna_dict_from_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb52
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %r12, %rsi
	callq donna_dict_from_list
	movq %r12, %rcx
	movq %rax, %rdi
	movq (%rbx), %rsi
	movq 8(%rbx), %rdx
	callq donna_dict_insert
	jmp .Lbb53
.Lbb52:
	leaq donna_dict_Empty(%rip), %rax
.Lbb53:
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_from_list, @function
.size donna_dict_from_list, .-donna_dict_from_list
/* end function donna_dict_from_list */

.text
.balign 16
.globl donna_dict_merge
donna_dict_merge:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rcx
	movq %rdi, %rax
	movq (%rcx), %rsi
	cmpq $0, %rsi
	jz .Lbb56
	movq 8(%rcx), %rsi
	movq %rdx, %r12
	movq 16(%rcx), %rdx
	movq 24(%rcx), %rbx
	movq %r12, %rcx
	movq %rax, %rdi
	callq donna_dict_insert
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	callq donna_dict_merge
.Lbb56:
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_merge, @function
.size donna_dict_merge, .-donna_dict_merge
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
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb59
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq 24(%rax), %rbx
	callq *%r12
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r12
	callq donna_dict_map_values
	movq %rax, %rbx
	movl $32, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rbx, 24(%rax)
	jmp .Lbb60
.Lbb59:
	leaq donna_dict_Empty(%rip), %rax
.Lbb60:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_map_values, @function
.size donna_dict_map_values, .-donna_dict_map_values
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
	pushq %r13
	pushq %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb65
	movq 8(%rdi), %r14
	movq 16(%rdi), %r13
	movq 24(%rdi), %rdi
	movq %rsi, %r12
	movq %r13, %rsi
	movq %rdi, %rbx
	movq %r14, %rdi
	callq *%r12
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb64
	callq donna_dict_filter
	movq %rax, (%rbx)
	jmp .Lbb66
.Lbb64:
	callq donna_dict_filter
	movq %rax, %r12
	movl $32, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %r12, 24(%rax)
	movq %rax, (%rbx)
	jmp .Lbb66
.Lbb65:
	leaq donna_dict_Empty(%rip), %rax
.Lbb66:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_filter, @function
.size donna_dict_filter, .-donna_dict_filter
/* end function donna_dict_filter */

.text
.balign 16
.globl donna_dict_fold
donna_dict_fold:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz .Lbb69
	movq 8(%rdi), %rsi
	movq %rdx, %r12
	movq 16(%rdi), %rdx
	movq 24(%rdi), %rdi
	movq %rdi, %rbx
	movq %rax, %rdi
	callq *%r12
	movq %r12, %rdx
	movq %rbx, %rdi
	movq %rax, %rsi
	callq donna_dict_fold
.Lbb69:
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_fold, @function
.size donna_dict_fold, .-donna_dict_fold
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
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb74
	movq 8(%rdi), %r13
	movq %rsi, %r12
	movq 16(%rdi), %rsi
	movq 24(%rdi), %rdi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq *%r12
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb73
	callq donna_dict_find_keys
	movq %rax, (%rbx)
	jmp .Lbb75
.Lbb73:
	callq donna_dict_find_keys
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb75
.Lbb74:
	leaq donna_nil(%rip), %rax
.Lbb75:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_find_keys, @function
.size donna_dict_find_keys, .-donna_dict_find_keys
/* end function donna_dict_find_keys */

.text
.balign 16
.globl donna_dict_update
donna_dict_update:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r13
	movq %rdi, %rax
	movq %rcx, %r15
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb81
	movq 8(%rax), %r14
	movq 16(%rax), %rdi
	movq 24(%rax), %r12
	movq %r12, -16(%rbp)
	movq %rsi, %r12
	movq %r14, %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq *%r15
	movq %r15, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq -16(%rbp), %r13
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb79
	movq %rdi, %r12
	movq %r13, %rdi
	callq donna_dict_update
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movl $32, %edi
	callq malloc
	movq %r13, %rdi
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rdi, 16(%rax)
	movq %r12, 24(%rax)
	movq %rax, (%rbx)
	jmp .Lbb82
.Lbb79:
	movq %r13, %r12
	callq *%rdx
	movq %rax, %r13
	movl $32, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %r12, 24(%rax)
	movq %rax, (%rbx)
	jmp .Lbb82
.Lbb81:
	leaq donna_dict_Empty(%rip), %rax
.Lbb82:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_dict_update, @function
.size donna_dict_update, .-donna_dict_update
/* end function donna_dict_update */

.section .note.GNU-stack,"",@progbits
