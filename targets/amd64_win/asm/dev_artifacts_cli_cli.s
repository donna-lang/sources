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
	jz Lbb29
	subq $32, %rsp
	leaq str46(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb27
	subq $32, %rsp
	leaq str53(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb25
	subq $32, %rsp
	leaq str61(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb24
	subq $32, %rsp
	leaq str68(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb23
	subq $32, %rsp
	leaq str75(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb22
	subq $32, %rsp
	leaq str82(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb21
	subq $32, %rsp
	leaq str89(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb20
	subq $32, %rsp
	leaq str96(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb19
	subq $32, %rsp
	leaq str103(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb18
	subq $32, %rsp
	leaq str110(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb17
	subq $32, %rsp
	leaq str117(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb16
	subq $32, %rsp
	leaq str124(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb15
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str131(%rip), %rcx
	callq utilities_colors_dim
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str133(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str135(%rip), %rcx
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
	leaq str138(%rip), %rcx
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
	leaq str142(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb46
Lbb15:
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
	jmp Lbb46
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
	jmp Lbb46
Lbb17:
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
	jmp Lbb46
Lbb18:
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
	jmp Lbb46
Lbb19:
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
	jmp Lbb46
Lbb20:
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
	jmp Lbb46
Lbb21:
	subq $32, %rsp
	callq cli_help_deps_help
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq cli_cmd_deps_run(%rip), %r8
	movq %rcx, %rsi
	callq cli_cli_route_command
	subq $-32, %rsp
	jmp Lbb46
Lbb22:
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
	jmp Lbb46
Lbb23:
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
	jmp Lbb46
Lbb24:
	subq $32, %rsp
	callq cli_help_build_help
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq cli_cmd_build_run(%rip), %r8
	callq cli_cli_route_command
	subq $-32, %rsp
	jmp Lbb46
Lbb25:
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
	jmp Lbb46
Lbb27:
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
	jmp Lbb46
Lbb29:
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
	jz Lbb43
	subq $32, %rsp
	leaq str16(%rip), %rdx
	movq %rcx, %rdi
	callq cli_cli_has_flag
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb40
	subq $32, %rsp
	leaq str24(%rip), %rdx
	movq %rcx, %rbx
	callq cli_cli_has_flag
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb37
	subq $32, %rsp
	leaq str32(%rip), %rdx
	callq cli_cli_has_flag
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb35
	subq $32, %rsp
	callq cli_help_main_help
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%r12)
	jmp Lbb36
Lbb35:
	subq $32, %rsp
	callq cli_cli_version_line
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%r12)
Lbb36:
	movq %rcx, (%rbx)
	jmp Lbb39
Lbb37:
	movq %r12, %rcx
	subq $32, %rsp
	callq cli_cli_version_line
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%rbx)
Lbb39:
	movq %rcx, (%rdi)
	jmp Lbb42
Lbb40:
	movq %r12, %rcx
	subq $32, %rsp
	callq cli_help_main_help
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%rdi)
Lbb42:
	movq %rcx, (%rsi)
	jmp Lbb45
Lbb43:
	movq %r12, %rcx
	subq $32, %rsp
	callq cli_help_main_help
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%rsi)
Lbb45:
	subq $32, %rsp
	callq cli_cli_show
	subq $-32, %rsp
Lbb46:
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
	leaq str146(%rip), %rcx
	callq utilities_colors_bold
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str148(%rip), %rdx
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
	jz Lbb51
	subq $32, %rsp
	callq cli_cli_version_line
	subq $-32, %rsp
	jmp Lbb52
Lbb51:
	subq $32, %rsp
	callq cli_help_version_help
	subq $-32, %rsp
Lbb52:
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
	jz Lbb55
	subq $32, %rsp
	callq cli_cli_drop_command
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq *%r8
	subq $-32, %rsp
Lbb55:
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
	leaq str171(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb80
	subq $32, %rsp
	leaq str177(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb79
	subq $32, %rsp
	leaq str183(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb78
	subq $32, %rsp
	leaq str189(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb77
	subq $32, %rsp
	leaq str195(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb76
	subq $32, %rsp
	leaq str201(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb75
	subq $32, %rsp
	leaq str207(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb74
	subq $32, %rsp
	leaq str213(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb73
	subq $32, %rsp
	leaq str219(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb72
	subq $32, %rsp
	leaq str225(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb71
	subq $32, %rsp
	leaq str231(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb70
	subq $32, %rsp
	leaq str237(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb69
	subq $32, %rsp
	callq utilities_colors_path
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str243(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cli_fail
	subq $-32, %rsp
	jmp Lbb82
Lbb69:
	subq $32, %rsp
	callq cli_help_version_help
	subq $-32, %rsp
	jmp Lbb82
Lbb70:
	subq $32, %rsp
	callq cli_help_test_help
	subq $-32, %rsp
	jmp Lbb82
Lbb71:
	subq $32, %rsp
	callq cli_help_run_help
	subq $-32, %rsp
	jmp Lbb82
Lbb72:
	subq $32, %rsp
	callq cli_help_new_help
	subq $-32, %rsp
	jmp Lbb82
Lbb73:
	subq $32, %rsp
	callq cli_help_format_help
	subq $-32, %rsp
	jmp Lbb82
Lbb74:
	subq $32, %rsp
	callq cli_help_format_help
	subq $-32, %rsp
	jmp Lbb82
Lbb75:
	subq $32, %rsp
	callq cli_help_docs_help
	subq $-32, %rsp
	jmp Lbb82
Lbb76:
	subq $32, %rsp
	callq cli_help_deps_help
	subq $-32, %rsp
	jmp Lbb82
Lbb77:
	subq $32, %rsp
	callq cli_help_clean_help
	subq $-32, %rsp
	jmp Lbb82
Lbb78:
	subq $32, %rsp
	callq cli_help_check_help
	subq $-32, %rsp
	jmp Lbb82
Lbb79:
	subq $32, %rsp
	callq cli_help_build_help
	subq $-32, %rsp
	jmp Lbb82
Lbb80:
	movq %rsi, %rcx
	subq $32, %rsp
	callq cli_help_main_help
	subq $-32, %rsp
Lbb82:
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
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq utilities_colors_strip
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str256(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb96
	subq $32, %rsp
	leaq str263(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb94
	subq $32, %rsp
	leaq str270(%rip), %rdx
	movq %rcx, %rdi
	callq donna_string_starts_with
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb91
	subq $32, %rsp
	leaq str277(%rip), %rdx
	callq donna_string_starts_with
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb93
Lbb91:
	movq $1, (%rdi)
	movl $1, %eax
Lbb93:
	movq %rax, (%rsi)
	jmp Lbb97
Lbb94:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb97
Lbb96:
	movl $1, %eax
Lbb97:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
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
	leaq str282(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str284(%rip), %rdx
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
	jz Lbb108
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb104
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb105
Lbb104:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str305(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb105:
	cmpl $0, %eax
	jnz Lbb107
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
	jmp Lbb109
Lbb107:
	movq 16(%rcx), %rax
	jmp Lbb109
Lbb108:
	leaq donna_nil(%rip), %rax
Lbb109:
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
	jz Lbb118
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb114
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb115
Lbb114:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str349(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb115:
	cmpl $0, %eax
	jnz Lbb117
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cli_first_positional
	subq $-32, %rsp
	jmp Lbb119
Lbb117:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb119
Lbb118:
	leaq str336(%rip), %rax
Lbb119:
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
	jz Lbb132
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb126
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb127
Lbb126:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str391(%rip), %rdx
	callq strcmp
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb127:
	cmpl $0, %eax
	jnz Lbb129
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cli_second_positional_loop
	subq $-32, %rsp
	jmp Lbb133
Lbb129:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb131
	subq $32, %rsp
	movl $1, %edx
	callq cli_cli_second_positional_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb133
Lbb131:
	movq %rax, (%rsi)
	jmp Lbb133
Lbb132:
	leaq str378(%rip), %rax
Lbb133:
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
	leaq str420(%rip), %rdx
	movq %rcx, %rsi
	callq cli_cli_has_flag
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str422(%rip), %rdx
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
	jz Lbb141
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
	jz Lbb139
	subq $32, %rsp
	callq cli_cli_has_flag
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb142
Lbb139:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb142
Lbb141:
	movl $0, %eax
Lbb142:
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

