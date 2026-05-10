.text
.balign 16
.globl _donna_time_now_ms
_donna_time_now_ms:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_time_now_ms
	leave
	ret
/* end function donna_time_now_ms */

.text
.balign 16
.globl _donna_time_now_us
_donna_time_now_us:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_time_now_us
	leave
	ret
/* end function donna_time_now_us */

