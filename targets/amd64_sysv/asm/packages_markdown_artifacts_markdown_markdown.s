.text
.balign 16
.globl markdown_markdown_to_html
markdown_markdown_to_html:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_markdown_to_html
	leave
	ret
.type markdown_markdown_to_html, @function
.size markdown_markdown_to_html, .-markdown_markdown_to_html
/* end function markdown_markdown_to_html */

.section .note.GNU-stack,"",@progbits
