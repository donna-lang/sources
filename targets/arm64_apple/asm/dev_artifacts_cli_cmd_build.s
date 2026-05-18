.data
.balign 8
.globl _cli_cmd_build_BuildDebug
_cli_cmd_build_BuildDebug:
	.quad 0
/* end data */

.data
.balign 8
_str27:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str29:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str45:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str56:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str57:
	.ascii "debug"
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str126:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str164:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str193:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str238:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
_str246:
	.ascii ".link.log"
	.byte 0
/* end data */

.data
.balign 8
_str249:
	.ascii " > "
	.byte 0
/* end data */

.data
.balign 8
_str253:
	.ascii " 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str267:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str280:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str289:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str291:
	.ascii "target"
	.byte 0
/* end data */

.data
.balign 8
_str296:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str305:
	.ascii "bin"
	.byte 0
/* end data */

.data
.balign 8
_str308:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str317:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str320:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str330:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str338:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str340:
	.ascii "target"
	.byte 0
/* end data */

.data
.balign 8
_str345:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str355:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str365:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str375:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str385:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
_str387:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str389:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str392:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
_str394:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str396:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str401:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str403:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
_str406:
	.ascii "  command: "
	.byte 0
/* end data */

.data
.balign 8
_str416:
	.ascii "  linker did not print an error message"
	.byte 0
/* end data */

.data
.balign 8
_str418:
	.ascii "  linker output:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str423:
	.ascii "hint:"
	.byte 0
/* end data */

.data
.balign 8
_str425:
	.ascii " check missing C symbols, FFI objects, or linker flags"
	.byte 0
/* end data */

.data
.balign 8
_str439:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str441:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str443:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str455:
	.ascii "    "
	.byte 0
/* end data */

.data
.balign 8
_str458:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str479:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str483:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str485:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str598:
	.ascii "main"
	.byte 0
/* end data */

.data
.balign 8
_str608:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str616:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
_str620:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
_str625:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str637:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str642:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
_str646:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str651:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
_str655:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
_str660:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
_str665:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str672:
	.ascii "-O2"
	.byte 0
/* end data */

.data
.balign 8
_str679:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
_str686:
	.ascii ".exe"
	.byte 0
/* end data */

.data
.balign 8
_str689:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str697:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
_str699:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str703:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str704:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str705:
	.ascii "'"
	.byte 92
	.ascii "''"
	.byte 0
/* end data */

.data
.balign 8
_str708:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str716:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str729:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str752:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str759:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str761:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
_str768:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str775:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str779:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
_str788:
	.ascii "target"
	.byte 0
/* end data */

.data
.balign 8
_str790:
	.ascii "all"
	.byte 0
/* end data */

.data
.balign 8
_str854:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str882:
	.ascii "amd64"
	.byte 0
/* end data */

.data
.balign 8
_str887:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
_str890:
	.ascii "x86_64"
	.byte 0
/* end data */

.data
.balign 8
_str895:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
_str898:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
_str903:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
_str906:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str911:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str914:
	.ascii "x86_64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str919:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str922:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
_str927:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
_str930:
	.ascii "x86_64_win"
	.byte 0
/* end data */

.data
.balign 8
_str935:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
_str938:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
_str943:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
_str946:
	.ascii "aarch64"
	.byte 0
/* end data */

.data
.balign 8
_str951:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
_str954:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str959:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str962:
	.ascii "aarch64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str967:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str970:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str972:
	.ascii ": unknown release target "
	.byte 0
/* end data */

.data
.balign 8
_str979:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str983:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
_str987:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
_str991:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str995:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
_str999:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str1007:
	.ascii "uname -m | grep -q 'arm64"
	.byte 92
	.ascii "|aarch64' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str1015:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str1016:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
_str1018:
	.ascii "uname -m | grep -q 'arm64"
	.byte 92
	.ascii "|aarch64' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str1026:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
_str1027:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
_str1032:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
_str1037:
	.ascii "amd64"
	.byte 0
/* end data */

.text
.balign 4
.globl _cli_cmd_build_BuildOk
_cli_cmd_build_BuildOk:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_BuildOk */

.text
.balign 4
.globl _cli_cmd_build_BuildFailed
_cli_cmd_build_BuildFailed:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_BuildFailed */

.text
.balign 4
.globl _cli_cmd_build_BuildRelease
_cli_cmd_build_BuildRelease:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_BuildRelease */

.text
.balign 4
.globl _cli_cmd_build_run
_cli_cmd_build_run:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	_cli_cmd_build_build_dir_arg
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_cli_cmd_build_build_config
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L15
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	_builder_scanner_scan
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x1]
	cmp	x3, #1
	beq	L13
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	bl	_cli_cmd_build_build_project_with_config
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L11
	adrp	x0, _str45@page
	add	x0, x0, _str45@pageoff
	str	x0, [x1]
	adrp	x0, _str45@page
	add	x0, x0, _str45@pageoff
	b	L12
