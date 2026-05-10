.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str24:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str38:
	.ascii "pub fn "
	.byte 0
/* end data */

.data
.balign 8
_str49:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str59:
	.ascii "_test"
	.byte 0
/* end data */

.data
.balign 8
_str99:
	.ascii "// Auto-generated test runner "
	.byte 226
	.byte 128
	.byte 148
	.ascii " do not edit."
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str101:
	.byte 10
	.ascii "@external("
	.byte 34
	.ascii "c"
	.byte 34
	.ascii ", "
	.byte 34
	.ascii "donna_ffi_time_now_us"
	.byte 34
	.ascii ")"
	.byte 10
	.ascii "fn ffi_now_us() -> Int"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str103:
	.byte 10
	.ascii "fn digit_char(d: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str105:
	.ascii "  case d:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str107:
	.ascii "    0 -> "
	.byte 34
	.ascii "0"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str109:
	.ascii "    1 -> "
	.byte 34
	.ascii "1"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str111:
	.ascii "    2 -> "
	.byte 34
	.ascii "2"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str113:
	.ascii "    3 -> "
	.byte 34
	.ascii "3"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str115:
	.ascii "    4 -> "
	.byte 34
	.ascii "4"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str117:
	.ascii "    5 -> "
	.byte 34
	.ascii "5"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str119:
	.ascii "    6 -> "
	.byte 34
	.ascii "6"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str121:
	.ascii "    7 -> "
	.byte 34
	.ascii "7"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str123:
	.ascii "    8 -> "
	.byte 34
	.ascii "8"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str125:
	.ascii "    _ -> "
	.byte 34
	.ascii "9"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str127:
	.byte 10
	.ascii "fn pos_int_to_str(n: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str129:
	.ascii "  case n < 10:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str131:
	.ascii "    True  -> digit_char(n)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str133:
	.ascii "    False -> pos_int_to_str(n / 10) <> digit_char(n - n / 10 * 10)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.byte 10
	.ascii "fn int_to_str(n: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str137:
	.ascii "  case n < 0:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str139:
	.ascii "    True  -> "
	.byte 34
	.ascii "-"
	.byte 34
	.ascii " <> pos_int_to_str(0 - n)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str141:
	.ascii "    False -> pos_int_to_str(n)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str143:
	.byte 10
	.ascii "fn two_digits(n: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str145:
	.ascii "  digit_char(n / 10) <> digit_char(n - n / 10 * 10)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str147:
	.byte 10
	.ascii "fn format_us(us: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str149:
	.ascii "  case us <= 0:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str151:
	.ascii "    True -> "
	.byte 34
	.ascii "<1us"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str153:
	.ascii "    False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str155:
	.ascii "      case us < 1000:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str157:
	.ascii "        True -> int_to_str(us) <> "
	.byte 34
	.ascii "us"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str159:
	.ascii "        False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str161:
	.ascii "          case us < 1000000:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str163:
	.ascii "            True ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str165:
	.ascii "              let ms = us / 1000"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str167:
	.ascii "              let frac = (us - ms * 1000) / 10"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str169:
	.ascii "              int_to_str(ms) <> "
	.byte 34
	.ascii "."
	.byte 34
	.ascii " <> two_digits(frac) <> "
	.byte 34
	.ascii "ms"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str171:
	.ascii "            False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str173:
	.ascii "              let s = us / 1000000"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str175:
	.ascii "              let frac = (us - s * 1000000) / 10000"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str177:
	.ascii "              int_to_str(s) <> "
	.byte 34
	.ascii "."
	.byte 34
	.ascii " <> two_digits(frac) <> "
	.byte 34
	.ascii "s"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str179:
	.byte 10
	.ascii "fn reverse_strings(xs: List(String), acc: List(String)) -> List(String):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str181:
	.ascii "  case xs:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str183:
	.ascii "    [] -> acc"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str185:
	.ascii "    [x, ..rest] -> reverse_strings(rest, [x, ..acc])"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str187:
	.byte 10
	.ascii "fn append_strings(xs: List(String), ys: List(String)) -> List(String):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str189:
	.ascii "  case xs:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str191:
	.ascii "    [] -> ys"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str193:
	.ascii "    [x, ..rest] -> [x, ..append_strings(rest, ys)]"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str195:
	.byte 10
	.ascii "fn add_failure(failures: List(String), name: String, result: String) -> List(String):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str197:
	.ascii "  case result == "
	.byte 34
	.byte 34
	.ascii ":"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str199:
	.ascii "    True -> failures"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str201:
	.ascii "    False -> [name, ..failures]"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str203:
	.byte 10
	.ascii "fn print_failure_names(names: List(String)) -> Nil:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str205:
	.ascii "  case names:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str207:
	.ascii "    [] -> Nil"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str209:
	.ascii "    [name, ..rest] ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str211:
	.ascii "      echo "
	.byte 34
	.ascii "  "
	.byte 34
	.ascii " <> name"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str213:
	.ascii "      print_failure_names(rest)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str215:
	.byte 10
	.ascii "fn print_failures(failures: List(String)) -> Nil:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str217:
	.ascii "  case failures:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str219:
	.ascii "    [] -> Nil"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str221:
	.ascii "    _ ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str223:
	.ascii "      echo "
	.byte 34
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str225:
	.ascii "      echo "
	.byte 34
	.byte 92
	.ascii "x1b[31mFailures:"
	.byte 92
	.ascii "x1b[0m"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str227:
	.ascii "      print_failure_names(reverse_strings(failures, []))"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str229:
	.byte 10
	.ascii "fn run_test(name: String, result: String, us: Int) -> Int:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str231:
	.ascii "  let duration = format_us(us)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str233:
	.ascii "  case result == "
	.byte 34
	.byte 34
	.ascii ":"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str235:
	.ascii "    True  ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str237:
	.ascii "      echo "
	.byte 34
	.byte 92
	.ascii "x1b[32m"
	.byte 194
	.byte 183
	.ascii "pass"
	.byte 92
	.ascii "x1b[0m "
	.byte 34
	.ascii " <> name <> "
	.byte 34
	.ascii " "
	.byte 34
	.ascii " <> duration"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str239:
	.ascii "      0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str241:
	.ascii "    False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str243:
	.ascii "      echo "
	.byte 34
	.byte 92
	.ascii "x1b[31m"
	.byte 194
	.byte 183
	.ascii "FAIL"
	.byte 92
	.ascii "x1b[0m "
	.byte 34
	.ascii " <> name <> "
	.byte 34
	.ascii " "
	.byte 34
	.ascii " <> duration"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str245:
	.ascii "      echo result"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str247:
	.ascii "      1"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str249:
	.byte 10
	.ascii "fn run_case(s: Int, failures: List(String), name: String, test_fn: fn() -> String) -> #(Int, List(String)):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str251:
	.ascii "  let t = ffi_now_us()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str253:
	.ascii "  let r = test_fn()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str255:
	.ascii "  let us = ffi_now_us() - t"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str257:
	.ascii "  let failures2 = add_failure(failures, name, r)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str259:
	.ascii "  #(s + run_test(name, r, us), failures2)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str262:
	.byte 10
	.ascii "pub fn main() -> Int:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str264:
	.ascii "  let t0 = ffi_now_us()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str266:
	.ascii "  let s = 0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str268:
	.ascii "  let failures = []"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str271:
	.ascii "  let passed = "
	.byte 0
