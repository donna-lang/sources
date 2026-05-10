.text
.balign 16
.globl _markdown_markdown_to_html
_markdown_markdown_to_html:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_markdown_to_html
	leave
	ret
/* end function markdown_markdown_to_html */

