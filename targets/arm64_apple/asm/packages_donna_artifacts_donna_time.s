.text
.balign 4
.globl _donna_time_now_ms
_donna_time_now_ms:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_donna_ffi_time_now_ms
	ldp	x29, x30, [sp], 16
	ret
/* end function donna_time_now_ms */

.text
.balign 4
.globl _donna_time_now_us
_donna_time_now_us:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_donna_ffi_time_now_us
	ldp	x29, x30, [sp], 16
	ret
/* end function donna_time_now_us */