/* end data */

.data
.balign 8
_str275:
	.ascii " - s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str277:
	.ascii "  let elapsed = ffi_now_us() - t0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str279:
	.ascii "  let ts = format_us(elapsed)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str281:
	.ascii "  case s == 0:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str283:
	.ascii "    True  -> echo "
	.byte 34
	.byte 92
	.ascii "x1b[32m"
	.byte 34
	.ascii " <> int_to_str(passed) <> "
	.byte 34
	.ascii " passed"
	.byte 92
	.ascii "x1b[0m, no failures in "
	.byte 34
	.ascii " <> ts"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str285:
	.ascii "    False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str287:
	.ascii "      print_failures(failures)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str289:
	.ascii "      echo "
	.byte 34
	.byte 92
	.ascii "x1b[32m"
	.byte 34
	.ascii " <> int_to_str(passed) <> "
	.byte 34
	.ascii " passed"
	.byte 92
	.ascii "x1b[0m, "
	.byte 92
	.ascii "x1b[31m"
	.byte 34
	.ascii " <> int_to_str(s) <> "
	.byte 34
	.ascii " failed"
	.byte 92
	.ascii "x1b[0m in "
	.byte 34
	.ascii " <> ts"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str291:
	.ascii "  s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str357:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str427:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str436:
	.ascii "import test/"
	.byte 0