L11:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	str	x0, [x1]
L12:
	str	x0, [x19]
	b	L17
L13:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x0, _str27@page
	add	x0, x0, _str27@pageoff
	bl	_utilities_colors_red
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str29@page
	add	x1, x1, _str29@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	___rt_str_concat
	str	x0, [x19]
	b	L17
L15:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
L17:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_run */

.text
.balign 4
.globl _cli_cmd_build_build_project
_cli_cmd_build_build_project:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, _cli_cmd_build_BuildDebug@page
	add	x2, x2, _cli_cmd_build_BuildDebug@pageoff
	bl	_cli_cmd_build_build_project_with_config
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cmd_build_build_project */

.text
.balign 4
.globl _cli_cmd_build_build_project_with_config
_cli_cmd_build_build_project_with_config:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	L22
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	bl	_cli_cmd_build_build_release_targets
	b	L23
L22:
	adrp	x3, _str57@page
	add	x3, x3, _str57@pageoff
	adrp	x2, _str56@page
	add	x2, x2, _str56@pageoff
	bl	_cli_cmd_build_build_project_target
L23:
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cmd_build_build_project_with_config */

.text
.balign 4
_cli_cmd_build_build_release_targets:
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
	beq	L35
	mov	x2, #8
	add	x2, x3, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x21, [x3]
	adrp	x3, _str75@page
	add	x3, x3, _str75@pageoff
	mov	x20, x1
	mov	x19, x0
	bl	_cli_cmd_build_build_project_target
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	ldr	x4, [x3]
	cmp	x4, #1
	beq	L33
	mov	x4, #8
	add	x3, x3, x4
	ldr	x23, [x3]
	bl	_cli_cmd_build_build_release_targets
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L31
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x21, sp
	cmp	x23, #1
	beq	L29
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L30
L29:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x21]
L30:
	str	x0, [x20]
	b	L32
L31:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L32:
	str	x0, [x19]
	b	L36
L33:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L36
L35:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #0
	str	x1, [x2]
L36:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function cli_cmd_build_build_release_targets */

