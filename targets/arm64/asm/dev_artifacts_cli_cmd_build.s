.data
.balign 8
.globl cli_cmd_build_BuildDebug
cli_cmd_build_BuildDebug:
	.quad 0
/* end data */

.data
.balign 8
str27:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str29:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str45:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str56:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str57:
	.ascii "debug"
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str126:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str164:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str193:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str238:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str246:
	.ascii ".link.log"
	.byte 0
/* end data */

.data
.balign 8
str249:
	.ascii " > "
	.byte 0
/* end data */

.data
.balign 8
str253:
	.ascii " 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str267:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str280:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str289:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str291:
	.ascii "target"
	.byte 0
/* end data */

.data
.balign 8
str296:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str305:
	.ascii "bin"
	.byte 0
/* end data */

.data
.balign 8
str308:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str317:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str320:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str330:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str338:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str340:
	.ascii "target"
	.byte 0
/* end data */

.data
.balign 8
str345:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str355:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str365:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str375:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str385:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
str387:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str389:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str392:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
str394:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str396:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str401:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str403:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
str406:
	.ascii "  command: "
	.byte 0
/* end data */

.data
.balign 8
str416:
	.ascii "  linker did not print an error message"
	.byte 0
/* end data */

.data
.balign 8
str418:
	.ascii "  linker output:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str423:
	.ascii "hint:"
	.byte 0
/* end data */

.data
.balign 8
str425:
	.ascii " check missing C symbols, FFI objects, or linker flags"
	.byte 0
/* end data */

.data
.balign 8
str439:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str441:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str443:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str455:
	.ascii "    "
	.byte 0
/* end data */

.data
.balign 8
str458:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str479:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str483:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str485:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str598:
	.ascii "main"
	.byte 0
/* end data */

.data
.balign 8
str608:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str616:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str620:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
str625:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str637:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
str642:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str646:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
str651:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str655:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
str660:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
str665:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str672:
	.ascii "-O2"
	.byte 0
/* end data */

.data
.balign 8
str679:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
str686:
	.ascii ".exe"
	.byte 0
/* end data */

.data
.balign 8
str689:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str697:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
str699:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str703:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str704:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str705:
	.ascii "'"
	.byte 92
	.ascii "''"
	.byte 0
/* end data */

.data
.balign 8
str708:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str716:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str729:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str752:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str759:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str761:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
str768:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str775:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str779:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str788:
	.ascii "target"
	.byte 0
/* end data */

.data
.balign 8
str790:
	.ascii "all"
	.byte 0
/* end data */

.data
.balign 8
str854:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str882:
	.ascii "amd64"
	.byte 0
/* end data */

.data
.balign 8
str887:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str890:
	.ascii "x86_64"
	.byte 0
/* end data */

.data
.balign 8
str895:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str898:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str903:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str906:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
str911:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
str914:
	.ascii "x86_64_apple"
	.byte 0
/* end data */

.data
.balign 8
str919:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
str922:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
str927:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
str930:
	.ascii "x86_64_win"
	.byte 0
/* end data */

.data
.balign 8
str935:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
str938:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
str943:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
str946:
	.ascii "aarch64"
	.byte 0
/* end data */

.data
.balign 8
str951:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
str954:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
str959:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
str962:
	.ascii "aarch64_apple"
	.byte 0
/* end data */

.data
.balign 8
str967:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
str970:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str972:
	.ascii ": unknown release target "
	.byte 0
/* end data */

.data
.balign 8
str979:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
str983:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
str987:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
str991:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
str995:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str999:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str1007:
	.ascii "uname -m | grep -q 'arm64"
	.byte 92
	.ascii "|aarch64' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str1015:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
str1016:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
str1018:
	.ascii "uname -m | grep -q 'arm64"
	.byte 92
	.ascii "|aarch64' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str1026:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
str1027:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str1032:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str1037:
	.ascii "amd64"
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_build_BuildOk
cli_cmd_build_BuildOk:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_BuildOk, @function
.size cli_cmd_build_BuildOk, .-cli_cmd_build_BuildOk
/* end function cli_cmd_build_BuildOk */

.text
.balign 16
.globl cli_cmd_build_BuildFailed
cli_cmd_build_BuildFailed:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_BuildFailed, @function
.size cli_cmd_build_BuildFailed, .-cli_cmd_build_BuildFailed
/* end function cli_cmd_build_BuildFailed */

.text
.balign 16
.globl cli_cmd_build_BuildRelease
cli_cmd_build_BuildRelease:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_BuildRelease, @function
.size cli_cmd_build_BuildRelease, .-cli_cmd_build_BuildRelease
/* end function cli_cmd_build_BuildRelease */

.text
.balign 16
.globl cli_cmd_build_run
cli_cmd_build_run:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	cli_cmd_build_build_dir_arg
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	cli_cmd_build_build_config
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L15
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	builder_scanner_scan
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x1]
	cmp	x3, #1
	beq	.L13
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	bl	cli_cmd_build_build_project_with_config
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L11
	adrp	x0, str45
	add	x0, x0, #:lo12:str45
	str	x0, [x1]
	adrp	x0, str45
	add	x0, x0, #:lo12:str45
	b	.L12
.L11:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	str	x0, [x1]
.L12:
	str	x0, [x19]
	b	.L17
.L13:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x0, str27
	add	x0, x0, #:lo12:str27
	bl	utilities_colors_red
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str29
	add	x1, x1, #:lo12:str29
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L17
.L15:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L17:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_run, @function
.size cli_cmd_build_run, .-cli_cmd_build_run
/* end function cli_cmd_build_run */

.text
.balign 16
.globl cli_cmd_build_build_project
cli_cmd_build_build_project:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, cli_cmd_build_BuildDebug
	add	x2, x2, #:lo12:cli_cmd_build_BuildDebug
	bl	cli_cmd_build_build_project_with_config
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_build_build_project, @function
.size cli_cmd_build_build_project, .-cli_cmd_build_build_project
/* end function cli_cmd_build_build_project */

