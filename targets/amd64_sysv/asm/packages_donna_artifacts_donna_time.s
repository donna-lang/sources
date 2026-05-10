.text
.balign 16
.globl donna_time_now_ms
donna_time_now_ms:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_time_now_ms
	leave
	ret
.type donna_time_now_ms, @function
.size donna_time_now_ms, .-donna_time_now_ms
/* end function donna_time_now_ms */

.text
.balign 16
.globl donna_time_now_us
donna_time_now_us:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_time_now_us
	leave
	ret
.type donna_time_now_us, @function
.size donna_time_now_us, .-donna_time_now_us
/* end function donna_time_now_us */

.section .note.GNU-stack,"",@progbits