.text
.balign 4
_cli_cmd_build_build_project_target:
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
	bl	_donna_time_now_us
	mov	x22, x0
	mov	x0, x26
	bl	_builder_scanner_project_build_dir
	mov	x2, x19
	mov	x1, x23
	mov	x21, x0
	mov	x0, x26
	bl	_cli_cmd_build_target_root_dir
	str	x0, [x29, 128]
	mov	x0, x21
	mov	x2, x19
	mov	x1, x23
	mov	x21, x0
	mov	x0, x26
	bl	_cli_cmd_build_bin_dir_for_mode
	mov	x24, x0
	mov	x0, x21
	mov	x2, x19
	mov	x1, x23
	mov	x21, x0
	mov	x0, x26
	bl	_cli_cmd_build_artifacts_dir_for_mode
	mov	x2, x0
	mov	x0, x21
	mov	x25, x2
	mov	x2, x19
	mov	x1, x23
	mov	x21, x0
	mov	x0, x26
	bl	_cli_cmd_build_deps_build_dir_for_mode
	str	x0, [x29, 120]
	mov	x0, x21
	ldr	x21, [x29, 128]
	bl	_donna_files_mkdir
	mov	x0, x21
	mov	x1, x23
	mov	x21, x0
	mov	x0, x26
	bl	_cli_cmd_build_mkdir_release_parents
	mov	x0, x21
	ldr	x21, [x29, 120]
	bl	_donna_files_mkdir
	mov	x0, x20
	mov	x20, x0
	mov	x0, x24
	bl	_donna_files_mkdir
	mov	x0, x20
	mov	x20, x0
	mov	x0, x25
	bl	_donna_files_mkdir
	mov	x1, x21
	mov	x0, x20
	mov	x21, x1
	adrp	x1, _str126@page
	add	x1, x1, _str126@pageoff
	mov	x20, x0
	bl	_donna_files_join
	mov	x1, x21
	mov	x21, x1
	mov	x1, x20
	bl	_builder_dependencies_resolve_deps_checked
	mov	x2, x25
	mov	x1, x21
	mov	x3, x0
	mov	x0, x20
	ldr	x4, [x3]
	cmp	x4, #1
	beq	L65
	mov	x4, #8
	add	x3, x3, x4
	ldr	x20, [x3]
	mov	x3, x19
	mov	x25, x2
	mov	x2, x23
	mov	x21, x1
	mov	x1, x25
	bl	_cli_cmd_build_compile_ffi_for_mode
	mov	x2, x25
	mov	x1, x21
	mov	x4, x0
	mov	x0, x20
	mov	x6, x19
	mov	x5, x23
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	mov	x20, x2
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_cli_cmd_build_compile_deps
	mov	x2, x20
	mov	x1, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x0]
	cmp	x3, #1
	beq	L64
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
	bl	_builder_scanner_project_src_dir
	mov	x3, x25
	mov	x2, x21
	mov	x1, x20
	ldr	x4, [x29, 112]
	ldr	x20, [x29, 104]
	mov	x25, x1
	adrp	x1, _str164@page
	add	x1, x1, _str164@pageoff
	bl	_builder_pipeline_compile_dir
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L61
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x21, x0
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	str	x1, [x29, 96]
	bl	_cli_cmd_build_has_public_main
	mov	x1, x25
	mov	x2, x0
	mov	x0, x21
	mov	x25, x1
	ldr	x1, [x29, 96]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	cmp	x2, #0
	beq	L58
	bl	_donna_list_append
	str	x0, [x29, 88]
	bl	_builder_pipeline_qbe_available
	mov	x1, x0
	mov	x0, x24
	mov	x2, #16
	sub	sp, sp, x2
	mov	x24, sp
	str	x24, [x29, 80]
	cmp	x1, #0
	beq	L55
	mov	x24, x0
	mov	x0, x23
	bl	_cli_cmd_build_c_compiler_available_for_mode
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
	beq	L52
	mov	x2, x1
	mov	x24, x1
	mov	x1, x23
	bl	_cli_cmd_build_run_qbe_for_mode
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
	beq	L49
	mov	x2, #8
	add	x1, x1, x2
	ldr	x27, [x1]
	str	x27, [x29, 48]
	bl	_builder_scanner_project_name
	mov	x1, x24
	mov	x24, x1
	bl	_cli_cmd_build_output_name_for_target
	mov	x1, x0
	mov	x0, x25
	bl	_donna_files_join
	mov	x1, x24
	mov	x25, x0
	mov	x24, x1
	mov	x0, x23
	bl	_cli_cmd_build_cc_flags_for_mode
	mov	x1, x24
	str	x0, [x29, 56]
	mov	x0, x23
	bl	_cli_cmd_build_linker_flags_for_mode
	str	x0, [x29, 72]
	mov	x0, #24
	bl	_malloc
	mov	x27, x0
	mov	x0, #1
	str	x0, [x27]
	mov	x0, #8
	add	x0, x27, x0
	str	x25, [x0]
	mov	x0, #16
	add	x1, x27, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	ldr	x0, [x29, 72]
	ldr	x24, [x29, 64]
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _str238@page
	add	x2, x2, _str238@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x27, [x2]
	bl	_donna_list_append
	mov	x1, x0
	mov	x0, x24
	mov	x24, x0
	ldr	x0, [x29, 56]
	bl	_donna_list_append
	mov	x1, x0
	mov	x0, x24
	ldr	x24, [x29, 48]
	bl	_donna_list_append
	mov	x1, x0
	mov	x0, x24
	bl	_donna_list_append
	mov	x1, x0
	mov	x0, x23
	mov	x24, x1
	adrp	x1, _str246@page
	add	x1, x1, _str246@pageoff
	mov	x23, x0
	mov	x0, x25
	bl	___rt_str_concat
	mov	x1, x24
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	bl	_cli_cmd_build_c_command_for_mode
	mov	x1, x0
	mov	x0, x23
	mov	x24, x1
	adrp	x1, _str249@page
	add	x1, x1, _str249@pageoff
	mov	x23, x0
	mov	x0, x24
	bl	___rt_str_concat
	str	x0, [x29, 40]
	mov	x0, x23
	mov	x23, x0
	bl	_cli_cmd_build_sh_quote
	mov	x1, x0
	mov	x0, x23
	mov	x23, x0
	ldr	x0, [x29, 40]
	bl	___rt_str_concat
	mov	x1, x24
	mov	x24, x1
	adrp	x1, _str253@page
	add	x1, x1, _str253@pageoff
	bl	___rt_str_concat
	bl	_donna_shell_run
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
	beq	L46
	bl	_donna_files_delete
	mov	x0, x25
	ldr	x25, [x29, 16]
	bl	_cli_cmd_build_maybe_codesign
	bl	_donna_time_now_us
	sub	x1, x0, x26
	adrp	x0, _str267@page
	add	x0, x0, _str267@pageoff
	bl	_utilities_logger_ok
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x25]
	b	L48
L46:
	mov	x25, x27
	bl	_cli_cmd_build_linker_failed_error
	mov	x26, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x26, [x1]
	str	x0, [x25]
L48:
	str	x0, [x24]
	b	L51
L49:
	mov	x24, x28
	mov	x0, x1
	mov	x23, x27
	mov	x1, #8
	add	x0, x0, x1
	ldr	x25, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x25, [x1]
	str	x0, [x24]
L51:
	str	x0, [x23]
	b	L54