.text
.balign 16
.globl cli_cmd_build_build_project_with_config
cli_cmd_build_build_project_with_config:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	.L22
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	bl	cli_cmd_build_build_release_targets
	b	.L23
.L22:
	adrp	x3, str57
	add	x3, x3, #:lo12:str57
	adrp	x2, str56
	add	x2, x2, #:lo12:str56
	bl	cli_cmd_build_build_project_target
.L23:
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_build_build_project_with_config, @function
.size cli_cmd_build_build_project_with_config, .-cli_cmd_build_build_project_with_config
/* end function cli_cmd_build_build_project_with_config */

.text
.balign 16
cli_cmd_build_build_release_targets:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x3, x2
	ldr	x2, [x3]
	cmp	x2, #0
	beq	.L35
	mov	x2, #8
	add	x2, x3, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x21, [x3]
	adrp	x3, str75
	add	x3, x3, #:lo12:str75
	mov	x20, x1
	mov	x19, x0
	bl	cli_cmd_build_build_project_target
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	ldr	x4, [x3]
	cmp	x4, #1
	beq	.L33
	mov	x4, #8
	add	x3, x3, x4
	ldr	x23, [x3]
	bl	cli_cmd_build_build_release_targets
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L31
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x21, sp
	cmp	x23, #1
	beq	.L29
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	.L30
.L29:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x21]
.L30:
	str	x0, [x20]
	b	.L32
.L31:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L32:
	str	x0, [x19]
	b	.L36
.L33:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L36
.L35:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #0
	str	x1, [x2]
.L36:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type cli_cmd_build_build_release_targets, @function
.size cli_cmd_build_build_release_targets, .-cli_cmd_build_build_release_targets
/* end function cli_cmd_build_build_release_targets */

.text
.balign 16
cli_cmd_build_build_project_target:
	hint	#34
	stp	x29, x30, [sp, -224]!
	mov	x29, sp
	str	x19, [x29, 216]
	str	x20, [x29, 208]
	str	x21, [x29, 200]
	str	x22, [x29, 192]
	str	x23, [x29, 184]
	str	x24, [x29, 176]
	str	x25, [x29, 168]
	str	x26, [x29, 160]
	str	x27, [x29, 152]
	str	x28, [x29, 144]
	mov	x23, x3
	mov	x19, x2
	mov	x26, x1
	mov	x20, x0
	bl	donna_time_now_us
	mov	x22, x0
	mov	x0, x26
	bl	builder_scanner_project_build_dir
	mov	x2, x19
	mov	x1, x23
	mov	x21, x0
	mov	x0, x26
	bl	cli_cmd_build_target_root_dir
	str	x0, [x29, 128]
	mov	x0, x21
	mov	x2, x19
	mov	x1, x23
	mov	x21, x0
	mov	x0, x26
	bl	cli_cmd_build_bin_dir_for_mode
	mov	x24, x0
	mov	x0, x21
	mov	x2, x19
	mov	x1, x23
	mov	x21, x0
	mov	x0, x26
	bl	cli_cmd_build_artifacts_dir_for_mode
	mov	x2, x0
	mov	x0, x21
	mov	x25, x2
	mov	x2, x19
	mov	x1, x23
	mov	x21, x0
	mov	x0, x26
	bl	cli_cmd_build_deps_build_dir_for_mode
	str	x0, [x29, 120]
	mov	x0, x21
	ldr	x21, [x29, 128]
	bl	donna_files_mkdir
	mov	x0, x21
	mov	x1, x23
	mov	x21, x0
	mov	x0, x26
	bl	cli_cmd_build_mkdir_release_parents
	mov	x0, x21
	ldr	x21, [x29, 120]
	bl	donna_files_mkdir
	mov	x0, x20
	mov	x20, x0
	mov	x0, x24
	bl	donna_files_mkdir
	mov	x0, x20
	mov	x20, x0
	mov	x0, x25
	bl	donna_files_mkdir
	mov	x1, x21
	mov	x0, x20
	mov	x21, x1
	adrp	x1, str126
	add	x1, x1, #:lo12:str126
	mov	x20, x0
	bl	donna_files_join
	mov	x1, x21
	mov	x21, x1
	mov	x1, x20
	bl	builder_dependencies_resolve_deps_checked
	mov	x2, x25
	mov	x1, x21
	mov	x3, x0
	mov	x0, x20
	ldr	x4, [x3]
	cmp	x4, #1
	beq	.L65
	mov	x4, #8
	add	x3, x3, x4
	ldr	x20, [x3]
	mov	x3, x19
	mov	x25, x2
	mov	x2, x23
	mov	x21, x1
	mov	x1, x25
	bl	cli_cmd_build_compile_ffi_for_mode
	mov	x2, x25
	mov	x1, x21
	mov	x4, x0
	mov	x0, x20
	mov	x6, x19
	mov	x5, x23
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	mov	x20, x2
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	cli_cmd_build_compile_deps
	mov	x2, x20
	mov	x1, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x0]
	cmp	x3, #1
	beq	.L64
	mov	x3, #8
	add	x0, x0, x3
	ldr	x0, [x0]
	ldr	x3, [x0]
	mov	x25, x3
	mov	x3, #8
	add	x3, x0, x3
	ldr	x20, [x3]
	str	x20, [x29, 104]
	mov	x21, x2
	mov	x2, #16
	add	x2, x0, x2
	ldr	x20, [x2]
	str	x20, [x29, 64]
	mov	x20, x1
	mov	x1, #24
	add	x0, x0, x1
	ldr	x4, [x0]
	str	x4, [x29, 112]
	mov	x0, x26
	bl	builder_scanner_project_src_dir
	mov	x3, x25
	mov	x2, x21
	mov	x1, x20
	ldr	x4, [x29, 112]
	ldr	x20, [x29, 104]
	mov	x25, x1
	adrp	x1, str164
	add	x1, x1, #:lo12:str164
	bl	builder_pipeline_compile_dir
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L61
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x21, x0
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	str	x1, [x29, 96]
	bl	cli_cmd_build_has_public_main
	mov	x1, x25
	mov	x2, x0
	mov	x0, x21
	mov	x25, x1
	ldr	x1, [x29, 96]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	cmp	x2, #0
	beq	.L58
	bl	donna_list_append
	str	x0, [x29, 88]
	bl	builder_pipeline_qbe_available
	mov	x1, x0
	mov	x0, x24
	mov	x2, #16
	sub	sp, sp, x2
	mov	x24, sp
	str	x24, [x29, 80]
	cmp	x1, #0
	beq	.L55
	mov	x24, x0
	mov	x0, x23
	bl	cli_cmd_build_c_compiler_available_for_mode
	mov	x1, x25
	mov	x2, x0
	mov	x0, x24
	ldr	x24, [x29, 80]
	mov	x25, x0
	ldr	x0, [x29, 88]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x27, sp
	str	x27, [x29, 24]
	cmp	x2, #0
	beq	.L52
	mov	x2, x1
	mov	x24, x1
	mov	x1, x23
	bl	cli_cmd_build_run_qbe_for_mode
	mov	x1, x0
	mov	x0, x26
	ldr	x27, [x29, 24]
	mov	x26, x22
	ldr	x22, [x29, 80]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x28, sp
	str	x28, [x29, 32]
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L49
	mov	x2, #8
	add	x1, x1, x2
	ldr	x27, [x1]
	str	x27, [x29, 48]
	bl	builder_scanner_project_name
	mov	x1, x24
	mov	x24, x1
	bl	cli_cmd_build_output_name_for_target
	mov	x1, x0
	mov	x0, x25
	bl	donna_files_join
	mov	x1, x24
	mov	x25, x0
	mov	x24, x1
	mov	x0, x23
	bl	cli_cmd_build_cc_flags_for_mode
	mov	x1, x24
	str	x0, [x29, 56]
	mov	x0, x23
	bl	cli_cmd_build_linker_flags_for_mode
	str	x0, [x29, 72]
	mov	x0, #24
	bl	malloc
	mov	x27, x0
	mov	x0, #1
	str	x0, [x27]
	mov	x0, #8
	add	x0, x27, x0
	str	x25, [x0]
	mov	x0, #16
	add	x1, x27, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	ldr	x0, [x29, 72]
	ldr	x24, [x29, 64]
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, str238
	add	x2, x2, #:lo12:str238
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x27, [x2]
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x24
	mov	x24, x0
	ldr	x0, [x29, 56]
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x24
	ldr	x24, [x29, 48]
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x24
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x23
	mov	x24, x1
	adrp	x1, str246
	add	x1, x1, #:lo12:str246
	mov	x23, x0
	mov	x0, x25
	bl	__rt_str_concat
	mov	x1, x24
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	bl	cli_cmd_build_c_command_for_mode
	mov	x1, x0
	mov	x0, x23
	mov	x24, x1
	adrp	x1, str249
	add	x1, x1, #:lo12:str249
	mov	x23, x0
	mov	x0, x24
	bl	__rt_str_concat
	str	x0, [x29, 40]
	mov	x0, x23
	mov	x23, x0
	bl	cli_cmd_build_sh_quote
	mov	x1, x0
	mov	x0, x23
	mov	x23, x0
	ldr	x0, [x29, 40]
	bl	__rt_str_concat
	mov	x1, x24
	mov	x24, x1
	adrp	x1, str253
	add	x1, x1, #:lo12:str253
	bl	__rt_str_concat
	bl	donna_shell_run
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	ldr	x24, [x29, 32]
	ldr	x23, [x29, 24]
	cmp	x2, #0
	cset	x2, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x27, sp
	str	x27, [x29, 16]
	cmp	x2, #0
	beq	.L46
	bl	donna_files_delete
	mov	x0, x25
	ldr	x25, [x29, 16]
	bl	cli_cmd_build_maybe_codesign
	bl	donna_time_now_us
	sub	x1, x0, x26
	adrp	x0, str267
	add	x0, x0, #:lo12:str267
	bl	utilities_logger_ok
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x25]
	b	.L48
