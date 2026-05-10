.text
.balign 4
.globl _markdown_markdown_to_html
_markdown_markdown_to_html:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_donna_markdown_to_html
	ldp	x29, x30, [sp], 16
	ret
/* end function markdown_markdown_to_html */