L52:
	mov	x23, x27
	mov	x22, x24
	bl	_cli_cmd_build_c_compiler_missing_error
	mov	x24, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x24, [x1]
	str	x0, [x23]
L54:
	str	x0, [x22]
	b	L57
L55:
	mov	x22, x24
	bl	_cli_cmd_build_qbe_missing_error
	mov	x23, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
L57:
	str	x0, [x21]
	b	L60
L58:
	mov	x23, x24
	mov	x0, x26
	bl	_builder_scanner_project_name
	mov	x1, x0
	mov	x0, x23
	bl	_donna_files_join
	bl	_donna_files_delete
	bl	_donna_time_now_us
	sub	x1, x0, x22
	adrp	x0, _str193@page
	add	x0, x0, _str193@pageoff
	bl	_utilities_logger_ok
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #0
	str	x1, [x2]
	str	x0, [x21]
L60:
	str	x0, [x20]
	b	L63
L61:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L63:
	str	x0, [x19]
	b	L67
L64:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L67
L65:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L67:
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
/* end function cli_cmd_build_build_project_target */

.text
.balign 4
_cli_cmd_build_target_root_dir:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x2
	mov	x20, x0
	mov	x0, x1
	adrp	x1, _str280@page
	add	x1, x1, _str280@pageoff
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L70
	bl	_builder_scanner_project_build_dir
	adrp	x1, _str289@page
	add	x1, x1, _str289@pageoff
	bl	_donna_files_join
	adrp	x1, _str291@page
	add	x1, x1, _str291@pageoff
	bl	_donna_files_join
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_cli_cmd_build_release_target_dir
	mov	x1, x0
	mov	x0, x19
	bl	_donna_files_join
	b	L71
L70:
	bl	_builder_scanner_project_dev_dir
L71:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_target_root_dir */

.text
.balign 4
_cli_cmd_build_bin_dir_for_mode:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	adrp	x1, _str296@page
	add	x1, x1, _str296@pageoff
	mov	x19, x0
	mov	x0, x20
	bl	_donna_string_equal
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #0
	beq	L74
	bl	_cli_cmd_build_target_root_dir
	adrp	x1, _str305@page
	add	x1, x1, _str305@pageoff
	bl	_donna_files_join
	b	L75
L74:
	bl	_builder_scanner_project_bin_dir
L75:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_build_bin_dir_for_mode */

.text
.balign 4
_cli_cmd_build_artifacts_dir_for_mode:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	adrp	x1, _str308@page
	add	x1, x1, _str308@pageoff
	mov	x19, x0
	mov	x0, x20
	bl	_donna_string_equal
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #0
	beq	L78
	bl	_cli_cmd_build_target_root_dir
	adrp	x1, _str317@page
	add	x1, x1, _str317@pageoff
	bl	_donna_files_join
	b	L79
L78:
	bl	_builder_scanner_project_dev_artifacts_dir
L79:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_build_artifacts_dir_for_mode */

.text
.balign 4
_cli_cmd_build_deps_build_dir_for_mode:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	adrp	x1, _str320@page
	add	x1, x1, _str320@pageoff
	mov	x19, x0
	mov	x0, x20
	bl	_donna_string_equal
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #0
	beq	L82
	bl	_cli_cmd_build_target_root_dir
	b	L83
L82:
	bl	_builder_scanner_project_build_dir
L83:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_build_deps_build_dir_for_mode */

.text
.balign 4
_cli_cmd_build_mkdir_release_parents:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, _str330@page
	add	x1, x1, _str330@pageoff
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L86
	bl	_builder_scanner_project_build_dir
	adrp	x1, _str338@page
	add	x1, x1, _str338@pageoff
	bl	_donna_files_join
	adrp	x1, _str340@page
	add	x1, x1, _str340@pageoff
	mov	x19, x0
	bl	_donna_files_join
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_donna_files_mkdir
	mov	x0, x19
	bl	_donna_files_mkdir
	b	L87
L86:
	mov	x0, #0
L87:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_mkdir_release_parents */

.text
.balign 4
_cli_cmd_build_compile_ffi_for_mode:
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
	adrp	x1, _str345@page
	add	x1, x1, _str345@pageoff
	bl	_donna_string_equal
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #1
	beq	L90
	bl	_builder_pipeline_compile_ffi
	b	L91
L90:
	bl	_builder_pipeline_compile_ffi_target
L91:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_build_compile_ffi_for_mode */

.text
.balign 4
_cli_cmd_build_run_qbe_for_mode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	mov	x0, x1
	mov	x1, x2
	mov	x20, x1
	adrp	x1, _str355@page
	add	x1, x1, _str355@pageoff
	bl	_donna_string_equal
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #1
	beq	L94
	bl	_builder_pipeline_run_qbe_all_checked
	b	L95
L94:
	bl	_builder_pipeline_run_qbe_all_checked_target
L95:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_run_qbe_for_mode */