/* end data */

.data
.balign 8
_str438:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str449:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str468:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str477:
	.byte 10
	.ascii "fn run_module_"
	.byte 0
/* end data */

.data
.balign 8
_str479:
	.ascii "() -> #(Int, List(String)):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str481:
	.ascii "  let s = 0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str483:
	.ascii "  let failures = []"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str487:
	.ascii "  #(s, failures)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str498:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str507:
	.ascii "  let #(s_"
	.byte 0
/* end data */

.data
.balign 8
_str509:
	.ascii ", failures_"
	.byte 0
/* end data */

.data
.balign 8
_str512:
	.ascii ") = run_module_"
	.byte 0
/* end data */

.data
.balign 8
_str515:
	.ascii "()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str517:
	.ascii "  let s = s + s_"
	.byte 0
/* end data */

.data
.balign 8
_str520:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str522:
	.ascii "  let failures = append_strings(failures_"
	.byte 0
/* end data */

.data
.balign 8
_str525:
	.ascii ", failures)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str536:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str541:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str544:
	.ascii "  let #(s, failures) = run_case(s, failures, "
	.byte 34
	.byte 0
/* end data */

.data
.balign 8
_str546:
	.byte 34
	.ascii ", fn() -> "
	.byte 0
/* end data */

.data
.balign 8
_str549:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str552:
	.ascii "())"
	.byte 10
	.byte 0
/* end data */

.text
.balign 4
.globl _builder_tester_collect_test_modules
_builder_tester_collect_test_modules:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_tester_collect_loop
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_tester_collect_test_modules */

.text
.balign 4
_builder_tester_collect_loop:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x19, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L4
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x21, x0
	bl	_donna_files_basename
	bl	_donna_files_drop_extension
	mov	x22, x0
	mov	x0, x21
	bl	_donna_files_read
	bl	_builder_tester_find_test_fns
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x22, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	bl	_builder_tester_collect_loop
	b	L6
L4:
	mov	x0, x19
	bl	_donna_list_reverse
L6:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_tester_collect_loop */

.text
.balign 4
.globl _builder_tester_find_test_fns
_builder_tester_find_test_fns:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _str24@page
	add	x1, x1, _str24@pageoff
	bl	_donna_string_split
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_tester_collect_fns
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_tester_find_test_fns */

.text
.balign 4
_builder_tester_collect_fns:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x22, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L21
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	adrp	x1, _str38@page
	add	x1, x1, _str38@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	L19
	mov	x20, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x20
	mov	x2, #7
	sub	x2, x1, x2
	mov	x1, #7
	bl	_donna_string_slice
	adrp	x1, _str49@page
	add	x1, x1, _str49@pageoff
	mov	x20, x0
	bl	_donna_string_index_of
	mov	x2, x0
	mov	x0, x20
	cmp	x2, #0
	cset	x1, ge
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x1, #0
	beq	L16
	mov	x1, #0
	bl	_donna_string_slice
	mov	x23, x0
	mov	x0, x21
	adrp	x1, _str59@page
	add	x1, x1, _str59@pageoff
	mov	x21, x0
	mov	x0, x23
	bl	_donna_string_ends_with
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	L14
	mov	x1, x22
	bl	_builder_tester_collect_fns
	str	x0, [x21]
	b	L15
L14:
	mov	x24, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, x24
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x23, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	bl	_builder_tester_collect_fns
	str	x0, [x21]
L15:
	str	x0, [x20]
	b	L18
L16:
	mov	x0, x21
	mov	x21, x22
	mov	x1, x21
	bl	_builder_tester_collect_fns
	str	x0, [x20]
L18:
	str	x0, [x19]
	b	L23
L19:
	mov	x0, x21
	mov	x20, x22
	mov	x1, x20
	bl	_builder_tester_collect_fns
	str	x0, [x19]
	b	L23
L21:
	mov	x0, x22
	bl	_donna_list_reverse
L23:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_tester_collect_fns */

.text
.balign 4
.globl _builder_tester_count_total
_builder_tester_count_total:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L26
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_list_length
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_tester_count_total
	add	x0, x19, x0
	b	L27
L26:
	mov	x0, #0
L27:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_tester_count_total */