.L46:
	mov	x25, x27
	bl	cli_cmd_build_linker_failed_error
	mov	x26, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x26, [x1]
	str	x0, [x25]
.L48:
	str	x0, [x24]
	b	.L51
.L49:
	mov	x24, x28
	mov	x0, x1
	mov	x23, x27
	mov	x1, #8
	add	x0, x0, x1
	ldr	x25, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x25, [x1]
	str	x0, [x24]
.L51:
	str	x0, [x23]
	b	.L54
.L52:
	mov	x23, x27
	mov	x22, x24
	bl	cli_cmd_build_c_compiler_missing_error
	mov	x24, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x24, [x1]
	str	x0, [x23]
.L54:
	str	x0, [x22]
	b	.L57
.L55:
	mov	x22, x24
	bl	cli_cmd_build_qbe_missing_error
	mov	x23, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
.L57:
	str	x0, [x21]
	b	.L60
.L58:
	mov	x23, x24
	mov	x0, x26
	bl	builder_scanner_project_name
	mov	x1, x0
	mov	x0, x23
	bl	donna_files_join
	bl	donna_files_delete
	bl	donna_time_now_us
	sub	x1, x0, x22
	adrp	x0, str193
	add	x0, x0, #:lo12:str193
	bl	utilities_logger_ok
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #0
	str	x1, [x2]
	str	x0, [x21]
.L60:
	str	x0, [x20]
	b	.L63
.L61:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L63:
	str	x0, [x19]
	b	.L67
.L64:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L67
.L65:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L67:
	ldr	x19, [x29, 216]
	ldr	x20, [x29, 208]
	ldr	x21, [x29, 200]
	ldr	x22, [x29, 192]
	ldr	x23, [x29, 184]
	ldr	x24, [x29, 176]
	ldr	x25, [x29, 168]
	ldr	x26, [x29, 160]
	ldr	x27, [x29, 152]
	ldr	x28, [x29, 144]
	mov sp, x29
	ldp	x29, x30, [sp], 224
	ret
.type cli_cmd_build_build_project_target, @function
.size cli_cmd_build_build_project_target, .-cli_cmd_build_build_project_target
/* end function cli_cmd_build_build_project_target */