.text
.balign 4
_cli_cmd_build_c_compiler_available_for_mode:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _str365@page
	add	x1, x1, _str365@pageoff
	bl	_donna_string_equal
	cmp	x0, #1
	beq	L98
	bl	_builder_pipeline_c_compiler_available
	b	L99
L98:
	bl	_builder_pipeline_release_c_compiler_available
L99:
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cmd_build_c_compiler_available_for_mode */

.text
.balign 4
_cli_cmd_build_c_command_for_mode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	adrp	x1, _str375@page
	add	x1, x1, _str375@pageoff
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	L102
	bl	_builder_pipeline_c_command
	b	L103
L102:
	bl	_builder_pipeline_release_c_command
L103:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_c_command_for_mode */

.text
.balign 4
_cli_cmd_build_qbe_missing_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, _str385@page
	add	x0, x0, _str385@pageoff
	bl	_utilities_colors_dim
	mov	x19, x0
	adrp	x0, _str387@page
	add	x0, x0, _str387@pageoff
	bl	_utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str389@page
	add	x1, x1, _str389@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_qbe_missing_error */

.text
.balign 4
_cli_cmd_build_c_compiler_missing_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, _str392@page
	add	x0, x0, _str392@pageoff
	bl	_utilities_colors_dim
	mov	x19, x0
	adrp	x0, _str394@page
	add	x0, x0, _str394@pageoff
	bl	_utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str396@page
	add	x1, x1, _str396@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_c_compiler_missing_error */

.text
.balign 4
_cli_cmd_build_linker_failed_error:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x20, x1
	bl	_donna_files_read
	bl	_donna_string_trim
	mov	x19, x0
	adrp	x0, _str401@page
	add	x0, x0, _str401@pageoff
	bl	_utilities_colors_error_header
	mov	x21, x0
	adrp	x0, _str403@page
	add	x0, x0, _str403@pageoff
	bl	_utilities_colors_bold
	mov	x1, x0
	mov	x0, x21
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	adrp	x0, _str406@page
	add	x0, x0, _str406@pageoff
	bl	_utilities_colors_dim
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_utilities_colors_path
	mov	x1, x0
	mov	x0, x21
	bl	___rt_str_concat
	mov	x22, x0
	mov	x0, x19
	mov	x19, x0
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	L110
	mov	x19, x0
	adrp	x0, _str418@page
	add	x0, x0, _str418@pageoff
	bl	_utilities_colors_dim
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_cli_cmd_build_indent
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	mov	x23, x0
	b	L111
L110:
	adrp	x0, _str416@page
	add	x0, x0, _str416@pageoff
	bl	_utilities_colors_dim
	mov	x23, x0
L111:
	adrp	x0, _str423@page
	add	x0, x0, _str423@pageoff
	bl	_utilities_colors_orange
	adrp	x1, _str425@page
	add	x1, x1, _str425@pageoff
	bl	___rt_str_concat
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #16
	add	x1, x19, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
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
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	adrp	x1, _str439@page
	add	x1, x1, _str439@pageoff
	bl	_donna_string_join
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function cli_cmd_build_linker_failed_error */

.text
.balign 4
_cli_cmd_build_indent:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _str441@page
	add	x1, x1, _str441@pageoff
	bl	_donna_string_split
	adrp	x1, _str443@page
	add	x1, x1, _str443@pageoff
	bl	_cli_cmd_build_indent_lines
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cmd_build_indent */

.text
.balign 4
_cli_cmd_build_indent_lines:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, x0
	mov	x0, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	L117
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x20, x1
	adrp	x1, _str455@page
	add	x1, x1, _str455@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	___rt_str_concat
	adrp	x1, _str458@page
	add	x1, x1, _str458@pageoff
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
	bl	_cli_cmd_build_indent_lines
L117:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_indent_lines */

