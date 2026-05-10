.text
.balign 16
.globl markdown_markdown_to_html
markdown_markdown_to_html:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_markdown_to_html
	ldp	x29, x30, [sp], 16
	ret
.type markdown_markdown_to_html, @function
.size markdown_markdown_to_html, .-markdown_markdown_to_html
/* end function markdown_markdown_to_html */

.section .note.GNU-stack,"",@progbits