.text
.balign 16
cli_cmd_build_target_root_dir:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x2
	mov	x20, x0
	mov	x0, x1
	adrp	x1, str280
	add	x1, x1, #:lo12:str280
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L70
	bl	builder_scanner_project_build_dir
	adrp	x1, str289
	add	x1, x1, #:lo12:str289
	bl	donna_files_join
	adrp	x1, str291
	add	x1, x1, #:lo12:str291
	bl	donna_files_join
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	cli_cmd_build_release_target_dir
	mov	x1, x0
	mov	x0, x19
	bl	donna_files_join
	b	.L71
.L70:
	bl	builder_scanner_project_dev_dir
.L71:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_target_root_dir, @function
.size cli_cmd_build_target_root_dir, .-cli_cmd_build_target_root_dir
/* end function cli_cmd_build_target_root_dir */

.text
.balign 16
cli_cmd_build_bin_dir_for_mode:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	adrp	x1, str296
	add	x1, x1, #:lo12:str296
	mov	x19, x0
	mov	x0, x20
	bl	donna_string_equal
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #0
	beq	.L74
	bl	cli_cmd_build_target_root_dir
	adrp	x1, str305
	add	x1, x1, #:lo12:str305
	bl	donna_files_join
	b	.L75
.L74:
	bl	builder_scanner_project_bin_dir
.L75:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_build_bin_dir_for_mode, @function
.size cli_cmd_build_bin_dir_for_mode, .-cli_cmd_build_bin_dir_for_mode
/* end function cli_cmd_build_bin_dir_for_mode */

.text
.balign 16
cli_cmd_build_artifacts_dir_for_mode:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	adrp	x1, str308
	add	x1, x1, #:lo12:str308
	mov	x19, x0
	mov	x0, x20
	bl	donna_string_equal
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #0
	beq	.L78
	bl	cli_cmd_build_target_root_dir
	adrp	x1, str317
	add	x1, x1, #:lo12:str317
	bl	donna_files_join
	b	.L79
.L78:
	bl	builder_scanner_project_dev_artifacts_dir
.L79:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_build_artifacts_dir_for_mode, @function
.size cli_cmd_build_artifacts_dir_for_mode, .-cli_cmd_build_artifacts_dir_for_mode
/* end function cli_cmd_build_artifacts_dir_for_mode */

.text
.balign 16
cli_cmd_build_deps_build_dir_for_mode:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	adrp	x1, str320
	add	x1, x1, #:lo12:str320
	mov	x19, x0
	mov	x0, x20
	bl	donna_string_equal
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #0
	beq	.L82
	bl	cli_cmd_build_target_root_dir
	b	.L83
.L82:
	bl	builder_scanner_project_build_dir
.L83:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_build_deps_build_dir_for_mode, @function
.size cli_cmd_build_deps_build_dir_for_mode, .-cli_cmd_build_deps_build_dir_for_mode
/* end function cli_cmd_build_deps_build_dir_for_mode */

.text
.balign 16
cli_cmd_build_mkdir_release_parents:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, str330
	add	x1, x1, #:lo12:str330
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L86
	bl	builder_scanner_project_build_dir
	adrp	x1, str338
	add	x1, x1, #:lo12:str338
	bl	donna_files_join
	adrp	x1, str340
	add	x1, x1, #:lo12:str340
	mov	x19, x0
	bl	donna_files_join
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_files_mkdir
	mov	x0, x19
	bl	donna_files_mkdir
	b	.L87
.L86:
	mov	x0, #0
.L87:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_mkdir_release_parents, @function
.size cli_cmd_build_mkdir_release_parents, .-cli_cmd_build_mkdir_release_parents
/* end function cli_cmd_build_mkdir_release_parents */

.text
.balign 16
cli_cmd_build_compile_ffi_for_mode:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x3
	mov	x19, x0
	mov	x0, x2
	mov	x20, x1
	adrp	x1, str345
	add	x1, x1, #:lo12:str345
	bl	donna_string_equal
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #1
	beq	.L90
	bl	builder_pipeline_compile_ffi
	b	.L91
.L90:
	bl	builder_pipeline_compile_ffi_target
.L91:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_build_compile_ffi_for_mode, @function
.size cli_cmd_build_compile_ffi_for_mode, .-cli_cmd_build_compile_ffi_for_mode
/* end function cli_cmd_build_compile_ffi_for_mode */

.text
.balign 16
cli_cmd_build_run_qbe_for_mode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	mov	x0, x1
	mov	x1, x2
	mov	x20, x1
	adrp	x1, str355
	add	x1, x1, #:lo12:str355
	bl	donna_string_equal
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #1
	beq	.L94
	bl	builder_pipeline_run_qbe_all_checked
	b	.L95
.L94:
	bl	builder_pipeline_run_qbe_all_checked_target
.L95:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_run_qbe_for_mode, @function
.size cli_cmd_build_run_qbe_for_mode, .-cli_cmd_build_run_qbe_for_mode
/* end function cli_cmd_build_run_qbe_for_mode */

.text
.balign 16
cli_cmd_build_c_compiler_available_for_mode:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, str365
	add	x1, x1, #:lo12:str365
	bl	donna_string_equal
	cmp	x0, #1
	beq	.L98
	bl	builder_pipeline_c_compiler_available
	b	.L99
.L98:
	bl	builder_pipeline_release_c_compiler_available
.L99:
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_build_c_compiler_available_for_mode, @function
.size cli_cmd_build_c_compiler_available_for_mode, .-cli_cmd_build_c_compiler_available_for_mode
/* end function cli_cmd_build_c_compiler_available_for_mode */

.text
.balign 16
cli_cmd_build_c_command_for_mode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	adrp	x1, str375
	add	x1, x1, #:lo12:str375
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L102
	bl	builder_pipeline_c_command
	b	.L103
.L102:
	bl	builder_pipeline_release_c_command
.L103:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_c_command_for_mode, @function
.size cli_cmd_build_c_command_for_mode, .-cli_cmd_build_c_command_for_mode
/* end function cli_cmd_build_c_command_for_mode */