.text
.balign 4
_cli_cmd_build_compile_deps:
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
	beq	L130
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	str	x20, [x29, 56]
	adrp	x1, _str479@page
	add	x1, x1, _str479@pageoff
	mov	x0, x22
	bl	_donna_files_join
	mov	x20, x0
	mov	x0, x19
	bl	_builder_dependencies_dep_name
	mov	x1, x0
	mov	x0, x20
	bl	_donna_files_join
	str	x0, [x29, 72]
	adrp	x1, _str483@page
	add	x1, x1, _str483@pageoff
	bl	_donna_files_join
	mov	x1, x0
	mov	x0, x19
	mov	x20, x1
	adrp	x1, _str485@page
	add	x1, x1, _str485@pageoff
	mov	x19, x0
	mov	x0, x22
	bl	_donna_files_join
	bl	_donna_files_mkdir
	mov	x0, x19
	mov	x19, x0
	ldr	x0, [x29, 72]
	bl	_donna_files_mkdir
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	_donna_files_mkdir
	mov	x0, x19
	mov	x19, x0
	bl	_builder_dependencies_dep_src_dir
	str	x0, [x29, 64]
	mov	x0, x19
	mov	x19, x0
	bl	_builder_dependencies_dep_name
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
	bl	_builder_pipeline_compile_dir
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
	beq	L128
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
	bl	_builder_dependencies_dep_path
	mov	x3, x23
	mov	x2, x21
	mov	x1, x20
	ldr	x20, [x29, 56]
	mov	x23, x3
	mov	x3, x26
	mov	x21, x2
	mov	x2, x25
	bl	_cli_cmd_build_compile_ffi_for_mode
	mov	x2, x21
	str	x0, [x29, 32]
	mov	x0, x20
	ldr	x1, [x29, 48]
	mov	x21, x1
	ldr	x1, [x29, 40]
	mov	x20, x0
	mov	x0, x2
	bl	_donna_list_append
	mov	x3, x23
	mov	x1, x21
	str	x0, [x29, 16]
	mov	x0, x20
	ldr	x23, [x29, 32]
	ldr	x21, [x29, 24]
	mov	x20, x0
	mov	x0, x3
	bl	_donna_list_append
	mov	x4, x24
	mov	x1, x23
	mov	x24, x0
	mov	x0, x20
	ldr	x23, [x29, 16]
	mov	x20, x0
	mov	x0, x4
	bl	_donna_list_append
	mov	x6, x26
	mov	x5, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x4, x0
	mov	x0, x20
	bl	_cli_cmd_build_compile_deps
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L126
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
	beq	L123
	str	x22, [x1]
	b	L125
L123:
	mov	x0, #1
	str	x0, [x1]
	mov	x22, #1
L125:
	mov	x0, #32
	bl	_malloc
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
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L127
L126:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L127:
	str	x0, [x19]
	b	L132
L128:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L132
L130:
	mov	x20, x23
	mov	x19, x21
	mov	x21, x24
	mov	x0, #32
	bl	_malloc
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
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L132:
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
/* end function cli_cmd_build_compile_deps */

.text
.balign 4
_cli_cmd_build_has_public_main:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L138
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cmd_build_iface_has_main
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L136
	bl	_cli_cmd_build_has_public_main
	str	x0, [x19]
	b	L139
L136:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L139
L138:
	mov	x0, #0
L139:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_has_public_main */

.text
.balign 4
_cli_cmd_build_iface_has_main:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cmd_build_bindings_have_main
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cmd_build_iface_has_main */

.text
.balign 4
_cli_cmd_build_bindings_have_main:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L147
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x0, [x0]
	adrp	x1, _str598@page
	add	x1, x1, _str598@pageoff
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L145
	bl	_cli_cmd_build_bindings_have_main
	str	x0, [x19]
	b	L148
L145:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L148
L147:
	mov	x0, #0
L148:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_bindings_have_main */

.text
.balign 4
_cli_cmd_build_linker_flags:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, _str608@page
	add	x0, x0, _str608@pageoff
	bl	_donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	cmp	x0, #1
	beq	L151
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str620@page
	add	x1, x1, _str620@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	b	L152
L151:
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str616@page
	add	x1, x1, _str616@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
L152:
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cmd_build_linker_flags */

.text
.balign 4
_cli_cmd_build_linker_flags_for_mode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	adrp	x1, _str625@page
	add	x1, x1, _str625@pageoff
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L155
	bl	_cli_cmd_build_release_linker_flags
	b	L156
L155:
	bl	_cli_cmd_build_linker_flags
L156:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_linker_flags_for_mode */

.text
.balign 4
_cli_cmd_build_release_linker_flags:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, _str637@page
	add	x1, x1, _str637@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L163
	adrp	x1, _str646@page
	add	x1, x1, _str646@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L162
	adrp	x1, _str655@page
	add	x1, x1, _str655@pageoff
	bl	_strcmp
	cmp	x0, #0
	beq	L161
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str660@page
	add	x1, x1, _str660@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	b	L164
L161:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L164
L162:
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str651@page
	add	x1, x1, _str651@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	b	L164
L163:
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str642@page
	add	x1, x1, _str642@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
L164:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_release_linker_flags */

.text
.balign 4
_cli_cmd_build_cc_flags_for_mode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	adrp	x1, _str665@page
	add	x1, x1, _str665@pageoff
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L167
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #1
	str	x1, [x19]
	mov	x1, #8
	add	x2, x19, x1
	adrp	x1, _str672@page
	add	x1, x1, _str672@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x19, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	bl	_builder_pipeline_release_cc_target_flags
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	b	L168
L167:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L168:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_cc_flags_for_mode */

.text
.balign 4
_cli_cmd_build_output_name_for_target:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, _str679@page
	add	x1, x1, _str679@pageoff
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	bne	L171
	adrp	x1, _str686@page
	add	x1, x1, _str686@pageoff
	bl	___rt_str_concat