.text
.balign 4
.globl _builder_tester_generate_runner
_builder_tester_generate_runner:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_tester_generate_filtered_runner
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_tester_generate_runner */

.text
.balign 4
.globl _builder_tester_generate_filtered_runner
_builder_tester_generate_filtered_runner:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	bl	_builder_tester_filter_test_modules
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	_builder_tester_count_total
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_tester_gen_imports
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	bl	_builder_tester_gen_module_runners
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_builder_tester_gen_main_module_calls
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, _str99@page
	add	x0, x0, _str99@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str101@page
	add	x1, x1, _str101@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str103@page
	add	x1, x1, _str103@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str105@page
	add	x1, x1, _str105@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str107@page
	add	x1, x1, _str107@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str109@page
	add	x1, x1, _str109@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str111@page
	add	x1, x1, _str111@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str113@page
	add	x1, x1, _str113@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str115@page
	add	x1, x1, _str115@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str117@page
	add	x1, x1, _str117@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str119@page
	add	x1, x1, _str119@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str121@page
	add	x1, x1, _str121@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str123@page
	add	x1, x1, _str123@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str125@page
	add	x1, x1, _str125@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str127@page
	add	x1, x1, _str127@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str129@page
	add	x1, x1, _str129@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str131@page
	add	x1, x1, _str131@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str133@page
	add	x1, x1, _str133@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str135@page
	add	x1, x1, _str135@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str137@page
	add	x1, x1, _str137@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str139@page
	add	x1, x1, _str139@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str141@page
	add	x1, x1, _str141@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str143@page
	add	x1, x1, _str143@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str145@page
	add	x1, x1, _str145@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str147@page
	add	x1, x1, _str147@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str149@page
	add	x1, x1, _str149@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str151@page
	add	x1, x1, _str151@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str153@page
	add	x1, x1, _str153@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str155@page
	add	x1, x1, _str155@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str157@page
	add	x1, x1, _str157@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str159@page
	add	x1, x1, _str159@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str161@page
	add	x1, x1, _str161@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str163@page
	add	x1, x1, _str163@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str165@page
	add	x1, x1, _str165@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str167@page
	add	x1, x1, _str167@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str169@page
	add	x1, x1, _str169@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str171@page
	add	x1, x1, _str171@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str173@page
	add	x1, x1, _str173@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str175@page
	add	x1, x1, _str175@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str177@page
	add	x1, x1, _str177@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str179@page
	add	x1, x1, _str179@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str181@page
	add	x1, x1, _str181@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str183@page
	add	x1, x1, _str183@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str185@page
	add	x1, x1, _str185@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str187@page
	add	x1, x1, _str187@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str189@page
	add	x1, x1, _str189@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str191@page
	add	x1, x1, _str191@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str193@page
	add	x1, x1, _str193@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str195@page
	add	x1, x1, _str195@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str197@page
	add	x1, x1, _str197@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str199@page
	add	x1, x1, _str199@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str201@page
	add	x1, x1, _str201@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str203@page
	add	x1, x1, _str203@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str205@page
	add	x1, x1, _str205@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str207@page
	add	x1, x1, _str207@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str209@page
	add	x1, x1, _str209@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str211@page
	add	x1, x1, _str211@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str213@page
	add	x1, x1, _str213@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str215@page
	add	x1, x1, _str215@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str217@page
	add	x1, x1, _str217@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str219@page
	add	x1, x1, _str219@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str221@page
	add	x1, x1, _str221@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str223@page
	add	x1, x1, _str223@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str225@page
	add	x1, x1, _str225@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str227@page
	add	x1, x1, _str227@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str229@page
	add	x1, x1, _str229@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str231@page
	add	x1, x1, _str231@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str233@page
	add	x1, x1, _str233@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str235@page
	add	x1, x1, _str235@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str237@page
	add	x1, x1, _str237@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str239@page
	add	x1, x1, _str239@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str241@page
	add	x1, x1, _str241@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str243@page
	add	x1, x1, _str243@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str245@page
	add	x1, x1, _str245@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str247@page
	add	x1, x1, _str247@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str249@page
	add	x1, x1, _str249@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str251@page
	add	x1, x1, _str251@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str253@page
	add	x1, x1, _str253@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str255@page
	add	x1, x1, _str255@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str257@page
	add	x1, x1, _str257@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str259@page
	add	x1, x1, _str259@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str262@page
	add	x1, x1, _str262@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str264@page
	add	x1, x1, _str264@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str266@page
	add	x1, x1, _str266@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str268@page
	add	x1, x1, _str268@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	___rt_str_concat
	adrp	x1, _str271@page
	add	x1, x1, _str271@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	adrp	x1, _str275@page
	add	x1, x1, _str275@pageoff
	bl	___rt_str_concat
	adrp	x1, _str277@page
	add	x1, x1, _str277@pageoff
	bl	___rt_str_concat
	adrp	x1, _str279@page
	add	x1, x1, _str279@pageoff
	bl	___rt_str_concat
	adrp	x1, _str281@page
	add	x1, x1, _str281@pageoff
	bl	___rt_str_concat
	adrp	x1, _str283@page
	add	x1, x1, _str283@pageoff
	bl	___rt_str_concat
	adrp	x1, _str285@page
	add	x1, x1, _str285@pageoff
	bl	___rt_str_concat
	adrp	x1, _str287@page
	add	x1, x1, _str287@pageoff
	bl	___rt_str_concat
	adrp	x1, _str289@page
	add	x1, x1, _str289@pageoff
	bl	___rt_str_concat
	adrp	x1, _str291@page
	add	x1, x1, _str291@pageoff
	bl	___rt_str_concat
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_tester_generate_filtered_runner */

