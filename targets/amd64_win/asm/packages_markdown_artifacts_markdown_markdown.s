.text
.balign 16
.globl markdown_markdown_to_html
markdown_markdown_to_html:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_markdown_to_html
	subq $-32, %rsp
	leave
	ret
/* end function markdown_markdown_to_html */

