.text
.balign 16
.globl donna_time_now_ms
donna_time_now_ms:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_time_now_ms
	ldp	x29, x30, [sp], 16
	ret
.type donna_time_now_ms, @function
.size donna_time_now_ms, .-donna_time_now_ms
/* end function donna_time_now_ms */

.text
.balign 16
.globl donna_time_now_us
donna_time_now_us:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_ffi_time_now_us
	ldp	x29, x30, [sp], 16
	ret
.type donna_time_now_us, @function
.size donna_time_now_us, .-donna_time_now_us
/* end function donna_time_now_us */

.section .note.GNU-stack,"",@progbits
