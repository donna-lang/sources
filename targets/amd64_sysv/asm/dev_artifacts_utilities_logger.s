.data
.balign 8
str0:
	.ascii "Compiling"
	.byte 0
/* end data */

.data
.balign 8
str3:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str4:
	.ascii "Fetching"
	.byte 0
/* end data */

.data
.balign 8
str7:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str11:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str12:
	.ascii "Compiled"
	.byte 0
/* end data */

.data
.balign 8
str14:
	.ascii "in "
	.byte 0
/* end data */

.data
.balign 8
str19:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str20:
	.ascii "Formatting"
	.byte 0
/* end data */

.data
.balign 8
str23:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str24:
	.ascii "Formatted"
	.byte 0
/* end data */

.data
.balign 8
str26:
	.ascii "in "
	.byte 0
/* end data */

.data
.balign 8
str31:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str32:
	.ascii "Generated"
	.byte 0
/* end data */

.data
.balign 8
str34:
	.ascii "in "
	.byte 0
/* end data */

.data
.balign 8
str39:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str40:
	.ascii "Cleaning"
	.byte 0
/* end data */

.data
.balign 8
str44:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str45:
	.ascii "Cleaned"
	.byte 0
/* end data */

.data
.balign 8
str47:
	.ascii "in "
	.byte 0
/* end data */

.data
.balign 8
str52:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str53:
	.ascii "Checking"
	.byte 0
/* end data */

.data
.balign 8
str56:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str57:
	.ascii "Checked"
	.byte 0
/* end data */

.data
.balign 8
str59:
	.ascii "in "
	.byte 0
/* end data */

.data
.balign 8
str64:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str66:
	.byte 226
	.byte 134
	.byte 146
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str70:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str76:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str78:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str81:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str82:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
str84:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str87:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str88:
	.ascii "  hint: "
	.byte 0
/* end data */

.data
.balign 8
str91:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str92:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str95:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str102:
	.ascii "Donna found "
	.byte 0
/* end data */

.data
.balign 8
str105:
	.ascii " error(s) and "
	.byte 0
/* end data */

.data
.balign 8
str109:
	.ascii " warning(s)."
	.byte 0
/* end data */

.data
.balign 8
str111:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str118:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str119:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str120:
	.ascii "Donna found "
	.byte 0
/* end data */

.data
.balign 8
str123:
	.ascii " error(s) and "
	.byte 0
/* end data */

.data
.balign 8
str127:
	.ascii " warning(s)."
	.byte 0
/* end data */

.data
.balign 8
str129:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str132:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str155:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str156:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str168:
	.ascii "us"
	.byte 0
/* end data */

.data
.balign 8
str189:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
str195:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str198:
	.ascii "ms"
	.byte 0
/* end data */

.data
.balign 8
str209:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
str215:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str218:
	.ascii "s"
	.byte 0
/* end data */