.text
.balign 4
_builder_tester_filter_test_modules:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L34
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_builder_tester_filter_modules_loop
L34:
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_tester_filter_test_modules */

.text
.balign 4
_builder_tester_filter_modules_loop:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L40
	mov	x24, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x23, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	mov	x2, x24
	mov	x19, x0
	mov	x0, x23
	bl	_builder_tester_filter_fns
	mov	x22, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x22
	bl	_donna_list_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L38
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x24
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x23, [x21]
	mov	x23, x1
	mov	x1, #8
	add	x1, x21, x1
	str	x22, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x21, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x20, [x3]
	bl	_builder_tester_filter_modules_loop
	str	x0, [x19]
	b	L42
L38:
	mov	x1, x24
	mov	x2, x20
	bl	_builder_tester_filter_modules_loop
	str	x0, [x19]
	b	L42
L40:
	mov	x0, x20
	bl	_donna_list_reverse
L42:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_tester_filter_modules_loop */

.text
.balign 4
_builder_tester_filter_fns:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x20, x3
	ldr	x3, [x1]
	cmp	x3, #0
	beq	L48
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	mov	x3, #16
	add	x1, x1, x3
	ldr	x1, [x1]
	mov	x23, x2
	mov	x22, x1
	mov	x1, x21
	mov	x19, x0
	bl	_builder_tester_matches_filters
	mov	x2, x23
	mov	x1, x22
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x3, #1
	beq	L46
	mov	x3, x20
	mov	x24, x2
	mov	x23, x1
	bl	_builder_tester_filter_fns
	str	x0, [x19]
	b	L50
L46:
	mov	x23, x1
	mov	x24, x2
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x2, x24
	mov	x1, x23
	mov	x3, x0
	mov	x0, x22
	mov	x4, #1
	str	x4, [x3]
	mov	x4, #8
	add	x4, x3, x4
	str	x21, [x4]
	mov	x4, #16
	add	x4, x3, x4
	str	x20, [x4]
	bl	_builder_tester_filter_fns
	str	x0, [x19]
	b	L50
L48:
	mov	x0, x20
	bl	_donna_list_reverse
L50:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_tester_filter_fns */

.text
.balign 4
_builder_tester_matches_filters:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	adrp	x1, _str357@page
	add	x1, x1, _str357@pageoff
	mov	x19, x0
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	___rt_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x22, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	L64
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x20, x1
	bl	_builder_tester_contains_text
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L62
	mov	x21, x1
	mov	x20, x0
	mov	x0, x22
	bl	_builder_tester_contains_text
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	L59
	mov	x21, x0
	bl	_builder_tester_contains_text
	mov	x2, x23
	mov	x1, x22
	mov	x3, x0
	mov	x0, x21
	mov	x4, #16
	sub	sp, sp, x4
	mov	x21, sp
	cmp	x3, #1
	beq	L56
	bl	_builder_tester_matches_filters
	str	x0, [x21]
	b	L58
L56:
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #1
L58:
	str	x0, [x20]
	b	L61
