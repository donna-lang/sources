.data
.balign 8
_str3:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str8:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
_str16:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
_str24:
	.ascii "V"
	.byte 0
/* end data */

.data
.balign 8
_str32:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
_str46:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
_str53:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
_str61:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
_str68:
	.ascii "check"
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
_str82:
	.ascii "deps"
	.byte 0
/* end data */

.data
.balign 8
_str89:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
_str96:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
_str103:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
_str110:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
_str117:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
_str124:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
_str131:
	.ascii "  Run "
	.byte 0
/* end data */

.data
.balign 8
_str133:
	.ascii "donna help"
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.ascii " to see available commands"
	.byte 0
/* end data */

.data
.balign 8
_str138:
	.ascii "unknown command "
	.byte 0
/* end data */

.data
.balign 8
_str142:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str146:
	.ascii "donna"
	.byte 0
/* end data */

.data
.balign 8
_str148:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str171:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str177:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
_str183:
	.ascii "check"
	.byte 0
/* end data */

.data
.balign 8
_str189:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
_str195:
	.ascii "deps"
	.byte 0
/* end data */

.data
.balign 8
_str201:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
_str207:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
_str213:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
_str219:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
_str225:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
_str231:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
_str237:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
_str243:
	.ascii "unknown help topic "
	.byte 0
/* end data */

.data
.balign 8
_str256:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str263:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
_str270:
	.ascii "parse error:"
	.byte 0
/* end data */

.data
.balign 8
_str277:
	.ascii "lex error:"
	.byte 0
/* end data */

.data
.balign 8
_str282:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str284:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str305:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str336:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str349:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str378:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str391:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str420:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
_str422:
	.ascii "help"
	.byte 0
/* end data */

