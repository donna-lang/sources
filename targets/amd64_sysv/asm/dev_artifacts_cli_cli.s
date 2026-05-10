.data
.balign 8
str3:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str8:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
str16:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
str24:
	.ascii "V"
	.byte 0
/* end data */

.data
.balign 8
str32:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
str46:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
str53:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
str61:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
str68:
	.ascii "check"
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
str82:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
str89:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
str96:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str103:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
str110:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
str117:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
str124:
	.ascii "  Run "
	.byte 0
/* end data */

.data
.balign 8
str126:
	.ascii "donna help"
	.byte 0
/* end data */

.data
.balign 8
str128:
	.ascii " to see available commands"
	.byte 0
/* end data */

.data
.balign 8
str131:
	.ascii "unknown command "
	.byte 0
/* end data */

.data
.balign 8
str135:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str139:
	.ascii "donna"
	.byte 0
/* end data */

.data
.balign 8
str141:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str164:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str170:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
str176:
	.ascii "check"
	.byte 0
/* end data */

.data
.balign 8
str182:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
str188:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
str194:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
str200:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
str206:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
str212:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
str218:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str224:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
str230:
	.ascii "unknown help topic "
	.byte 0
/* end data */

.data
.balign 8
str242:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str250:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
str254:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str256:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str277:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str308:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str321:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str350:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str363:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str392:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
str394:
	.ascii "help"
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cli_run
cli_cli_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %rbx
	movq %rdi, %r12
	movq %rbx, %rdi
	callq cli_cli_first_positional
	movq %rax, %rdi
	leaq str3(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb27
	leaq str46(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb25
	leaq str53(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb23
	leaq str61(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb22
	leaq str68(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb21
	leaq str75(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb20
	leaq str82(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb19
	leaq str89(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb18
	leaq str96(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb17
	leaq str103(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb16
	leaq str110(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb15
	leaq str117(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb14
	movq %rdi, %rbx
	leaq str124(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, %rdi
	leaq str126(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r12
	leaq str128(%rip), %rdi
	callq utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_colors_path
	movq %rax, %rsi
	leaq str131(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq cli_cli_fail
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str135(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	jmp .Lbb44
.Lbb14:
	callq cli_help_docs_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_docs_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb44
.Lbb15:
	callq cli_help_format_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_format_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb44
.Lbb16:
	callq cli_help_format_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_format_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb44
.Lbb17:
	callq cli_help_test_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_test_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb44
.Lbb18:
	callq cli_help_run_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_run_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb44
.Lbb19:
	callq cli_help_new_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_new_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb44
.Lbb20:
	callq cli_help_clean_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_clean_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb44
.Lbb21:
	callq cli_help_check_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_check_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb44
.Lbb22:
	callq cli_help_build_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_build_run(%rip), %rdx
	callq cli_cli_route_command
	jmp .Lbb44
.Lbb23:
	movq %rbx, %rdi
	movq %r12, %rbx
	callq cli_cli_second_positional
	movq %rbx, %rdi
	movq %rax, %rsi
	callq cli_cli_help_for
	movq %rax, %rdi
	callq cli_cli_show
	jmp .Lbb44
.Lbb25:
	movq %r12, %rdi
	movq %rbx, %rsi
	movq %rdi, %r14
	callq cli_cli_command_or_version
	movq %rax, %rdi
	callq cli_cli_show
	jmp .Lbb44
.Lbb27:
	movq %rbx, %rdi
	movq %r12, %r14
	leaq str8(%rip), %rsi
	movq %rdi, %rbx
	callq cli_cli_has_flag
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb41
	leaq str16(%rip), %rsi
	movq %rdi, %r12
	callq cli_cli_has_flag
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb38
	leaq str24(%rip), %rsi
	movq %rdi, %r13
	callq cli_cli_has_flag
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz .Lbb35
	leaq str32(%rip), %rsi
	callq cli_cli_has_flag
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	cmpq $1, %rax
	jz .Lbb33
	callq cli_help_main_help
	movq %rax, %rdi
	movq %rdi, (%r14)
	jmp .Lbb34
.Lbb33:
	callq cli_cli_version_line
	movq %rax, %rdi
	movq %rdi, (%r14)
.Lbb34:
	movq %rdi, (%r13)
	jmp .Lbb37
.Lbb35:
	movq %r14, %rdi
	callq cli_cli_version_line
	movq %rax, %rdi
	movq %rdi, (%r13)
.Lbb37:
	movq %rdi, (%r12)
	jmp .Lbb40
.Lbb38:
	movq %r14, %rdi
	callq cli_help_main_help
	movq %rax, %rdi
	movq %rdi, (%r12)
.Lbb40:
	movq %rdi, (%rbx)
	jmp .Lbb43
.Lbb41:
	movq %r14, %rdi
	callq cli_help_main_help
	movq %rax, %rdi
	movq %rdi, (%rbx)
.Lbb43:
	callq cli_cli_show
.Lbb44:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cli_run, @function
.size cli_cli_run, .-cli_cli_run
/* end function cli_cli_run */

.text
.balign 16
cli_cli_version_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str139(%rip), %rdi
	callq utilities_colors_bold
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str141(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type cli_cli_version_line, @function
.size cli_cli_version_line, .-cli_cli_version_line
/* end function cli_cli_version_line */

.text
.balign 16
cli_cli_command_or_version:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movq %rsi, %rdi
	callq cli_cli_has_help_flag
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb49
	callq cli_cli_version_line
	jmp .Lbb50
.Lbb49:
	callq cli_help_version_help
.Lbb50:
	popq %rbx
	leave
	ret
.type cli_cli_command_or_version, @function
.size cli_cli_command_or_version, .-cli_cli_command_or_version
/* end function cli_cli_command_or_version */

.text
.balign 16
cli_cli_route_command:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %rbx
	movq %rsi, %r12
	movq %rdi, %r13
	callq cli_cli_has_help_flag
	movq %r13, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	cmpq $1, %rcx
	jz .Lbb53
	callq cli_cli_drop_command
	movq %rbx, %rdx
	movq %rax, %rdi
	callq *%rdx
.Lbb53:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cli_route_command, @function
.size cli_cli_route_command, .-cli_cli_route_command
/* end function cli_cli_route_command */

.text
.balign 16
cli_cli_help_for:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	movq %rsi, %rdi
	leaq str164(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb76
	leaq str170(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb75
	leaq str176(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb74
	leaq str182(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb73
	leaq str188(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb72
	leaq str194(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb71
	leaq str200(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb70
	leaq str206(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb69
	leaq str212(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb68
	leaq str218(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb67
	leaq str224(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb66
	callq utilities_colors_path
	movq %rax, %rsi
	leaq str230(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq cli_cli_fail
	jmp .Lbb78
.Lbb66:
	callq cli_help_version_help
	jmp .Lbb78
.Lbb67:
	callq cli_help_test_help
	jmp .Lbb78
.Lbb68:
	callq cli_help_run_help
	jmp .Lbb78
.Lbb69:
	callq cli_help_new_help
	jmp .Lbb78
.Lbb70:
	callq cli_help_format_help
	jmp .Lbb78
.Lbb71:
	callq cli_help_format_help
	jmp .Lbb78
.Lbb72:
	callq cli_help_docs_help
	jmp .Lbb78
.Lbb73:
	callq cli_help_clean_help
	jmp .Lbb78
.Lbb74:
	callq cli_help_check_help
	jmp .Lbb78
.Lbb75:
	callq cli_help_build_help
	jmp .Lbb78
.Lbb76:
	movq %rbx, %rdi
	callq cli_help_main_help
.Lbb78:
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cli_help_for, @function
.size cli_cli_help_for, .-cli_cli_help_for
/* end function cli_cli_help_for */

.text
.balign 16
cli_cli_show:
	endbr64
	movq %rdi, %rax
	ret
.type cli_cli_show, @function
.size cli_cli_show, .-cli_cli_show
/* end function cli_cli_show */

.text
.balign 16
.globl cli_cli_exit_code_for_output
cli_cli_exit_code_for_output:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq cli_cli_is_failure_text
	cmpq $1, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	leave
	ret
.type cli_cli_exit_code_for_output, @function
.size cli_cli_exit_code_for_output, .-cli_cli_exit_code_for_output
/* end function cli_cli_exit_code_for_output */

.text
.balign 16
cli_cli_is_failure_text:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str242(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	callq donna_string_starts_with
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb85
	movq %rdi, %rbx
	leaq str250(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rdi
	movq %rax, %rsi
	callq donna_string_starts_with
	jmp .Lbb86
.Lbb85:
	movl $1, %eax
.Lbb86:
	popq %rbx
	leave
	ret
.type cli_cli_is_failure_text, @function
.size cli_cli_is_failure_text, .-cli_cli_is_failure_text
/* end function cli_cli_is_failure_text */

.text
.balign 16
cli_cli_fail:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str254(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str256(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type cli_cli_fail, @function
.size cli_cli_fail, .-cli_cli_fail
/* end function cli_cli_fail */

.text
.balign 16
cli_cli_drop_command:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb97
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb93
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb94
.Lbb93:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq str277(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb94:
	cmpl $0, %eax
	jnz .Lbb96
	movq 8(%rdi), %r12
	movq 16(%rdi), %rdi
	callq cli_cli_drop_command
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb98
.Lbb96:
	movq 16(%rdi), %rax
	jmp .Lbb98
.Lbb97:
	leaq donna_nil(%rip), %rax
.Lbb98:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cli_drop_command, @function
.size cli_cli_drop_command, .-cli_cli_drop_command
/* end function cli_cli_drop_command */

.text
.balign 16
cli_cli_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb107
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb103
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb104
.Lbb103:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq str321(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb104:
	cmpl $0, %eax
	jnz .Lbb106
	movq 16(%rdi), %rdi
	callq cli_cli_first_positional
	jmp .Lbb108
.Lbb106:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp .Lbb108
.Lbb107:
	leaq str308(%rip), %rax
.Lbb108:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cli_first_positional, @function
.size cli_cli_first_positional, .-cli_cli_first_positional
/* end function cli_cli_first_positional */

.text
.balign 16
cli_cli_second_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %esi
	callq cli_cli_second_positional_loop
	leave
	ret
.type cli_cli_second_positional, @function
.size cli_cli_second_positional, .-cli_cli_second_positional
/* end function cli_cli_second_positional */

.text
.balign 16
cli_cli_second_positional_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb121
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb115
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb116
.Lbb115:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	movq %rsi, %r13
	leaq str363(%rip), %rsi
	callq strcmp
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb116:
	cmpl $0, %eax
	jnz .Lbb118
	movq 16(%rdi), %rdi
	callq cli_cli_second_positional_loop
	jmp .Lbb122
.Lbb118:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rsi
	jz .Lbb120
	movl $1, %esi
	callq cli_cli_second_positional_loop
	movq %rax, (%rbx)
	jmp .Lbb122
.Lbb120:
	movq %rax, (%rbx)
	jmp .Lbb122
.Lbb121:
	leaq str350(%rip), %rax
.Lbb122:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cli_second_positional_loop, @function
.size cli_cli_second_positional_loop, .-cli_cli_second_positional_loop
/* end function cli_cli_second_positional_loop */

.text
.balign 16
cli_cli_has_help_flag:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq str392(%rip), %rsi
	movq %rdi, %rbx
	callq cli_cli_has_flag
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq str394(%rip), %rsi
	callq cli_cli_has_flag
	orq %rbx, %rax
	popq %rbx
	leave
	ret
.type cli_cli_has_help_flag, @function
.size cli_cli_has_help_flag, .-cli_cli_has_help_flag
/* end function cli_cli_has_help_flag */

.text
.balign 16
cli_cli_has_flag:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb130
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	movq %rsi, %r12
	callq donna_string_equal
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb128
	callq cli_cli_has_flag
	movq %rax, (%rbx)
	jmp .Lbb131
.Lbb128:
	movq $1, (%rbx)
	movl $1, %eax
	jmp .Lbb131
.Lbb130:
	movl $0, %eax
.Lbb131:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cli_has_flag, @function
.size cli_cli_has_flag, .-cli_cli_has_flag
/* end function cli_cli_has_flag */

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