L171:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_output_name_for_target */

.text
.balign 4
_cli_cmd_build_maybe_codesign:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, _str689@page
	add	x0, x0, _str689@pageoff
	bl	_donna_shell_run
	mov	x1, x19
	cmp	x0, #0
	cset	x0, eq
	cmp	x0, #0
	beq	L174
	adrp	x0, _str697@page
	add	x0, x0, _str697@pageoff
	bl	___rt_str_concat
	adrp	x1, _str699@page
	add	x1, x1, _str699@pageoff
	bl	___rt_str_concat
	bl	_donna_shell_run
	b	L175
L174:
	mov	x0, #0
L175:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_maybe_codesign */

.text
.balign 4
_cli_cmd_build_sh_quote:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, _str705@page
	add	x2, x2, _str705@pageoff
	adrp	x1, _str704@page
	add	x1, x1, _str704@pageoff
	bl	_donna_string_replace
	mov	x1, x0
	adrp	x0, _str703@page
	add	x0, x0, _str703@pageoff
	bl	___rt_str_concat
	adrp	x1, _str708@page
	add	x1, x1, _str708@pageoff
	bl	___rt_str_concat
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cmd_build_sh_quote */

.text
.balign 4
_cli_cmd_build_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L186
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L182
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L183
L182:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, _str729@page
	add	x1, x1, _str729@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L183:
	cmp	w1, #0
	bne	L185
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cmd_build_first_positional
	b	L187
L185:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L187
L186:
	adrp	x0, _str716@page
	add	x0, x0, _str716@pageoff
L187:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_first_positional */

.text
.balign 4
_cli_cmd_build_build_dir_arg:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	_cli_cmd_build_first_positional
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, _str752@page
	add	x1, x1, _str752@pageoff
	mov	x20, x0
	mov	x0, x19
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L197
	adrp	x1, _str759@page
	add	x1, x1, _str759@pageoff
	bl	_cli_cmd_build_flag_value
	adrp	x1, _str761@page
	add	x1, x1, _str761@pageoff
	mov	x19, x0
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L195
	mov	x20, x0
	bl	_donna_string_is_empty
	mov	x2, x0
	mov	x0, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x2, #1
	beq	L192
	str	x0, [x1]
	b	L194
L192:
	adrp	x0, _str775@page
	add	x0, x0, _str775@pageoff
	str	x0, [x1]
	adrp	x0, _str775@page
	add	x0, x0, _str775@pageoff
L194:
	str	x0, [x19]
	b	L198
L195:
	adrp	x0, _str768@page
	add	x0, x0, _str768@pageoff
	str	x0, [x19]
	adrp	x0, _str768@page
	add	x0, x0, _str768@pageoff
	b	L198
L197:
	mov	x0, x19
L198:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_build_dir_arg */

.text
.balign 4
_cli_cmd_build_build_config:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	adrp	x1, _str779@page
	add	x1, x1, _str779@pageoff
	mov	x19, x0
	bl	_cli_cmd_build_has_flag
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L206
	adrp	x1, _str788@page
	add	x1, x1, _str788@pageoff
	bl	_cli_cmd_build_flag_value
	adrp	x1, _str790@page
	add	x1, x1, _str790@pageoff
	mov	x19, x0
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L205
	bl	_cli_cmd_build_normalize_release_target
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L203
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x21, [x0]
	mov	x0, #16
	add	x1, x22, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L204
L203:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L204:
	str	x0, [x19]
	b	L207
L205:
	bl	_cli_cmd_build_all_release_targets
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L207
L206:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _cli_cmd_build_BuildDebug@page
	add	x1, x1, _cli_cmd_build_BuildDebug@pageoff
	str	x1, [x2]
L207:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_build_build_config */

.text
.balign 4
_cli_cmd_build_has_flag:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L213
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	ldr	x0, [x0]
	mov	x20, x1
	bl	_donna_string_equal
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L211
	bl	_cli_cmd_build_has_flag
	str	x0, [x19]
	b	L214
L211:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L214
L213:
	mov	x0, #0
L214:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_has_flag */

.text
.balign 4
_cli_cmd_build_flag_value:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L220
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
	bl	_donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L219
	mov	x0, x20
	bl	_cli_cmd_build_flag_value
	str	x0, [x19]
	b	L221
L219:
	str	x0, [x19]
	b	L221
L220:
	adrp	x0, _str854@page
	add	x0, x0, _str854@pageoff
L221:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_build_flag_value */

.text
.balign 4
.globl _cli_cmd_build_normalize_release_target
_cli_cmd_build_normalize_release_target:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x0
	bl	_donna_string_is_empty
	cmp	x0, #1
	beq	L224
	mov	x0, x20
	b	L225
L224:
	bl	_cli_cmd_build_host_release_target