.text
.balign 16
cli_cmd_build_qbe_missing_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, str385
	add	x0, x0, #:lo12:str385
	bl	utilities_colors_dim
	mov	x19, x0
	adrp	x0, str387
	add	x0, x0, #:lo12:str387
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str389
	add	x1, x1, #:lo12:str389
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_qbe_missing_error, @function
.size cli_cmd_build_qbe_missing_error, .-cli_cmd_build_qbe_missing_error
/* end function cli_cmd_build_qbe_missing_error */

.text
.balign 16
cli_cmd_build_c_compiler_missing_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, str392
	add	x0, x0, #:lo12:str392
	bl	utilities_colors_dim
	mov	x19, x0
	adrp	x0, str394
	add	x0, x0, #:lo12:str394
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str396
	add	x1, x1, #:lo12:str396
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_c_compiler_missing_error, @function
.size cli_cmd_build_c_compiler_missing_error, .-cli_cmd_build_c_compiler_missing_error
/* end function cli_cmd_build_c_compiler_missing_error */

.text
.balign 16
cli_cmd_build_linker_failed_error:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x20, x1
	bl	donna_files_read
	bl	donna_string_trim
	mov	x19, x0
	adrp	x0, str401
	add	x0, x0, #:lo12:str401
	bl	utilities_colors_error_header
	mov	x21, x0
	adrp	x0, str403
	add	x0, x0, #:lo12:str403
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x21
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	adrp	x0, str406
	add	x0, x0, #:lo12:str406
	bl	utilities_colors_dim
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x21
	bl	__rt_str_concat
	mov	x22, x0
	mov	x0, x19
	mov	x19, x0
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L110
	mov	x19, x0
	adrp	x0, str418
	add	x0, x0, #:lo12:str418
	bl	utilities_colors_dim
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	cli_cmd_build_indent
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	mov	x23, x0
	b	.L111
.L110:
	adrp	x0, str416
	add	x0, x0, #:lo12:str416
	bl	utilities_colors_dim
	mov	x23, x0
.L111:
	adrp	x0, str423
	add	x0, x0, #:lo12:str423
	bl	utilities_colors_orange
	adrp	x1, str425
	add	x1, x1, #:lo12:str425
	bl	__rt_str_concat
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #16
	add	x1, x19, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x19, [x0]
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	adrp	x1, str439
	add	x1, x1, #:lo12:str439
	bl	donna_string_join
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
.type cli_cmd_build_linker_failed_error, @function
.size cli_cmd_build_linker_failed_error, .-cli_cmd_build_linker_failed_error
/* end function cli_cmd_build_linker_failed_error */

.text
.balign 16
cli_cmd_build_indent:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, str441
	add	x1, x1, #:lo12:str441
	bl	donna_string_split
	adrp	x1, str443
	add	x1, x1, #:lo12:str443
	bl	cli_cmd_build_indent_lines
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_build_indent, @function
.size cli_cmd_build_indent, .-cli_cmd_build_indent
/* end function cli_cmd_build_indent */

.text
.balign 16
cli_cmd_build_indent_lines:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, x0
	mov	x0, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	.L117
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x20, x1
	adrp	x1, str455
	add	x1, x1, #:lo12:str455
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	adrp	x1, str458
	add	x1, x1, #:lo12:str458
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	bl	cli_cmd_build_indent_lines
.L117:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_indent_lines, @function
.size cli_cmd_build_indent_lines, .-cli_cmd_build_indent_lines
/* end function cli_cmd_build_indent_lines */

.text
.balign 16
cli_cmd_build_compile_deps:
	hint	#34
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [x29, 152]
	str	x20, [x29, 144]
	str	x21, [x29, 136]
	str	x22, [x29, 128]
	str	x23, [x29, 120]
	str	x24, [x29, 112]
	str	x25, [x29, 104]
	str	x26, [x29, 96]
	str	x27, [x29, 88]
	mov	x26, x6
	mov	x25, x5
	mov	x24, x4
	mov	x23, x3
	mov	x21, x2
	mov	x22, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L130
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	str	x20, [x29, 56]
	adrp	x1, str479
	add	x1, x1, #:lo12:str479
	mov	x0, x22
	bl	donna_files_join
	mov	x20, x0
	mov	x0, x19
	bl	builder_dependencies_dep_name
	mov	x1, x0
	mov	x0, x20
	bl	donna_files_join
	str	x0, [x29, 72]
	adrp	x1, str483
	add	x1, x1, #:lo12:str483
	bl	donna_files_join
	mov	x1, x0
	mov	x0, x19
	mov	x20, x1
	adrp	x1, str485
	add	x1, x1, #:lo12:str485
	mov	x19, x0
	mov	x0, x22
	bl	donna_files_join
	bl	donna_files_mkdir
	mov	x0, x19
	mov	x19, x0
	ldr	x0, [x29, 72]
	bl	donna_files_mkdir
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	donna_files_mkdir
	mov	x0, x19
	mov	x19, x0
	bl	builder_dependencies_dep_src_dir
	str	x0, [x29, 64]
	mov	x0, x19
	mov	x19, x0
	bl	builder_dependencies_dep_name
	mov	x4, x24
	mov	x3, x23
	mov	x2, x21
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	ldr	x0, [x29, 64]
	mov	x24, x4
	mov	x4, #0
	mov	x23, x3
	mov	x3, x2
	mov	x21, x2
	mov	x2, x20
	bl	builder_pipeline_compile_dir
	mov	x6, x26
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x21
	mov	x1, x0
	mov	x0, x19
	mov	x7, #16
	sub	sp, sp, x7
	mov	x19, sp
	mov	x26, x6
	ldr	x6, [x1]
	cmp	x6, #1
	beq	.L128
	mov	x25, x5
	mov	x5, #8
	add	x1, x1, x5
	ldr	x1, [x1]
	mov	x24, x4
	ldr	x4, [x1]
	str	x4, [x29, 40]
	mov	x23, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	str	x21, [x29, 48]
	mov	x21, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x27, [x1]
	str	x27, [x29, 24]
	bl	builder_dependencies_dep_path
	mov	x3, x23
	mov	x2, x21
	mov	x1, x20
	ldr	x20, [x29, 56]
	mov	x23, x3
	mov	x3, x26
	mov	x21, x2
	mov	x2, x25
	bl	cli_cmd_build_compile_ffi_for_mode
	mov	x2, x21
	str	x0, [x29, 32]
	mov	x0, x20
	ldr	x1, [x29, 48]
	mov	x21, x1
	ldr	x1, [x29, 40]
	mov	x20, x0
	mov	x0, x2
	bl	donna_list_append
	mov	x3, x23
	mov	x1, x21
	str	x0, [x29, 16]
	mov	x0, x20
	ldr	x23, [x29, 32]
	ldr	x21, [x29, 24]
	mov	x20, x0
	mov	x0, x3
	bl	donna_list_append
	mov	x4, x24
	mov	x1, x23
	mov	x24, x0
	mov	x0, x20
	ldr	x23, [x29, 16]
	mov	x20, x0
	mov	x0, x4
	bl	donna_list_append
	mov	x6, x26
	mov	x5, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x4, x0
	mov	x0, x20
	bl	cli_cmd_build_compile_deps
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L126
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x25, [x0]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #24
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x1, sp
	cmp	x21, #1
	beq	.L123
	str	x22, [x1]
	b	.L125
