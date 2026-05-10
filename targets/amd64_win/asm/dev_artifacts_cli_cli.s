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
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq %rcx, %rdi
	subq $32, %rsp
	movq %rsi, %rcx
	callq cli_cli_first_positional
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb27
	subq $32, %rsp
	leaq str46(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb25
	subq $32, %rsp
	leaq str53(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb23
	subq $32, %rsp
	leaq str61(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb22
	subq $32, %rsp
	leaq str68(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb21
	subq $32, %rsp
	leaq str75(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb20
	subq $32, %rsp
	leaq str82(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb19
	subq $32, %rsp
	leaq str89(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb18
	subq $32, %rsp
	leaq str96(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb17
	subq $32, %rsp
	leaq str103(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb16
	subq $32, %rsp
	leaq str110(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb15
	subq $32, %rsp
	leaq str117(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb14
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str124(%rip), %rcx
	callq utilities_colors_dim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str126(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str128(%rip), %rcx
	callq utilities_colors_dim
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_path
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str131(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cli_fail
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str135(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb44
Lbb14:
	subq $32, %rsp
	callq cli_help_docs_help
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq cli_cmd_docs_run(%rip), %r8
	movq %rcx, %rsi
	callq cli_cli_route_command
	subq $-32, %rsp
	jmp Lbb44
Lbb15:
	subq $32, %rsp
	callq cli_help_format_help
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq cli_cmd_format_run(%rip), %r8
	movq %rcx, %rsi
	callq cli_cli_route_command
	subq $-32, %rsp
	jmp Lbb44
Lbb16:
	subq $32, %rsp
	callq cli_help_format_help
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq cli_cmd_format_run(%rip), %r8
	movq %rcx, %rsi
	callq cli_cli_route_command
	subq $-32, %rsp
	jmp Lbb44
Lbb17:
	subq $32, %rsp
	callq cli_help_test_help
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq cli_cmd_test_run(%rip), %r8
	movq %rcx, %rsi
	callq cli_cli_route_command
	subq $-32, %rsp
	jmp Lbb44
Lbb18:
	subq $32, %rsp
	callq cli_help_run_help
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq cli_cmd_run_run(%rip), %r8
	movq %rcx, %rsi
	callq cli_cli_route_command
	subq $-32, %rsp
	jmp Lbb44
Lbb19:
	subq $32, %rsp
	callq cli_help_new_help
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq cli_cmd_new_run(%rip), %r8
	movq %rcx, %rsi
	callq cli_cli_route_command
	subq $-32, %rsp
	jmp Lbb44
Lbb20:
	subq $32, %rsp
	callq cli_help_clean_help
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq cli_cmd_clean_run(%rip), %r8
	movq %rcx, %rsi
	callq cli_cli_route_command
	subq $-32, %rsp
	jmp Lbb44
Lbb21:
	subq $32, %rsp
	callq cli_help_check_help
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq cli_cmd_check_run(%rip), %r8
	movq %rcx, %rsi
	callq cli_cli_route_command
	subq $-32, %rsp
	jmp Lbb44
Lbb22:
	subq $32, %rsp
	callq cli_help_build_help
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq cli_cmd_build_run(%rip), %r8
	callq cli_cli_route_command
	subq $-32, %rsp
	jmp Lbb44
Lbb23:
	movq %rsi, %rcx
	movq %rdi, %rsi
	subq $32, %rsp
	callq cli_cli_second_positional
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cli_help_for
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cli_show
	subq $-32, %rsp
	jmp Lbb44
Lbb25:
	movq %rdi, %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	movq %rcx, %r12
	callq cli_cli_command_or_version
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cli_show
	subq $-32, %rsp
	jmp Lbb44
Lbb27:
	movq %rsi, %rcx
	movq %rdi, %r12
	subq $32, %rsp
	leaq str8(%rip), %rdx
	movq %rcx, %rsi
	callq cli_cli_has_flag
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb41
	subq $32, %rsp
	leaq str16(%rip), %rdx
	movq %rcx, %rdi
	callq cli_cli_has_flag
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb38
	subq $32, %rsp
	leaq str24(%rip), %rdx
	movq %rcx, %rbx
	callq cli_cli_has_flag
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb35
	subq $32, %rsp
	leaq str32(%rip), %rdx
	callq cli_cli_has_flag
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb33
	subq $32, %rsp
	callq cli_help_main_help
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%r12)
	jmp Lbb34
Lbb33:
	subq $32, %rsp
	callq cli_cli_version_line
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%r12)
Lbb34:
	movq %rcx, (%rbx)
	jmp Lbb37
Lbb35:
	movq %r12, %rcx
	subq $32, %rsp
	callq cli_cli_version_line
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%rbx)
Lbb37:
	movq %rcx, (%rdi)
	jmp Lbb40
Lbb38:
	movq %r12, %rcx
	subq $32, %rsp
	callq cli_help_main_help
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%rdi)
Lbb40:
	movq %rcx, (%rsi)
	jmp Lbb43
Lbb41:
	movq %r12, %rcx
	subq $32, %rsp
	callq cli_help_main_help
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%rsi)
Lbb43:
	subq $32, %rsp
	callq cli_cli_show
	subq $-32, %rsp
Lbb44:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cli_run */

.text
.balign 16
cli_cli_version_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str139(%rip), %rcx
	callq utilities_colors_bold
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str141(%rip), %rdx
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
/* end function cli_cli_version_line */

.text
.balign 16
cli_cli_command_or_version:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	movq %rdx, %rcx
	subq $32, %rsp
	callq cli_cli_has_help_flag
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb49
	subq $32, %rsp
	callq cli_cli_version_line
	subq $-32, %rsp
	jmp Lbb50
Lbb49:
	subq $32, %rsp
	callq cli_help_version_help
	subq $-32, %rsp
Lbb50:
	popq %rsi
	leave
	ret
/* end function cli_cli_command_or_version */

.text
.balign 16
cli_cli_route_command:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	callq cli_cli_has_help_flag
	movq %rbx, %rcx
	movq %rax, %rdx
	movq %rdi, %rax
	subq $-32, %rsp
	cmpq $1, %rdx
	jz Lbb53
	subq $32, %rsp
	callq cli_cli_drop_command
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq *%r8
	subq $-32, %rsp
Lbb53:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cli_route_command */

.text
.balign 16
cli_cli_help_for:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	movq %rdx, %rcx
	subq $32, %rsp
	leaq str164(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb76
	subq $32, %rsp
	leaq str170(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb75
	subq $32, %rsp
	leaq str176(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb74
	subq $32, %rsp
	leaq str182(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb73
	subq $32, %rsp
	leaq str188(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb72
	subq $32, %rsp
	leaq str194(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb71
	subq $32, %rsp
	leaq str200(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb70
	subq $32, %rsp
	leaq str206(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb69
	subq $32, %rsp
	leaq str212(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb68
	subq $32, %rsp
	leaq str218(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb67
	subq $32, %rsp
	leaq str224(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb66
	subq $32, %rsp
	callq utilities_colors_path
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str230(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cli_fail
	subq $-32, %rsp
	jmp Lbb78
Lbb66:
	subq $32, %rsp
	callq cli_help_version_help
	subq $-32, %rsp
	jmp Lbb78
Lbb67:
	subq $32, %rsp
	callq cli_help_test_help
	subq $-32, %rsp
	jmp Lbb78
Lbb68:
	subq $32, %rsp
	callq cli_help_run_help
	subq $-32, %rsp
	jmp Lbb78
Lbb69:
	subq $32, %rsp
	callq cli_help_new_help
	subq $-32, %rsp
	jmp Lbb78
Lbb70:
	subq $32, %rsp
	callq cli_help_format_help
	subq $-32, %rsp
	jmp Lbb78
Lbb71:
	subq $32, %rsp
	callq cli_help_format_help
	subq $-32, %rsp
	jmp Lbb78
Lbb72:
	subq $32, %rsp
	callq cli_help_docs_help
	subq $-32, %rsp
	jmp Lbb78
Lbb73:
	subq $32, %rsp
	callq cli_help_clean_help
	subq $-32, %rsp
	jmp Lbb78
Lbb74:
	subq $32, %rsp
	callq cli_help_check_help
	subq $-32, %rsp
	jmp Lbb78
Lbb75:
	subq $32, %rsp
	callq cli_help_build_help
	subq $-32, %rsp
	jmp Lbb78
Lbb76:
	movq %rsi, %rcx
	subq $32, %rsp
	callq cli_help_main_help
	subq $-32, %rsp
Lbb78:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cli_help_for */

.text
.balign 16
cli_cli_show:
	endbr64
	movq %rcx, %rax
	ret
/* end function cli_cli_show */

.text
.balign 16
.globl cli_cli_exit_code_for_output
cli_cli_exit_code_for_output:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq cli_cli_is_failure_text
	subq $-32, %rsp
	cmpq $1, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	leave
	ret
/* end function cli_cli_exit_code_for_output */

.text
.balign 16
cli_cli_is_failure_text:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str242(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb85
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str250(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_starts_with
	subq $-32, %rsp
	jmp Lbb86
Lbb85:
	movl $1, %eax
Lbb86:
	popq %rsi
	leave
	ret
/* end function cli_cli_is_failure_text */

.text
.balign 16
cli_cli_fail:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str254(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str256(%rip), %rdx
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
/* end function cli_cli_fail */

.text
.balign 16
cli_cli_drop_command:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb97
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb93
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb94
Lbb93:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str277(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb94:
	cmpl $0, %eax
	jnz Lbb96
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cli_drop_command
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb98
Lbb96:
	movq 16(%rcx), %rax
	jmp Lbb98
Lbb97:
	leaq donna_nil(%rip), %rax
Lbb98:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cli_drop_command */

.text
.balign 16
cli_cli_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb107
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb103
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb104
Lbb103:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str321(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb104:
	cmpl $0, %eax
	jnz Lbb106
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cli_first_positional
	subq $-32, %rsp
	jmp Lbb108
Lbb106:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb108
Lbb107:
	leaq str308(%rip), %rax
Lbb108:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cli_first_positional */

.text
.balign 16
cli_cli_second_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movl $0, %edx
	callq cli_cli_second_positional_loop
	subq $-32, %rsp
	leave
	ret
/* end function cli_cli_second_positional */

.text
.balign 16
cli_cli_second_positional_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb121
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb115
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb116
Lbb115:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str363(%rip), %rdx
	callq strcmp
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb116:
	cmpl $0, %eax
	jnz Lbb118
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cli_second_positional_loop
	subq $-32, %rsp
	jmp Lbb122
Lbb118:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb120
	subq $32, %rsp
	movl $1, %edx
	callq cli_cli_second_positional_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb122
Lbb120:
	movq %rax, (%rsi)
	jmp Lbb122
Lbb121:
	leaq str350(%rip), %rax
Lbb122:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cli_second_positional_loop */

.text
.balign 16
cli_cli_has_help_flag:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str392(%rip), %rdx
	movq %rcx, %rsi
	callq cli_cli_has_flag
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str394(%rip), %rdx
	callq cli_cli_has_flag
	subq $-32, %rsp
	orq %rsi, %rax
	popq %rsi
	leave
	ret
/* end function cli_cli_has_help_flag */

.text
.balign 16
cli_cli_has_flag:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb130
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	callq donna_string_equal
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb128
	subq $32, %rsp
	callq cli_cli_has_flag
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb131
Lbb128:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb131
Lbb130:
	movl $0, %eax
Lbb131:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cli_has_flag */

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