L225:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	adrp	x1, _str882@page
	add	x1, x1, _str882@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L247
	adrp	x1, _str890@page
	add	x1, x1, _str890@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L246
	adrp	x1, _str898@page
	add	x1, x1, _str898@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L245
	adrp	x1, _str906@page
	add	x1, x1, _str906@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L244
	adrp	x1, _str914@page
	add	x1, x1, _str914@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L243
	adrp	x1, _str922@page
	add	x1, x1, _str922@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L242
	adrp	x1, _str930@page
	add	x1, x1, _str930@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L241
	adrp	x1, _str938@page
	add	x1, x1, _str938@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L240
	adrp	x1, _str946@page
	add	x1, x1, _str946@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L239
	adrp	x1, _str954@page
	add	x1, x1, _str954@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L238
	adrp	x1, _str962@page
	add	x1, x1, _str962@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L237
	mov	x20, x0
	adrp	x0, _str970@page
	add	x0, x0, _str970@pageoff
	bl	_utilities_colors_red
	adrp	x1, _str972@page
	add	x1, x1, _str972@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_utilities_colors_path
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L237:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str967@page
	add	x1, x1, _str967@pageoff
	str	x1, [x2]
	str	x0, [x19]
	b	L248
L238:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str959@page
	add	x1, x1, _str959@pageoff
	str	x1, [x2]
	str	x0, [x19]
	b	L248
L239:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str951@page
	add	x1, x1, _str951@pageoff
	str	x1, [x2]
	str	x0, [x19]
	b	L248
L240:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str943@page
	add	x1, x1, _str943@pageoff
	str	x1, [x2]
	str	x0, [x19]
	b	L248
L241:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str935@page
	add	x1, x1, _str935@pageoff
	str	x1, [x2]
	str	x0, [x19]
	b	L248
L242:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str927@page
	add	x1, x1, _str927@pageoff
	str	x1, [x2]
	str	x0, [x19]
	b	L248
L243:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str919@page
	add	x1, x1, _str919@pageoff
	str	x1, [x2]
	str	x0, [x19]
	b	L248
L244:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str911@page
	add	x1, x1, _str911@pageoff
	str	x1, [x2]
	str	x0, [x19]
	b	L248
L245:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str903@page
	add	x1, x1, _str903@pageoff
	str	x1, [x2]
	str	x0, [x19]
	b	L248
L246:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str895@page
	add	x1, x1, _str895@pageoff
	str	x1, [x2]
	str	x0, [x19]
	b	L248
L247:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str887@page
	add	x1, x1, _str887@pageoff
	str	x1, [x2]
	str	x0, [x19]
L248:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_build_normalize_release_target */

.text
.balign 4
.globl _cli_cmd_build_all_release_targets
_cli_cmd_build_all_release_targets:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str979@page
	add	x0, x0, _str979@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x1, x20, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str983@page
	add	x0, x0, _str983@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str987@page
	add	x0, x0, _str987@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x19, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str991@page
	add	x0, x0, _str991@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str995@page
	add	x1, x1, _str995@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_all_release_targets */

.text
.balign 4
_cli_cmd_build_host_release_target:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, _str999@page
	add	x0, x0, _str999@pageoff
	bl	_donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	cmp	x0, #1
	beq	L257
	adrp	x0, _str1018@page
	add	x0, x0, _str1018@pageoff
	bl	_donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L255
	adrp	x0, _str1027@page
	add	x0, x0, _str1027@pageoff
	str	x0, [x1]
	adrp	x0, _str1027@page
	add	x0, x0, _str1027@pageoff
	b	L262
L255:
	adrp	x0, _str1026@page
	add	x0, x0, _str1026@pageoff
	str	x0, [x1]
	adrp	x0, _str1026@page
	add	x0, x0, _str1026@pageoff
	b	L262
L257:
	adrp	x0, _str1007@page
	add	x0, x0, _str1007@pageoff
	bl	_donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L260
	adrp	x0, _str1016@page
	add	x0, x0, _str1016@pageoff
	str	x0, [x1]
	adrp	x0, _str1016@page
	add	x0, x0, _str1016@pageoff
	b	L262
L260:
	adrp	x0, _str1015@page
	add	x0, x0, _str1015@pageoff
	str	x0, [x1]
	adrp	x0, _str1015@page
	add	x0, x0, _str1015@pageoff
L262:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cmd_build_host_release_target */

.text
.balign 4
.globl _cli_cmd_build_release_target_dir
_cli_cmd_build_release_target_dir:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, _str1032@page
	add	x1, x1, _str1032@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	bne	L265
	adrp	x0, _str1037@page
	add	x0, x0, _str1037@pageoff
L265:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_release_target_dir */

.text
.balign 4
___rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	_strlen
	mov	x19, x0
	mov	x0, x20
	bl	_strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	bl	_strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	_strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function __rt_str_concat */