.L123:
	mov	x0, #1
	str	x0, [x1]
	mov	x22, #1
.L125:
	mov	x0, #32
	bl	malloc
	mov	x21, x0
	str	x25, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L127
.L126:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L127:
	str	x0, [x19]
	b	.L132
.L128:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L132
.L130:
	mov	x20, x23
	mov	x19, x21
	mov	x21, x24
	mov	x0, #32
	bl	malloc
	mov	x4, x21
	mov	x3, x20
	mov	x2, x19
	mov	x19, x0
	str	x2, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x3, [x0]
	mov	x0, #16
	add	x0, x19, x0
	str	x4, [x0]
	mov	x0, #24
	add	x1, x19, x0
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L132:
	ldr	x19, [x29, 152]
	ldr	x20, [x29, 144]
	ldr	x21, [x29, 136]
	ldr	x22, [x29, 128]
	ldr	x23, [x29, 120]
	ldr	x24, [x29, 112]
	ldr	x25, [x29, 104]
	ldr	x26, [x29, 96]
	ldr	x27, [x29, 88]
	mov sp, x29
	ldp	x29, x30, [sp], 160
	ret
.type cli_cmd_build_compile_deps, @function
.size cli_cmd_build_compile_deps, .-cli_cmd_build_compile_deps
/* end function cli_cmd_build_compile_deps */

.text
.balign 16
cli_cmd_build_has_public_main:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L138
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_build_iface_has_main
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L136
	bl	cli_cmd_build_has_public_main
	str	x0, [x19]
	b	.L139
.L136:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L139
.L138:
	mov	x0, #0
.L139:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_has_public_main, @function
.size cli_cmd_build_has_public_main, .-cli_cmd_build_has_public_main
/* end function cli_cmd_build_has_public_main */

.text
.balign 16
cli_cmd_build_iface_has_main:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_build_bindings_have_main
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_build_iface_has_main, @function
.size cli_cmd_build_iface_has_main, .-cli_cmd_build_iface_has_main
/* end function cli_cmd_build_iface_has_main */

.text
.balign 16
cli_cmd_build_bindings_have_main:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L147
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x0, [x0]
	adrp	x1, str598
	add	x1, x1, #:lo12:str598
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L145
	bl	cli_cmd_build_bindings_have_main
	str	x0, [x19]
	b	.L148
.L145:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L148
.L147:
	mov	x0, #0
.L148:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_bindings_have_main, @function
.size cli_cmd_build_bindings_have_main, .-cli_cmd_build_bindings_have_main
/* end function cli_cmd_build_bindings_have_main */

.text
.balign 16
cli_cmd_build_linker_flags:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, str608
	add	x0, x0, #:lo12:str608
	bl	donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	cmp	x0, #1
	beq	.L151
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str620
	add	x1, x1, #:lo12:str620
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	b	.L152
.L151:
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str616
	add	x1, x1, #:lo12:str616
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
.L152:
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_build_linker_flags, @function
.size cli_cmd_build_linker_flags, .-cli_cmd_build_linker_flags
/* end function cli_cmd_build_linker_flags */

.text
.balign 16
cli_cmd_build_linker_flags_for_mode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	adrp	x1, str625
	add	x1, x1, #:lo12:str625
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L155
	bl	cli_cmd_build_release_linker_flags
	b	.L156
.L155:
	bl	cli_cmd_build_linker_flags
.L156:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_linker_flags_for_mode, @function
.size cli_cmd_build_linker_flags_for_mode, .-cli_cmd_build_linker_flags_for_mode
/* end function cli_cmd_build_linker_flags_for_mode */

.text
.balign 16
cli_cmd_build_release_linker_flags:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, str637
	add	x1, x1, #:lo12:str637
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L163
	adrp	x1, str646
	add	x1, x1, #:lo12:str646
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L162
	adrp	x1, str655
	add	x1, x1, #:lo12:str655
	bl	strcmp
	cmp	x0, #0
	beq	.L161
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str660
	add	x1, x1, #:lo12:str660
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	b	.L164
.L161:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	b	.L164
.L162:
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str651
	add	x1, x1, #:lo12:str651
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	b	.L164
.L163:
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str642
	add	x1, x1, #:lo12:str642
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
.L164:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_release_linker_flags, @function
.size cli_cmd_build_release_linker_flags, .-cli_cmd_build_release_linker_flags
/* end function cli_cmd_build_release_linker_flags */