.text
.balign 16
.globl utilities_logger_step
utilities_logger_step:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str0(%rip), %rdi
	callq utilities_logger_action
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str3(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %rbx
	leave
	ret
.type utilities_logger_step, @function
.size utilities_logger_step, .-utilities_logger_step
/* end function utilities_logger_step */

.text
.balign 16
.globl utilities_logger_fetch
utilities_logger_fetch:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rbx
	movq %rdi, %r12
	leaq str4(%rip), %rdi
	callq utilities_logger_action
	movq %r12, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rdi, %rbx
	leaq str7(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str11(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_logger_fetch, @function
.size utilities_logger_fetch, .-utilities_logger_fetch
/* end function utilities_logger_fetch */

.text
.balign 16
.globl utilities_logger_ok
utilities_logger_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rdi
	movq %rdi, %rbx
	leaq str12(%rip), %rdi
	callq utilities_logger_action
	movq %rax, %rdi
	leaq str14(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_logger_format_duration
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str19(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %rbx
	leave
	ret
.type utilities_logger_ok, @function
.size utilities_logger_ok, .-utilities_logger_ok
/* end function utilities_logger_ok */

.text
.balign 16
.globl utilities_logger_formatting
utilities_logger_formatting:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str20(%rip), %rdi
	callq utilities_logger_action
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str23(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %rbx
	leave
	ret
.type utilities_logger_formatting, @function
.size utilities_logger_formatting, .-utilities_logger_formatting
/* end function utilities_logger_formatting */

.text
.balign 16
.globl utilities_logger_fmt_ok
utilities_logger_fmt_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str24(%rip), %rdi
	callq utilities_logger_action
	movq %rax, %rdi
	leaq str26(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_logger_format_duration
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str31(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %rbx
	leave
	ret
.type utilities_logger_fmt_ok, @function
.size utilities_logger_fmt_ok, .-utilities_logger_fmt_ok
/* end function utilities_logger_fmt_ok */

.text
.balign 16
.globl utilities_logger_docs_ok
utilities_logger_docs_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str32(%rip), %rdi
	callq utilities_logger_action
	movq %rax, %rdi
	leaq str34(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_logger_format_duration
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str39(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %rbx
	leave
	ret
.type utilities_logger_docs_ok, @function
.size utilities_logger_docs_ok, .-utilities_logger_docs_ok
/* end function utilities_logger_docs_ok */

.text
.balign 16
.globl utilities_logger_cleaning
utilities_logger_cleaning:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str40(%rip), %rdi
	callq utilities_logger_action
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_colors_path
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str44(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %rbx
	leave
	ret
.type utilities_logger_cleaning, @function
.size utilities_logger_cleaning, .-utilities_logger_cleaning
/* end function utilities_logger_cleaning */

.text
.balign 16
.globl utilities_logger_clean_ok
utilities_logger_clean_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str45(%rip), %rdi
	callq utilities_logger_action
	movq %rax, %rdi
	leaq str47(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_logger_format_duration
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str52(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %rbx
	leave
	ret
.type utilities_logger_clean_ok, @function
.size utilities_logger_clean_ok, .-utilities_logger_clean_ok
/* end function utilities_logger_clean_ok */

.text
.balign 16
.globl utilities_logger_checking
utilities_logger_checking:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str53(%rip), %rdi
	callq utilities_logger_action
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str56(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %rbx
	leave
	ret
.type utilities_logger_checking, @function
.size utilities_logger_checking, .-utilities_logger_checking
/* end function utilities_logger_checking */

.text
.balign 16
.globl utilities_logger_check_ok
utilities_logger_check_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str57(%rip), %rdi
	callq utilities_logger_action
	movq %rax, %rdi
	leaq str59(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_logger_format_duration
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str64(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %rbx
	leave
	ret
.type utilities_logger_check_ok, @function
.size utilities_logger_check_ok, .-utilities_logger_check_ok
/* end function utilities_logger_check_ok */

.text
.balign 16
.globl utilities_logger_success
utilities_logger_success:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdx, %rbx
	movq %rsi, %r12
	callq utilities_logger_action
	movq %rax, %rdi
	leaq str66(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq utilities_colors_path
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_logger_format_duration
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq str70(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str75(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_logger_success, @function
.size utilities_logger_success, .-utilities_logger_success
/* end function utilities_logger_success */

.text
.balign 16
.globl utilities_logger_error
utilities_logger_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str76(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str78(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str81(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %rbx
	leave
	ret
.type utilities_logger_error, @function
.size utilities_logger_error, .-utilities_logger_error
/* end function utilities_logger_error */

.text
.balign 16
.globl utilities_logger_warn
utilities_logger_warn:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str82(%rip), %rdi
	callq utilities_colors_yellow
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str84(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str87(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	popq %rbx
	leave
	ret
.type utilities_logger_warn, @function
.size utilities_logger_warn, .-utilities_logger_warn
/* end function utilities_logger_warn */

.text
.balign 16
.globl utilities_logger_hint
utilities_logger_hint:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq str88(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %rax, %rsi
	leaq str91(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	leave
	ret
.type utilities_logger_hint, @function
.size utilities_logger_hint, .-utilities_logger_hint
/* end function utilities_logger_hint */

.text
.balign 16
.globl utilities_logger_info
utilities_logger_info:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq str92(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %rax, %rsi
	leaq str95(%rip), %rdi
	movl $0, %eax
	callq printf
	movl $0, %eax
	leave
	ret
.type utilities_logger_info, @function
.size utilities_logger_info, .-utilities_logger_info
/* end function utilities_logger_info */

.text
.balign 16
.globl utilities_logger_summary
utilities_logger_summary:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	cmpq $0, %rax
	jz .Lbb34
	cmpq $0, %r12
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb33
	callq donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq str120(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str123(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str127(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str129(%rip), %rdi
	movl $0, %eax
	callq printf
	movq $0, (%rbx)
	jmp .Lbb36
.Lbb33:
	leaq str118(%rip), %rsi
	leaq str119(%rip), %rdi
	movl $0, %eax
	callq printf
	movq $0, (%rbx)
	jmp .Lbb36
.Lbb34:
	movq %r12, %rbx
	callq donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq str102(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str105(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str109(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rsi
	leaq str111(%rip), %rdi
	movl $0, %eax
	callq printf
.Lbb36:
	movl $0, %eax
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_logger_summary, @function
.size utilities_logger_summary, .-utilities_logger_summary
/* end function utilities_logger_summary */

.text
.balign 16
utilities_logger_action:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $10, %esi
	callq utilities_logger_pad_left
	movq %rax, %rsi
	leaq str132(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str135(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_orange
	leave
	ret
.type utilities_logger_action, @function
.size utilities_logger_action, .-utilities_logger_action
/* end function utilities_logger_action */

.text
.balign 16
utilities_logger_pad_left:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq donna_string_length
	movq %r12, %rsi
	cmpq %rsi, %rax
	setge %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz .Lbb42
	movq %rsi, %rdi
	subq %rax, %rdi
	callq utilities_logger_repeat_spaces
	movq %rax, %rdi
	movq %rbx, %rax
	movq %rax, %rsi
	callq __rt_str_concat
	jmp .Lbb43
.Lbb42:
	movq %rbx, %rax
.Lbb43:
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_logger_pad_left, @function
.size utilities_logger_pad_left, .-utilities_logger_pad_left
/* end function utilities_logger_pad_left */

.text
.balign 16
utilities_logger_repeat_spaces:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	cmpq $0, %rdi
	setle %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb46
	subq $1, %rdi
	callq utilities_logger_repeat_spaces
	movq %rax, %rsi
	leaq str156(%rip), %rdi
	callq __rt_str_concat
	jmp .Lbb47
.Lbb46:
	leaq str155(%rip), %rax
.Lbb47:
	leave
	ret
.type utilities_logger_repeat_spaces, @function
.size utilities_logger_repeat_spaces, .-utilities_logger_repeat_spaces
/* end function utilities_logger_repeat_spaces */

.text
.balign 16
utilities_logger_format_duration:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	cmpq $1000, %rdi
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb52
	cmpq $1000000, %rdi
	setl %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb51
	callq utilities_logger_format_seconds
	movq %rax, (%rbx)
	jmp .Lbb53
.Lbb51:
	callq utilities_logger_format_ms
	movq %rax, (%rbx)
	jmp .Lbb53
.Lbb52:
	callq donna_int_to_string
	movq %rax, %rdi
	leaq str168(%rip), %rsi
	callq __rt_str_concat
.Lbb53:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type utilities_logger_format_duration, @function
.size utilities_logger_format_duration, .-utilities_logger_format_duration
/* end function utilities_logger_format_duration */

.text
.balign 16
utilities_logger_format_ms:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rax
	movl $1000, %esi
	movq %rax, %rcx
	cqto
	idivq %rsi
	movq %rax, %rbx
	movq %rcx, %rax
	movl $1000, %ecx
	cqto
	idivq %rcx
	movq %rdx, %rax
	movl $10, %ecx
	cqto
	idivq %rcx
	movq %rax, %rdi
	cmpq $10, %rdi
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb57
	callq donna_int_to_string
	movq %rax, %rsi
	movq %rbx, %rdi
	jmp .Lbb58
.Lbb57:
	callq donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq str189(%rip), %rdi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
.Lbb58:
	movq %rsi, %rbx
	callq donna_int_to_string
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str195(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str198(%rip), %rsi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type utilities_logger_format_ms, @function
.size utilities_logger_format_ms, .-utilities_logger_format_ms
/* end function utilities_logger_format_ms */

.text
.balign 16
utilities_logger_format_seconds:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rax
	movl $1000000, %esi
	movq %rax, %rcx
	cqto
	idivq %rsi
	movq %rax, %rbx
	movq %rcx, %rax
	movl $1000000, %ecx
	cqto
	idivq %rcx
	movq %rdx, %rax
	movl $10000, %ecx
	cqto
	idivq %rcx
	movq %rax, %rdi
	cmpq $10, %rdi
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb63
	callq donna_int_to_string
	movq %rax, %rsi
	movq %rbx, %rdi
	jmp .Lbb64
.Lbb63:
	callq donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq str209(%rip), %rdi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
.Lbb64:
	movq %rsi, %rbx
	callq donna_int_to_string
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str215(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str218(%rip), %rsi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type utilities_logger_format_seconds, @function
.size utilities_logger_format_seconds, .-utilities_logger_format_seconds
/* end function utilities_logger_format_seconds */

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
