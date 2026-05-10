.text
.balign 16
.globl donna_time_now_ms
donna_time_now_ms:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_ffi_time_now_ms
	subq $-32, %rsp
	leave
	ret
/* end function donna_time_now_ms */

.text
.balign 16
.globl donna_time_now_us
donna_time_now_us:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_ffi_time_now_us
	subq $-32, %rsp
	leave
	ret
/* end function donna_time_now_us */