.text
.balign 16
cli_cmd_build_cc_flags_for_mode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	adrp	x1, str665
	add	x1, x1, #:lo12:str665
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L167
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #1
	str	x1, [x19]
	mov	x1, #8
	add	x2, x19, x1
	adrp	x1, str672
	add	x1, x1, #:lo12:str672
	str	x1, [x2]
	mov	x1, #16
	add	x2, x19, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	bl	builder_pipeline_release_cc_target_flags
	mov	x1, x0
	mov	x0, x19
	bl	donna_list_append
	b	.L168
.L167:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L168:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_cc_flags_for_mode, @function
.size cli_cmd_build_cc_flags_for_mode, .-cli_cmd_build_cc_flags_for_mode
/* end function cli_cmd_build_cc_flags_for_mode */

.text
.balign 16
cli_cmd_build_output_name_for_target:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, str679
	add	x1, x1, #:lo12:str679
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	bne	.L171
	adrp	x1, str686
	add	x1, x1, #:lo12:str686
	bl	__rt_str_concat
.L171:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_output_name_for_target, @function
.size cli_cmd_build_output_name_for_target, .-cli_cmd_build_output_name_for_target
/* end function cli_cmd_build_output_name_for_target */

.text
.balign 16
cli_cmd_build_maybe_codesign:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str689
	add	x0, x0, #:lo12:str689
	bl	donna_shell_run
	mov	x1, x19
	cmp	x0, #0
	cset	x0, eq
	cmp	x0, #0
	beq	.L174
	adrp	x0, str697
	add	x0, x0, #:lo12:str697
	bl	__rt_str_concat
	adrp	x1, str699
	add	x1, x1, #:lo12:str699
	bl	__rt_str_concat
	bl	donna_shell_run
	b	.L175
.L174:
	mov	x0, #0
.L175:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_maybe_codesign, @function
.size cli_cmd_build_maybe_codesign, .-cli_cmd_build_maybe_codesign
/* end function cli_cmd_build_maybe_codesign */

.text
.balign 16
cli_cmd_build_sh_quote:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, str705
	add	x2, x2, #:lo12:str705
	adrp	x1, str704
	add	x1, x1, #:lo12:str704
	bl	donna_string_replace
	mov	x1, x0
	adrp	x0, str703
	add	x0, x0, #:lo12:str703
	bl	__rt_str_concat
	adrp	x1, str708
	add	x1, x1, #:lo12:str708
	bl	__rt_str_concat
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_build_sh_quote, @function
.size cli_cmd_build_sh_quote, .-cli_cmd_build_sh_quote
/* end function cli_cmd_build_sh_quote */

.text
.balign 16
cli_cmd_build_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L186
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L182
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L183
.L182:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str729
	add	x1, x1, #:lo12:str729
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L183:
	cmp	w1, #0
	bne	.L185
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_build_first_positional
	b	.L187
.L185:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L187
.L186:
	adrp	x0, str716
	add	x0, x0, #:lo12:str716
.L187:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_first_positional, @function
.size cli_cmd_build_first_positional, .-cli_cmd_build_first_positional
/* end function cli_cmd_build_first_positional */

.text
.balign 16
cli_cmd_build_build_dir_arg:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	cli_cmd_build_first_positional
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, str752
	add	x1, x1, #:lo12:str752
	mov	x20, x0
	mov	x0, x19
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L197
	adrp	x1, str759
	add	x1, x1, #:lo12:str759
	bl	cli_cmd_build_flag_value
	adrp	x1, str761
	add	x1, x1, #:lo12:str761
	mov	x19, x0
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L195
	mov	x20, x0
	bl	donna_string_is_empty
	mov	x2, x0
	mov	x0, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x2, #1
	beq	.L192
	str	x0, [x1]
	b	.L194
.L192:
	adrp	x0, str775
	add	x0, x0, #:lo12:str775
	str	x0, [x1]
	adrp	x0, str775
	add	x0, x0, #:lo12:str775
.L194:
	str	x0, [x19]
	b	.L198
.L195:
	adrp	x0, str768
	add	x0, x0, #:lo12:str768
	str	x0, [x19]
	adrp	x0, str768
	add	x0, x0, #:lo12:str768
	b	.L198
.L197:
	mov	x0, x19
.L198:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_build_dir_arg, @function
.size cli_cmd_build_build_dir_arg, .-cli_cmd_build_build_dir_arg
/* end function cli_cmd_build_build_dir_arg */

.text
.balign 16
cli_cmd_build_build_config:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	adrp	x1, str779
	add	x1, x1, #:lo12:str779
	mov	x19, x0
	bl	cli_cmd_build_has_flag
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L206
	adrp	x1, str788
	add	x1, x1, #:lo12:str788
	bl	cli_cmd_build_flag_value
	adrp	x1, str790
	add	x1, x1, #:lo12:str790
	mov	x19, x0
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L205
	bl	cli_cmd_build_normalize_release_target
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L203
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x21, [x0]
	mov	x0, #16
	add	x1, x22, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #16
	bl	malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L204
.L203:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L204:
	str	x0, [x19]
	b	.L207
.L205:
	bl	cli_cmd_build_all_release_targets
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L207
.L206:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, cli_cmd_build_BuildDebug
	add	x1, x1, #:lo12:cli_cmd_build_BuildDebug
	str	x1, [x2]
.L207:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_build_build_config, @function
.size cli_cmd_build_build_config, .-cli_cmd_build_build_config
/* end function cli_cmd_build_build_config */

.text
.balign 16
cli_cmd_build_has_flag:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L213
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	ldr	x0, [x0]
	mov	x20, x1
	bl	donna_string_equal
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L211
	bl	cli_cmd_build_has_flag
	str	x0, [x19]
	b	.L214
.L211:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L214
.L213:
	mov	x0, #0
.L214:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_has_flag, @function
.size cli_cmd_build_has_flag, .-cli_cmd_build_has_flag
/* end function cli_cmd_build_has_flag */

.text
.balign 16
cli_cmd_build_flag_value:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L220
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x20, [x0]
	ldr	x0, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x21, x1
	bl	donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L219
	mov	x0, x20
	bl	cli_cmd_build_flag_value
	str	x0, [x19]
	b	.L221
.L219:
	str	x0, [x19]
	b	.L221
.L220:
	adrp	x0, str854
	add	x0, x0, #:lo12:str854