.text
.balign 16
.globl _cli_cli_run
_cli_cli_run:
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
	callq _cli_cli_first_positional
	movq %rax, %rdi
	leaq _str3(%rip), %rsi
	movq %rdi, %r13
	callq _strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz Lbb29
	leaq _str46(%rip), %rsi
	movq %rdi, %r13
	callq _strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz Lbb27
	leaq _str53(%rip), %rsi
	movq %rdi, %r13
	callq _strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz Lbb25
	leaq _str61(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb24
	leaq _str68(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb23
	leaq _str75(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb22
	leaq _str82(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb21
	leaq _str89(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb20
	leaq _str96(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb19
	leaq _str103(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb18
	leaq _str110(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb17
	leaq _str117(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb16
	leaq _str124(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb15
	movq %rdi, %rbx
	leaq _str131(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, %rdi
	leaq _str133(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r12
	leaq _str135(%rip), %rdi
	callq _utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _utilities_colors_path
	movq %rax, %rsi
	leaq _str138(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _cli_cli_fail
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str142(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	jmp Lbb46
Lbb15:
	callq _cli_help_docs_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_docs_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb46
Lbb16:
	callq _cli_help_format_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_format_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb46
Lbb17:
	callq _cli_help_format_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_format_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb46
Lbb18:
	callq _cli_help_test_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_test_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb46
Lbb19:
	callq _cli_help_run_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_run_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb46
Lbb20:
	callq _cli_help_new_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_new_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb46
Lbb21:
	callq _cli_help_deps_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_deps_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb46
Lbb22:
	callq _cli_help_clean_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_clean_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb46
Lbb23:
	callq _cli_help_check_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_check_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb46
Lbb24:
	callq _cli_help_build_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_build_run(%rip), %rdx
	callq _cli_cli_route_command
	jmp Lbb46
Lbb25:
	movq %rbx, %rdi
	movq %r12, %rbx
	callq _cli_cli_second_positional
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _cli_cli_help_for
	movq %rax, %rdi
	callq _cli_cli_show
	jmp Lbb46
Lbb27:
	movq %r12, %rdi
	movq %rbx, %rsi
	movq %rdi, %r14
	callq _cli_cli_command_or_version
	movq %rax, %rdi
	callq _cli_cli_show
	jmp Lbb46
Lbb29:
	movq %rbx, %rdi
	movq %r12, %r14
	leaq _str8(%rip), %rsi
	movq %rdi, %rbx
	callq _cli_cli_has_flag
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb43
	leaq _str16(%rip), %rsi
	movq %rdi, %r12
	callq _cli_cli_has_flag
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb40
	leaq _str24(%rip), %rsi
	movq %rdi, %r13
	callq _cli_cli_has_flag
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb37
	leaq _str32(%rip), %rsi
	callq _cli_cli_has_flag
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	cmpq $1, %rax
	jz Lbb35
	callq _cli_help_main_help
	movq %rax, %rdi
	movq %rdi, (%r14)
	jmp Lbb36
Lbb35:
	callq _cli_cli_version_line
	movq %rax, %rdi
	movq %rdi, (%r14)
Lbb36:
	movq %rdi, (%r13)
	jmp Lbb39
Lbb37:
	movq %r14, %rdi
	callq _cli_cli_version_line
	movq %rax, %rdi
	movq %rdi, (%r13)
Lbb39:
	movq %rdi, (%r12)
	jmp Lbb42
Lbb40:
	movq %r14, %rdi
	callq _cli_help_main_help
	movq %rax, %rdi
	movq %rdi, (%r12)
Lbb42:
	movq %rdi, (%rbx)
	jmp Lbb45
Lbb43:
	movq %r14, %rdi
	callq _cli_help_main_help
	movq %rax, %rdi
	movq %rdi, (%rbx)
Lbb45:
	callq _cli_cli_show
Lbb46:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cli_run */

.text
.balign 16
_cli_cli_version_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq _str146(%rip), %rdi
	callq _utilities_colors_bold
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str148(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	popq %rbx
	leave
	ret
/* end function cli_cli_version_line */

.text
.balign 16
_cli_cli_command_or_version:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movq %rsi, %rdi
	callq _cli_cli_has_help_flag
	movq %rbx, %rdi
	cmpq $1, %rax
	jz Lbb51
	callq _cli_cli_version_line
	jmp Lbb52
Lbb51:
	callq _cli_help_version_help
Lbb52:
	popq %rbx
	leave
	ret
/* end function cli_cli_command_or_version */

.text
.balign 16
_cli_cli_route_command:
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
	callq _cli_cli_has_help_flag
	movq %r13, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	cmpq $1, %rcx
	jz Lbb55
	callq _cli_cli_drop_command
	movq %rbx, %rdx
	movq %rax, %rdi
	callq *%rdx
Lbb55:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cli_route_command */

.text
.balign 16
_cli_cli_help_for:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	movq %rsi, %rdi
	leaq _str171(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb80
	leaq _str177(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb79
	leaq _str183(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb78
	leaq _str189(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb77
	leaq _str195(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb76
	leaq _str201(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb75
	leaq _str207(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb74
	leaq _str213(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb73
	leaq _str219(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb72
	leaq _str225(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb71
	leaq _str231(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb70
	leaq _str237(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb69
	callq _utilities_colors_path
	movq %rax, %rsi
	leaq _str243(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _cli_cli_fail
	jmp Lbb82
Lbb69:
	callq _cli_help_version_help
	jmp Lbb82
Lbb70:
	callq _cli_help_test_help
	jmp Lbb82
Lbb71:
	callq _cli_help_run_help
	jmp Lbb82
Lbb72:
	callq _cli_help_new_help
	jmp Lbb82
Lbb73:
	callq _cli_help_format_help
	jmp Lbb82
Lbb74:
	callq _cli_help_format_help
	jmp Lbb82
Lbb75:
	callq _cli_help_docs_help
	jmp Lbb82
Lbb76:
	callq _cli_help_deps_help
	jmp Lbb82
Lbb77:
	callq _cli_help_clean_help
	jmp Lbb82
Lbb78:
	callq _cli_help_check_help
	jmp Lbb82
Lbb79:
	callq _cli_help_build_help
	jmp Lbb82
Lbb80:
	movq %rbx, %rdi
	callq _cli_help_main_help
Lbb82:
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cli_help_for */

.text
.balign 16
_cli_cli_show:
	endbr64
	movq %rdi, %rax
	ret
/* end function cli_cli_show */

.text
.balign 16
.globl _cli_cli_exit_code_for_output
_cli_cli_exit_code_for_output:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _cli_cli_is_failure_text
	cmpq $1, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	leave
	ret
/* end function cli_cli_exit_code_for_output */

.text
.balign 16
_cli_cli_is_failure_text:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	callq _utilities_colors_strip
	movq %rax, %rdi
	leaq _str256(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_starts_with
	movq %rbx, %rdi
	cmpq $1, %rax
	jz Lbb96
	leaq _str263(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_starts_with
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb94
	leaq _str270(%rip), %rsi
	movq %rdi, %r12
	callq _donna_string_starts_with
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb91
	leaq _str277(%rip), %rsi
	callq _donna_string_starts_with
	movq %rax, (%r12)
	jmp Lbb93
Lbb91:
	movq $1, (%r12)
	movl $1, %eax
Lbb93:
	movq %rax, (%rbx)
	jmp Lbb97
Lbb94:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb97
Lbb96:
	movl $1, %eax
Lbb97:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cli_is_failure_text */

.text
.balign 16
_cli_cli_fail:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq _str282(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str284(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	popq %rbx
	leave
	ret
/* end function cli_cli_fail */

.text
.balign 16
_cli_cli_drop_command:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb108
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb104
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb105
Lbb104:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str305(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb105:
	cmpl $0, %eax
	jnz Lbb107
	movq 8(%rdi), %r12
	movq 16(%rdi), %rdi
	callq _cli_cli_drop_command
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb109
Lbb107:
	movq 16(%rdi), %rax
	jmp Lbb109
Lbb108:
	leaq _donna_nil(%rip), %rax
Lbb109:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cli_drop_command */

.text
.balign 16
_cli_cli_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb118
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb114
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb115
Lbb114:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str349(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb115:
	cmpl $0, %eax
	jnz Lbb117
	movq 16(%rdi), %rdi
	callq _cli_cli_first_positional
	jmp Lbb119
Lbb117:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp Lbb119
Lbb118:
	leaq _str336(%rip), %rax
Lbb119:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cli_first_positional */

.text
.balign 16
_cli_cli_second_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %esi
	callq _cli_cli_second_positional_loop
	leave
	ret
/* end function cli_cli_second_positional */

.text
.balign 16
_cli_cli_second_positional_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb132
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb126
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb127
Lbb126:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	movq %rsi, %r13
	leaq _str391(%rip), %rsi
	callq _strcmp
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb127:
	cmpl $0, %eax
	jnz Lbb129
	movq 16(%rdi), %rdi
	callq _cli_cli_second_positional_loop
	jmp Lbb133
Lbb129:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rsi
	jz Lbb131
	movl $1, %esi
	callq _cli_cli_second_positional_loop
	movq %rax, (%rbx)
	jmp Lbb133
Lbb131:
	movq %rax, (%rbx)
	jmp Lbb133
Lbb132:
	leaq _str378(%rip), %rax
Lbb133:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cli_second_positional_loop */

.text
.balign 16
_cli_cli_has_help_flag:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq _str420(%rip), %rsi
	movq %rdi, %rbx
	callq _cli_cli_has_flag
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq _str422(%rip), %rsi
	callq _cli_cli_has_flag
	orq %rbx, %rax
	popq %rbx
	leave
	ret
/* end function cli_cli_has_help_flag */

.text
.balign 16
_cli_cli_has_flag:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb141
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	movq %rsi, %r12
	callq _donna_string_equal
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb139
	callq _cli_cli_has_flag
	movq %rax, (%rbx)
	jmp Lbb142
Lbb139:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb142
Lbb141:
	movl $0, %eax
Lbb142:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cli_has_flag */

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

