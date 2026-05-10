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
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str0(%rip), %rcx
	callq utilities_logger_action
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rsi
	leave
	ret
/* end function utilities_logger_step */

.text
.balign 16
.globl utilities_logger_fetch
utilities_logger_fetch:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq %rcx, %rdi
	subq $32, %rsp
	leaq str4(%rip), %rcx
	callq utilities_logger_action
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str7(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str11(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rdi
	popq %rsi
	leave
	ret
/* end function utilities_logger_fetch */

.text
.balign 16
.globl utilities_logger_ok
utilities_logger_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str12(%rip), %rcx
	callq utilities_logger_action
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str14(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_logger_format_duration
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str19(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rsi
	leave
	ret
/* end function utilities_logger_ok */

.text
.balign 16
.globl utilities_logger_formatting
utilities_logger_formatting:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str20(%rip), %rcx
	callq utilities_logger_action
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str23(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rsi
	leave
	ret
/* end function utilities_logger_formatting */

.text
.balign 16
.globl utilities_logger_fmt_ok
utilities_logger_fmt_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str24(%rip), %rcx
	callq utilities_logger_action
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str26(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_logger_format_duration
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str31(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rsi
	leave
	ret
/* end function utilities_logger_fmt_ok */

.text
.balign 16
.globl utilities_logger_docs_ok
utilities_logger_docs_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str32(%rip), %rcx
	callq utilities_logger_action
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str34(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_logger_format_duration
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str39(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rsi
	leave
	ret
/* end function utilities_logger_docs_ok */

.text
.balign 16
.globl utilities_logger_cleaning
utilities_logger_cleaning:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str40(%rip), %rcx
	callq utilities_logger_action
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_path
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str44(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rsi
	leave
	ret
/* end function utilities_logger_cleaning */

.text
.balign 16
.globl utilities_logger_clean_ok
utilities_logger_clean_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str45(%rip), %rcx
	callq utilities_logger_action
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str47(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_logger_format_duration
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str52(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rsi
	leave
	ret
/* end function utilities_logger_clean_ok */

.text
.balign 16
.globl utilities_logger_checking
utilities_logger_checking:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str53(%rip), %rcx
	callq utilities_logger_action
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str56(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rsi
	leave
	ret
/* end function utilities_logger_checking */

.text
.balign 16
.globl utilities_logger_check_ok
utilities_logger_check_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str57(%rip), %rcx
	callq utilities_logger_action
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str59(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_logger_format_duration
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str64(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rsi
	leave
	ret
/* end function utilities_logger_check_ok */

.text
.balign 16
.globl utilities_logger_success
utilities_logger_success:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rdx, %rdi
	subq $32, %rsp
	callq utilities_logger_action
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str66(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_path
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_logger_format_duration
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str70(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str75(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rdi
	popq %rsi
	leave
	ret
/* end function utilities_logger_success */

.text
.balign 16
.globl utilities_logger_error
utilities_logger_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str76(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str78(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str81(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rsi
	leave
	ret
/* end function utilities_logger_error */

.text
.balign 16
.globl utilities_logger_warn
utilities_logger_warn:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str82(%rip), %rcx
	callq utilities_colors_yellow
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str84(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str87(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	popq %rsi
	leave
	ret
/* end function utilities_logger_warn */

.text
.balign 16
.globl utilities_logger_hint
utilities_logger_hint:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq str88(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str91(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	leave
	ret
/* end function utilities_logger_hint */

.text
.balign 16
.globl utilities_logger_info
utilities_logger_info:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq str92(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str95(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movl $0, %eax
	leave
	ret
/* end function utilities_logger_info */

.text
.balign 16
.globl utilities_logger_summary
utilities_logger_summary:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	cmpq $0, %rcx
	setz %al
	movzbq %al, %rax
	cmpq $0, %rax
	jz Lbb34
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb33
	subq $32, %rsp
	callq donna_int_to_string
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str120(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str123(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str127(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str129(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movq $0, (%rsi)
	jmp Lbb36
Lbb33:
	subq $32, %rsp
	leaq str118(%rip), %rdx
	leaq str119(%rip), %rcx
	callq printf
	subq $-32, %rsp
	movq $0, (%rsi)
	jmp Lbb36
Lbb34:
	movq %rdi, %rsi
	subq $32, %rsp
	callq donna_int_to_string
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str102(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str105(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str109(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str111(%rip), %rcx
	callq printf
	subq $-32, %rsp
Lbb36:
	movl $0, %eax
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function utilities_logger_summary */

.text
.balign 16
utilities_logger_action:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movl $10, %edx
	callq utilities_logger_pad_left
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str132(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str135(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_orange
	subq $-32, %rsp
	leave
	ret
/* end function utilities_logger_action */

.text
.balign 16
utilities_logger_pad_left:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_string_length
	movq %rdi, %rdx
	subq $-32, %rsp
	cmpq %rdx, %rax
	setge %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz Lbb42
	movq %rdx, %rcx
	subq %rax, %rcx
	subq $32, %rsp
	callq utilities_logger_repeat_spaces
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %rax, %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb43
Lbb42:
	movq %rsi, %rax
Lbb43:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function utilities_logger_pad_left */

.text
.balign 16
utilities_logger_repeat_spaces:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	cmpq $0, %rcx
	setle %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb46
	subq $1, %rcx
	subq $32, %rsp
	callq utilities_logger_repeat_spaces
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str156(%rip), %rcx
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb47
Lbb46:
	leaq str155(%rip), %rax
Lbb47:
	leave
	ret
/* end function utilities_logger_repeat_spaces */

.text
.balign 16
utilities_logger_format_duration:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	cmpq $1000, %rcx
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb52
	cmpq $1000000, %rcx
	setl %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb51
	subq $32, %rsp
	callq utilities_logger_format_seconds
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb53
Lbb51:
	subq $32, %rsp
	callq utilities_logger_format_ms
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb53
Lbb52:
	subq $32, %rsp
	callq donna_int_to_string
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str168(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
Lbb53:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function utilities_logger_format_duration */

.text
.balign 16
utilities_logger_format_ms:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rax
	movl $1000, %esi
	movq %rax, %rcx
	cqto
	idivq %rsi
	xchgq %rax, %rcx
	movl $1000, %esi
	cqto
	idivq %rsi
	movq %rdx, %rax
	movq %rcx, %rsi
	movl $10, %ecx
	cqto
	idivq %rcx
	movq %rax, %rcx
	cmpq $10, %rcx
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb57
	subq $32, %rsp
	callq donna_int_to_string
	movq %rax, %rdx
	subq $-32, %rsp
	movq %rsi, %rcx
	jmp Lbb58
Lbb57:
	subq $32, %rsp
	callq donna_int_to_string
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str189(%rip), %rcx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
Lbb58:
	movq %rdx, %rsi
	subq $32, %rsp
	callq donna_int_to_string
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str195(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str198(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function utilities_logger_format_ms */

.text
.balign 16
utilities_logger_format_seconds:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rax
	movl $1000000, %esi
	movq %rax, %rcx
	cqto
	idivq %rsi
	xchgq %rax, %rcx
	movl $1000000, %esi
	cqto
	idivq %rsi
	movq %rdx, %rax
	movq %rcx, %rsi
	movl $10000, %ecx
	cqto
	idivq %rcx
	movq %rax, %rcx
	cmpq $10, %rcx
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb63
	subq $32, %rsp
	callq donna_int_to_string
	movq %rax, %rdx
	subq $-32, %rsp
	movq %rsi, %rcx
	jmp Lbb64
Lbb63:
	subq $32, %rsp
	callq donna_int_to_string
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str209(%rip), %rcx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
Lbb64:
	movq %rdx, %rsi
	subq $32, %rsp
	callq donna_int_to_string
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str215(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str218(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function utilities_logger_format_seconds */

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