L59:
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #1
L61:
	str	x0, [x19]
	b	L65
L62:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L65
L64:
	mov	x0, #0
L65:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_tester_matches_filters */

.text
.balign 4
_builder_tester_contains_text:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x20
	bl	_donna_string_length
	mov	x1, x20
	mov	x21, x0
	mov	x0, x19
	cmp	x21, #0
	mov	x20, x1
	cset	x1, eq
	cmp	x1, #1
	beq	L68
	mov	x19, x0
	bl	_donna_string_length
	mov	x3, x21
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x4, #0
	bl	_builder_tester_contains_text_from
	b	L69
L68:
	mov	x0, #0
L69:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_tester_contains_text */

.text
.balign 4
_builder_tester_contains_text_from:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x23, x4
	add	x4, x3, x4
	cmp	x4, x2
	mov	x22, x3
	cset	x3, gt
	cmp	x3, #1
	beq	L75
	mov	x21, x2
	mov	x2, x22
	mov	x20, x1
	mov	x1, x23
	mov	x19, x0
	bl	_donna_string_slice
	mov	x1, x20
	mov	x20, x1
	bl	_donna_string_equal
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x5, x0
	mov	x0, x19
	mov	x6, #16
	sub	sp, sp, x6
	mov	x19, sp
	cmp	x5, #1
	beq	L73
	mov	x5, #1
	add	x4, x4, x5
	bl	_builder_tester_contains_text_from
	str	x0, [x19]
	b	L76
L73:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L76
L75:
	mov	x0, #0
L76:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_tester_contains_text_from */

.text
.balign 4
_builder_tester_gen_imports:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L79
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x19, x0
	adrp	x0, _str436@page
	add	x0, x0, _str436@pageoff
	bl	___rt_str_concat
	adrp	x1, _str438@page
	add	x1, x1, _str438@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_tester_gen_imports
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L80
L79:
	adrp	x0, _str427@page
	add	x0, x0, _str427@pageoff
L80:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_tester_gen_imports */

.text
.balign 4
_builder_tester_gen_call_lines:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L83
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x19, x0
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_builder_tester_gen_mod_calls
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_tester_gen_call_lines
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L84
L83:
	adrp	x0, _str449@page
	add	x0, x0, _str449@pageoff
L84:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_tester_gen_call_lines */

.text
.balign 4
_builder_tester_gen_module_runners:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L87
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x21, x1
	mov	x1, x0
	mov	x20, x0
	adrp	x0, _str477@page
	add	x0, x0, _str477@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str479@page
	add	x1, x1, _str479@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str481@page
	add	x1, x1, _str481@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str483@page
	add	x1, x1, _str483@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_builder_tester_gen_mod_calls
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	adrp	x1, _str487@page
	add	x1, x1, _str487@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_tester_gen_module_runners
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L88
L87:
	adrp	x0, _str468@page
	add	x0, x0, _str468@pageoff
L88:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_tester_gen_module_runners */

.text
.balign 4
_builder_tester_gen_main_module_calls:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L91
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x20, x1
	mov	x19, x0
	adrp	x0, _str507@page
	add	x0, x0, _str507@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str509@page
	add	x1, x1, _str509@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str512@page
	add	x1, x1, _str512@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str515@page
	add	x1, x1, _str515@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str517@page
	add	x1, x1, _str517@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str520@page
	add	x1, x1, _str520@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str522@page
	add	x1, x1, _str522@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	___rt_str_concat
	adrp	x1, _str525@page
	add	x1, x1, _str525@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_tester_gen_main_module_calls
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L92
L91:
	adrp	x0, _str498@page
	add	x0, x0, _str498@pageoff
L92:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_tester_gen_main_module_calls */

.text
.balign 4
_builder_tester_gen_mod_calls:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x2, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	L95
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	adrp	x1, _str541@page
	add	x1, x1, _str541@pageoff
	mov	x19, x0
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, _str544@page
	add	x0, x0, _str544@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str546@page
	add	x1, x1, _str546@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	mov	x1, x19
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str549@page
	add	x1, x1, _str549@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str552@page
	add	x1, x1, _str552@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_tester_gen_mod_calls
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L96
L95:
	adrp	x0, _str536@page
	add	x0, x0, _str536@pageoff
L96:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_tester_gen_mod_calls */

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

