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
	.ascii "deps"
	.byte 0
/* end data */

.data
.balign 8
str89:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
str96:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
str103:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str110:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
str117:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
str124:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
str131:
	.ascii "  Run "
	.byte 0
/* end data */

.data
.balign 8
str133:
	.ascii "donna help"
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii " to see available commands"
	.byte 0
/* end data */

.data
.balign 8
str138:
	.ascii "unknown command "
	.byte 0
/* end data */

.data
.balign 8
str142:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str146:
	.ascii "donna"
	.byte 0
/* end data */

.data
.balign 8
str148:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str171:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str177:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
str183:
	.ascii "check"
	.byte 0
/* end data */

.data
.balign 8
str189:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
str195:
	.ascii "deps"
	.byte 0
/* end data */

.data
.balign 8
str201:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
str207:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
str213:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
str219:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
str225:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
str231:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str237:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
str243:
	.ascii "unknown help topic "
	.byte 0
/* end data */

.data
.balign 8
str256:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str263:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
str270:
	.ascii "parse error:"
	.byte 0
/* end data */

.data
.balign 8
str277:
	.ascii "lex error:"
	.byte 0
/* end data */

.data
.balign 8
str282:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str284:
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
str305:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str336:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str349:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str378:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str391:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str420:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
str422:
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
	jz .Lbb29
	leaq str46(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb27
	leaq str53(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb25
	leaq str61(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb24
	leaq str68(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb23
	leaq str75(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb22
	leaq str82(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb21
	leaq str89(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb20
	leaq str96(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb19
	leaq str103(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb18
	leaq str110(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb17
	leaq str117(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb16
	leaq str124(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb15
	movq %rdi, %rbx
	leaq str131(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, %rdi
	leaq str133(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r12
	leaq str135(%rip), %rdi
	callq utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_colors_path
	movq %rax, %rsi
	leaq str138(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq cli_cli_fail
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str142(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	jmp .Lbb46
.Lbb15:
	callq cli_help_docs_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_docs_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb46
.Lbb16:
	callq cli_help_format_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_format_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb46
.Lbb17:
	callq cli_help_format_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_format_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb46
.Lbb18:
	callq cli_help_test_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_test_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb46
.Lbb19:
	callq cli_help_run_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_run_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb46
.Lbb20:
	callq cli_help_new_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_new_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb46
.Lbb21:
	callq cli_help_deps_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_deps_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb46
.Lbb22:
	callq cli_help_clean_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_clean_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb46
.Lbb23:
	callq cli_help_check_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_check_run(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cli_route_command
	jmp .Lbb46
.Lbb24:
	callq cli_help_build_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq cli_cmd_build_run(%rip), %rdx
	callq cli_cli_route_command
	jmp .Lbb46
.Lbb25:
	movq %rbx, %rdi
	movq %r12, %rbx
	callq cli_cli_second_positional
	movq %rbx, %rdi
	movq %rax, %rsi
	callq cli_cli_help_for
	movq %rax, %rdi
	callq cli_cli_show
	jmp .Lbb46
.Lbb27:
	movq %r12, %rdi
	movq %rbx, %rsi
	movq %rdi, %r14
	callq cli_cli_command_or_version
	movq %rax, %rdi
	callq cli_cli_show
	jmp .Lbb46
.Lbb29:
	movq %rbx, %rdi
	movq %r12, %r14
	leaq str8(%rip), %rsi
	movq %rdi, %rbx
	callq cli_cli_has_flag
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb43
	leaq str16(%rip), %rsi
	movq %rdi, %r12
	callq cli_cli_has_flag
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb40
	leaq str24(%rip), %rsi
	movq %rdi, %r13
	callq cli_cli_has_flag
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz .Lbb37
	leaq str32(%rip), %rsi
	callq cli_cli_has_flag
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	cmpq $1, %rax
	jz .Lbb35
	callq cli_help_main_help
	movq %rax, %rdi
	movq %rdi, (%r14)
	jmp .Lbb36
.Lbb35:
	callq cli_cli_version_line
	movq %rax, %rdi
	movq %rdi, (%r14)
.Lbb36:
	movq %rdi, (%r13)
	jmp .Lbb39
.Lbb37:
	movq %r14, %rdi
	callq cli_cli_version_line
	movq %rax, %rdi
	movq %rdi, (%r13)
.Lbb39:
	movq %rdi, (%r12)
	jmp .Lbb42
.Lbb40:
	movq %r14, %rdi
	callq cli_help_main_help
	movq %rax, %rdi
	movq %rdi, (%r12)
.Lbb42:
	movq %rdi, (%rbx)
	jmp .Lbb45
.Lbb43:
	movq %r14, %rdi
	callq cli_help_main_help
	movq %rax, %rdi
	movq %rdi, (%rbx)
.Lbb45:
	callq cli_cli_show
.Lbb46:
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
	leaq str146(%rip), %rdi
	callq utilities_colors_bold
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str148(%rip), %rsi
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
	jz .Lbb51
	callq cli_cli_version_line
	jmp .Lbb52
.Lbb51:
	callq cli_help_version_help
.Lbb52:
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
	jz .Lbb55
	callq cli_cli_drop_command
	movq %rbx, %rdx
	movq %rax, %rdi
	callq *%rdx
.Lbb55:
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
	leaq str171(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb80
	leaq str177(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb79
	leaq str183(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb78
	leaq str189(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb77
	leaq str195(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb76
	leaq str201(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb75
	leaq str207(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb74
	leaq str213(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb73
	leaq str219(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb72
	leaq str225(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb71
	leaq str231(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb70
	leaq str237(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb69
	callq utilities_colors_path
	movq %rax, %rsi
	leaq str243(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq cli_cli_fail
	jmp .Lbb82
.Lbb69:
	callq cli_help_version_help
	jmp .Lbb82
.Lbb70:
	callq cli_help_test_help
	jmp .Lbb82
.Lbb71:
	callq cli_help_run_help
	jmp .Lbb82
.Lbb72:
	callq cli_help_new_help
	jmp .Lbb82
.Lbb73:
	callq cli_help_format_help
	jmp .Lbb82
.Lbb74:
	callq cli_help_format_help
	jmp .Lbb82
.Lbb75:
	callq cli_help_docs_help
	jmp .Lbb82
.Lbb76:
	callq cli_help_deps_help
	jmp .Lbb82
.Lbb77:
	callq cli_help_clean_help
	jmp .Lbb82
.Lbb78:
	callq cli_help_check_help
	jmp .Lbb82
.Lbb79:
	callq cli_help_build_help
	jmp .Lbb82
.Lbb80:
	movq %rbx, %rdi
	callq cli_help_main_help
.Lbb82:
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
	pushq %rbx
	pushq %r12
	callq utilities_colors_strip
	movq %rax, %rdi
	leaq str256(%rip), %rsi
	movq %rdi, %rbx
	callq donna_string_starts_with
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb96
	leaq str263(%rip), %rsi
	movq %rdi, %rbx
	callq donna_string_starts_with
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb94
	leaq str270(%rip), %rsi
	movq %rdi, %r12
	callq donna_string_starts_with
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb91
	leaq str277(%rip), %rsi
	callq donna_string_starts_with
	movq %rax, (%r12)
	jmp .Lbb93
.Lbb91:
	movq $1, (%r12)
	movl $1, %eax
.Lbb93:
	movq %rax, (%rbx)
	jmp .Lbb97
.Lbb94:
	movq $1, (%rbx)
	movl $1, %eax
	jmp .Lbb97
.Lbb96:
	movl $1, %eax
.Lbb97:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
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
	leaq str282(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str284(%rip), %rsi
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
	jz .Lbb108
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb104
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb105
.Lbb104:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq str305(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb105:
	cmpl $0, %eax
	jnz .Lbb107
	movq 8(%rdi), %r12
	movq 16(%rdi), %rdi
	callq cli_cli_drop_command
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb109
.Lbb107:
	movq 16(%rdi), %rax
	jmp .Lbb109
.Lbb108:
	leaq donna_nil(%rip), %rax
.Lbb109:
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
	jz .Lbb118
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb114
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb115
.Lbb114:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq str349(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb115:
	cmpl $0, %eax
	jnz .Lbb117
	movq 16(%rdi), %rdi
	callq cli_cli_first_positional
	jmp .Lbb119
.Lbb117:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp .Lbb119
.Lbb118:
	leaq str336(%rip), %rax
.Lbb119:
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
	jz .Lbb132
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb126
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb127
.Lbb126:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	movq %rsi, %r13
	leaq str391(%rip), %rsi
	callq strcmp
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb127:
	cmpl $0, %eax
	jnz .Lbb129
	movq 16(%rdi), %rdi
	callq cli_cli_second_positional_loop
	jmp .Lbb133
.Lbb129:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rsi
	jz .Lbb131
	movl $1, %esi
	callq cli_cli_second_positional_loop
	movq %rax, (%rbx)
	jmp .Lbb133
.Lbb131:
	movq %rax, (%rbx)
	jmp .Lbb133
.Lbb132:
	leaq str378(%rip), %rax
.Lbb133:
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
	leaq str420(%rip), %rsi
	movq %rdi, %rbx
	callq cli_cli_has_flag
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq str422(%rip), %rsi
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
	jz .Lbb141
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
	jz .Lbb139
	callq cli_cli_has_flag
	movq %rax, (%rbx)
	jmp .Lbb142
.Lbb139:
	movq $1, (%rbx)
	movl $1, %eax
	jmp .Lbb142
.Lbb141:
	movl $0, %eax
.Lbb142:
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