.L221:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_build_flag_value, @function
.size cli_cmd_build_flag_value, .-cli_cmd_build_flag_value
/* end function cli_cmd_build_flag_value */

.text
.balign 16
.globl cli_cmd_build_normalize_release_target
cli_cmd_build_normalize_release_target:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x0
	bl	donna_string_is_empty
	cmp	x0, #1
	beq	.L224
	mov	x0, x20
	b	.L225
.L224:
	bl	cli_cmd_build_host_release_target
.L225:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	adrp	x1, str882
	add	x1, x1, #:lo12:str882
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L247
	adrp	x1, str890
	add	x1, x1, #:lo12:str890
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L246
	adrp	x1, str898
	add	x1, x1, #:lo12:str898
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L245
	adrp	x1, str906
	add	x1, x1, #:lo12:str906
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L244
	adrp	x1, str914
	add	x1, x1, #:lo12:str914
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L243
	adrp	x1, str922
	add	x1, x1, #:lo12:str922
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L242
	adrp	x1, str930
	add	x1, x1, #:lo12:str930
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L241
	adrp	x1, str938
	add	x1, x1, #:lo12:str938
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L240
	adrp	x1, str946
	add	x1, x1, #:lo12:str946
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L239
	adrp	x1, str954
	add	x1, x1, #:lo12:str954
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L238
	adrp	x1, str962
	add	x1, x1, #:lo12:str962
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L237
	mov	x20, x0
	adrp	x0, str970
	add	x0, x0, #:lo12:str970
	bl	utilities_colors_red
	adrp	x1, str972
	add	x1, x1, #:lo12:str972
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L248
.L237:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str967
	add	x1, x1, #:lo12:str967
	str	x1, [x2]
	str	x0, [x19]
	b	.L248
.L238:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str959
	add	x1, x1, #:lo12:str959
	str	x1, [x2]
	str	x0, [x19]
	b	.L248
.L239:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str951
	add	x1, x1, #:lo12:str951
	str	x1, [x2]
	str	x0, [x19]
	b	.L248
.L240:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str943
	add	x1, x1, #:lo12:str943
	str	x1, [x2]
	str	x0, [x19]
	b	.L248
.L241:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str935
	add	x1, x1, #:lo12:str935
	str	x1, [x2]
	str	x0, [x19]
	b	.L248
.L242:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str927
	add	x1, x1, #:lo12:str927
	str	x1, [x2]
	str	x0, [x19]
	b	.L248
.L243:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str919
	add	x1, x1, #:lo12:str919
	str	x1, [x2]
	str	x0, [x19]
	b	.L248
.L244:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str911
	add	x1, x1, #:lo12:str911
	str	x1, [x2]
	str	x0, [x19]
	b	.L248
.L245:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str903
	add	x1, x1, #:lo12:str903
	str	x1, [x2]
	str	x0, [x19]
	b	.L248
.L246:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str895
	add	x1, x1, #:lo12:str895
	str	x1, [x2]
	str	x0, [x19]
	b	.L248
.L247:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str887
	add	x1, x1, #:lo12:str887
	str	x1, [x2]
	str	x0, [x19]
.L248:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_build_normalize_release_target, @function
.size cli_cmd_build_normalize_release_target, .-cli_cmd_build_normalize_release_target
/* end function cli_cmd_build_normalize_release_target */

.text
.balign 16
.globl cli_cmd_build_all_release_targets
cli_cmd_build_all_release_targets:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x0, #24
	bl	malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, str979
	add	x0, x0, #:lo12:str979
	str	x0, [x1]
	mov	x0, #16
	add	x1, x20, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, str983
	add	x0, x0, #:lo12:str983
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, str987
	add	x0, x0, #:lo12:str987
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x19, [x0]
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, str991
	add	x0, x0, #:lo12:str991
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str995
	add	x1, x1, #:lo12:str995
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_all_release_targets, @function
.size cli_cmd_build_all_release_targets, .-cli_cmd_build_all_release_targets
/* end function cli_cmd_build_all_release_targets */

.text
.balign 16
cli_cmd_build_host_release_target:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, str999
	add	x0, x0, #:lo12:str999
	bl	donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	cmp	x0, #1
	beq	.L257
	adrp	x0, str1018
	add	x0, x0, #:lo12:str1018
	bl	donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	.L255
	adrp	x0, str1027
	add	x0, x0, #:lo12:str1027
	str	x0, [x1]
	adrp	x0, str1027
	add	x0, x0, #:lo12:str1027
	b	.L262
.L255:
	adrp	x0, str1026
	add	x0, x0, #:lo12:str1026
	str	x0, [x1]
	adrp	x0, str1026
	add	x0, x0, #:lo12:str1026
	b	.L262
.L257:
	adrp	x0, str1007
	add	x0, x0, #:lo12:str1007
	bl	donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	.L260
	adrp	x0, str1016
	add	x0, x0, #:lo12:str1016
	str	x0, [x1]
	adrp	x0, str1016
	add	x0, x0, #:lo12:str1016
	b	.L262
.L260:
	adrp	x0, str1015
	add	x0, x0, #:lo12:str1015
	str	x0, [x1]
	adrp	x0, str1015
	add	x0, x0, #:lo12:str1015
.L262:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_build_host_release_target, @function
.size cli_cmd_build_host_release_target, .-cli_cmd_build_host_release_target
/* end function cli_cmd_build_host_release_target */

.text
.balign 16
.globl cli_cmd_build_release_target_dir
cli_cmd_build_release_target_dir:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, str1032
	add	x1, x1, #:lo12:str1032
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	bne	.L265
	adrp	x0, str1037
	add	x0, x0, #:lo12:str1037
.L265:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_release_target_dir, @function
.size cli_cmd_build_release_target_dir, .-cli_cmd_build_release_target_dir
/* end function cli_cmd_build_release_target_dir */

.text
.balign 16
__rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	strlen
	mov	x19, x0
	mov	x0, x20
	bl	strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	malloc
	mov	x1, x19
	mov	x19, x0
	bl	strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
