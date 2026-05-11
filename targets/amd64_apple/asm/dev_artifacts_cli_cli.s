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
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
_str89:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
_str96:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
_str103:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
_str110:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
_str117:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
_str124:
	.ascii "  Run "
	.byte 0
/* end data */

.data
.balign 8
_str126:
	.ascii "donna help"
	.byte 0
/* end data */

.data
.balign 8
_str128:
	.ascii " to see available commands"
	.byte 0
/* end data */

.data
.balign 8
_str131:
	.ascii "unknown command "
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str139:
	.ascii "donna"
	.byte 0
/* end data */

.data
.balign 8
_str141:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str164:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str170:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
_str176:
	.ascii "check"
	.byte 0
/* end data */

.data
.balign 8
_str182:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
_str188:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
_str194:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
_str200:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
_str206:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
_str212:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
_str218:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
_str224:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
_str230:
	.ascii "unknown help topic "
	.byte 0
/* end data */

.data
.balign 8
_str243:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str250:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
_str257:
	.ascii "parse error:"
	.byte 0
/* end data */

.data
.balign 8
_str264:
	.ascii "lex error:"
	.byte 0
/* end data */

.data
.balign 8
_str269:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str271:
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
_str292:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str323:
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
_str365:
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
_str407:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
_str409:
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
	jz Lbb27
	leaq _str46(%rip), %rsi
	movq %rdi, %r13
	callq _strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz Lbb25
	leaq _str53(%rip), %rsi
	movq %rdi, %r13
	callq _strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz Lbb23
	leaq _str61(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb22
	leaq _str68(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb21
	leaq _str75(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb20
	leaq _str82(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb19
	leaq _str89(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb18
	leaq _str96(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb17
	leaq _str103(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb16
	leaq _str110(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb15
	leaq _str117(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb14
	movq %rdi, %rbx
	leaq _str124(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, %rdi
	leaq _str126(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r12
	leaq _str128(%rip), %rdi
	callq _utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _utilities_colors_path
	movq %rax, %rsi
	leaq _str131(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _cli_cli_fail
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str135(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	jmp Lbb44
Lbb14:
	callq _cli_help_docs_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_docs_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb44
Lbb15:
	callq _cli_help_format_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_format_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb44
Lbb16:
	callq _cli_help_format_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_format_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb44
Lbb17:
	callq _cli_help_test_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_test_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb44
Lbb18:
	callq _cli_help_run_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_run_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb44
Lbb19:
	callq _cli_help_new_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_new_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb44
Lbb20:
	callq _cli_help_clean_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_clean_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb44
Lbb21:
	callq _cli_help_check_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_check_run(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cli_route_command
	jmp Lbb44
Lbb22:
	callq _cli_help_build_help
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _cli_cmd_build_run(%rip), %rdx
	callq _cli_cli_route_command
	jmp Lbb44
Lbb23:
	movq %rbx, %rdi
	movq %r12, %rbx
	callq _cli_cli_second_positional
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _cli_cli_help_for
	movq %rax, %rdi
	callq _cli_cli_show
	jmp Lbb44
Lbb25:
	movq %r12, %rdi
	movq %rbx, %rsi
	movq %rdi, %r14
	callq _cli_cli_command_or_version
	movq %rax, %rdi
	callq _cli_cli_show
	jmp Lbb44
Lbb27:
	movq %rbx, %rdi
	movq %r12, %r14
	leaq _str8(%rip), %rsi
	movq %rdi, %rbx
	callq _cli_cli_has_flag
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb41
	leaq _str16(%rip), %rsi
	movq %rdi, %r12
	callq _cli_cli_has_flag
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb38
	leaq _str24(%rip), %rsi
	movq %rdi, %r13
	callq _cli_cli_has_flag
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb35
	leaq _str32(%rip), %rsi
	callq _cli_cli_has_flag
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	cmpq $1, %rax
	jz Lbb33
	callq _cli_help_main_help
	movq %rax, %rdi
	movq %rdi, (%r14)
	jmp Lbb34
Lbb33:
	callq _cli_cli_version_line
	movq %rax, %rdi
	movq %rdi, (%r14)
Lbb34:
	movq %rdi, (%r13)
	jmp Lbb37
Lbb35:
	movq %r14, %rdi
	callq _cli_cli_version_line
	movq %rax, %rdi
	movq %rdi, (%r13)
Lbb37:
	movq %rdi, (%r12)
	jmp Lbb40
Lbb38:
	movq %r14, %rdi
	callq _cli_help_main_help
	movq %rax, %rdi
	movq %rdi, (%r12)
Lbb40:
	movq %rdi, (%rbx)
	jmp Lbb43
Lbb41:
	movq %r14, %rdi
	callq _cli_help_main_help
	movq %rax, %rdi
	movq %rdi, (%rbx)
Lbb43:
	callq _cli_cli_show
Lbb44:
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
	leaq _str139(%rip), %rdi
	callq _utilities_colors_bold
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str141(%rip), %rsi
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
	jz Lbb49
	callq _cli_cli_version_line
	jmp Lbb50
Lbb49:
	callq _cli_help_version_help
Lbb50:
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
	jz Lbb53
	callq _cli_cli_drop_command
	movq %rbx, %rdx
	movq %rax, %rdi
	callq *%rdx
Lbb53:
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
	leaq _str164(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb76
	leaq _str170(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb75
	leaq _str176(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb74
	leaq _str182(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb73
	leaq _str188(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb72
	leaq _str194(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb71
	leaq _str200(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb70
	leaq _str206(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb69
	leaq _str212(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb68
	leaq _str218(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb67
	leaq _str224(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb66
	callq _utilities_colors_path
	movq %rax, %rsi
	leaq _str230(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _cli_cli_fail
	jmp Lbb78
Lbb66:
	callq _cli_help_version_help
	jmp Lbb78
Lbb67:
	callq _cli_help_test_help
	jmp Lbb78
Lbb68:
	callq _cli_help_run_help
	jmp Lbb78
Lbb69:
	callq _cli_help_new_help
	jmp Lbb78
Lbb70:
	callq _cli_help_format_help
	jmp Lbb78
Lbb71:
	callq _cli_help_format_help
	jmp Lbb78
Lbb72:
	callq _cli_help_docs_help
	jmp Lbb78
Lbb73:
	callq _cli_help_clean_help
	jmp Lbb78
Lbb74:
	callq _cli_help_check_help
	jmp Lbb78
Lbb75:
	callq _cli_help_build_help
	jmp Lbb78
Lbb76:
	movq %rbx, %rdi
	callq _cli_help_main_help
Lbb78:
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
	leaq _str243(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_starts_with
	movq %rbx, %rdi
	cmpq $1, %rax
	jz Lbb92
	leaq _str250(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_starts_with
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb90
	leaq _str257(%rip), %rsi
	movq %rdi, %r12
	callq _donna_string_starts_with
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb87
	leaq _str264(%rip), %rsi
	callq _donna_string_starts_with
	movq %rax, (%r12)
	jmp Lbb89
Lbb87:
	movq $1, (%r12)
	movl $1, %eax
Lbb89:
	movq %rax, (%rbx)
	jmp Lbb93
Lbb90:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb93
Lbb92:
	movl $1, %eax
Lbb93:
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
	leaq _str269(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str271(%rip), %rsi
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
	jz Lbb104
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb100
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb101
Lbb100:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str292(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb101:
	cmpl $0, %eax
	jnz Lbb103
	movq 8(%rdi), %r12
	movq 16(%rdi), %rdi
	callq _cli_cli_drop_command
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb105
Lbb103:
	movq 16(%rdi), %rax
	jmp Lbb105
Lbb104:
	leaq _donna_nil(%rip), %rax
Lbb105:
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
	jz Lbb114
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb110
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb111
Lbb110:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str336(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb111:
	cmpl $0, %eax
	jnz Lbb113
	movq 16(%rdi), %rdi
	callq _cli_cli_first_positional
	jmp Lbb115
Lbb113:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp Lbb115
Lbb114:
	leaq _str323(%rip), %rax
Lbb115:
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
	jz Lbb128
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb122
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb123
Lbb122:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	movq %rsi, %r13
	leaq _str378(%rip), %rsi
	callq _strcmp
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb123:
	cmpl $0, %eax
	jnz Lbb125
	movq 16(%rdi), %rdi
	callq _cli_cli_second_positional_loop
	jmp Lbb129
Lbb125:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rsi
	jz Lbb127
	movl $1, %esi
	callq _cli_cli_second_positional_loop
	movq %rax, (%rbx)
	jmp Lbb129
Lbb127:
	movq %rax, (%rbx)
	jmp Lbb129
Lbb128:
	leaq _str365(%rip), %rax
Lbb129:
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
	leaq _str407(%rip), %rsi
	movq %rdi, %rbx
	callq _cli_cli_has_flag
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq _str409(%rip), %rsi
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
	jz Lbb137
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
	jz Lbb135
	callq _cli_cli_has_flag
	movq %rax, (%rbx)
	jmp Lbb138
Lbb135:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb138
Lbb137:
	movl $0, %eax
Lbb138:
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

