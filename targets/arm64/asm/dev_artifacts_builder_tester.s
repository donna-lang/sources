.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str24:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str38:
	.ascii "pub fn "
	.byte 0
/* end data */

.data
.balign 8
str49:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str59:
	.ascii "_test"
	.byte 0
/* end data */

.data
.balign 8
str99:
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
str101:
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
str103:
	.byte 10
	.ascii "fn digit_char(d: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str105:
	.ascii "  case d:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str107:
	.ascii "    0 -> "
	.byte 34
	.ascii "0"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str109:
	.ascii "    1 -> "
	.byte 34
	.ascii "1"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str111:
	.ascii "    2 -> "
	.byte 34
	.ascii "2"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str113:
	.ascii "    3 -> "
	.byte 34
	.ascii "3"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str115:
	.ascii "    4 -> "
	.byte 34
	.ascii "4"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str117:
	.ascii "    5 -> "
	.byte 34
	.ascii "5"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str119:
	.ascii "    6 -> "
	.byte 34
	.ascii "6"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str121:
	.ascii "    7 -> "
	.byte 34
	.ascii "7"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str123:
	.ascii "    8 -> "
	.byte 34
	.ascii "8"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str125:
	.ascii "    _ -> "
	.byte 34
	.ascii "9"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str127:
	.byte 10
	.ascii "fn pos_int_to_str(n: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str129:
	.ascii "  case n < 10:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str131:
	.ascii "    True  -> digit_char(n)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str133:
	.ascii "    False -> pos_int_to_str(n / 10) <> digit_char(n - n / 10 * 10)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str135:
	.byte 10
	.ascii "fn int_to_str(n: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str137:
	.ascii "  case n < 0:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str139:
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
str141:
	.ascii "    False -> pos_int_to_str(n)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str143:
	.byte 10
	.ascii "fn two_digits(n: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str145:
	.ascii "  digit_char(n / 10) <> digit_char(n - n / 10 * 10)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str147:
	.byte 10
	.ascii "fn format_us(us: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str149:
	.ascii "  case us <= 0:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str151:
	.ascii "    True -> "
	.byte 34
	.ascii "<1us"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str153:
	.ascii "    False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str155:
	.ascii "      case us < 1000:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str157:
	.ascii "        True -> int_to_str(us) <> "
	.byte 34
	.ascii "us"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str159:
	.ascii "        False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str161:
	.ascii "          case us < 1000000:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str163:
	.ascii "            True ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str165:
	.ascii "              let ms = us / 1000"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str167:
	.ascii "              let frac = (us - ms * 1000) / 10"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str169:
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
str171:
	.ascii "            False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str173:
	.ascii "              let s = us / 1000000"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str175:
	.ascii "              let frac = (us - s * 1000000) / 10000"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str177:
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
str179:
	.byte 10
	.ascii "fn reverse_strings(xs: List(String), acc: List(String)) -> List(String):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str181:
	.ascii "  case xs:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str183:
	.ascii "    [] -> acc"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str185:
	.ascii "    [x, ..rest] -> reverse_strings(rest, [x, ..acc])"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str187:
	.byte 10
	.ascii "fn append_strings(xs: List(String), ys: List(String)) -> List(String):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str189:
	.ascii "  case xs:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str191:
	.ascii "    [] -> ys"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str193:
	.ascii "    [x, ..rest] -> [x, ..append_strings(rest, ys)]"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str195:
	.byte 10
	.ascii "fn add_failure(failures: List(String), name: String, result: String) -> List(String):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str197:
	.ascii "  case result == "
	.byte 34
	.byte 34
	.ascii ":"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str199:
	.ascii "    True -> failures"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str201:
	.ascii "    False -> [name, ..failures]"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str203:
	.byte 10
	.ascii "fn print_failure_names(names: List(String)) -> Nil:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str205:
	.ascii "  case names:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str207:
	.ascii "    [] -> Nil"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str209:
	.ascii "    [name, ..rest] ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str211:
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
str213:
	.ascii "      print_failure_names(rest)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str215:
	.byte 10
	.ascii "fn print_failures(failures: List(String)) -> Nil:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str217:
	.ascii "  case failures:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str219:
	.ascii "    [] -> Nil"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str221:
	.ascii "    _ ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str223:
	.ascii "      echo "
	.byte 34
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str225:
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
str227:
	.ascii "      print_failure_names(reverse_strings(failures, []))"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str229:
	.byte 10
	.ascii "fn run_test(name: String, result: String, us: Int) -> Int:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str231:
	.ascii "  let duration = format_us(us)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str233:
	.ascii "  case result == "
	.byte 34
	.byte 34
	.ascii ":"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str235:
	.ascii "    True  ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str237:
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
str239:
	.ascii "      0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str241:
	.ascii "    False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str243:
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
str245:
	.ascii "      echo result"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str247:
	.ascii "      1"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str249:
	.byte 10
	.ascii "fn run_case(s: Int, failures: List(String), name: String, test_fn: fn() -> String) -> #(Int, List(String)):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str251:
	.ascii "  let t = ffi_now_us()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str253:
	.ascii "  let r = test_fn()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str255:
	.ascii "  let us = ffi_now_us() - t"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str257:
	.ascii "  let failures2 = add_failure(failures, name, r)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str259:
	.ascii "  #(s + run_test(name, r, us), failures2)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str262:
	.byte 10
	.ascii "pub fn main() -> Int:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str264:
	.ascii "  let t0 = ffi_now_us()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str266:
	.ascii "  let s = 0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str268:
	.ascii "  let failures = []"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str271:
	.ascii "  let passed = "
	.byte 0
/* end data */

.data
.balign 8
str275:
	.ascii " - s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str277:
	.ascii "  let elapsed = ffi_now_us() - t0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str279:
	.ascii "  let ts = format_us(elapsed)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str281:
	.ascii "  case s == 0:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str283:
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
str285:
	.ascii "    False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str287:
	.ascii "      print_failures(failures)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str289:
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
str291:
	.ascii "  s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str357:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str427:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str436:
	.ascii "import test/"
	.byte 0
/* end data */

.data
.balign 8
str438:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str449:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str468:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str477:
	.byte 10
	.ascii "fn run_module_"
	.byte 0
/* end data */

.data
.balign 8
str479:
	.ascii "() -> #(Int, List(String)):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str481:
	.ascii "  let s = 0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str483:
	.ascii "  let failures = []"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str487:
	.ascii "  #(s, failures)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str498:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str507:
	.ascii "  let #(s_"
	.byte 0
/* end data */

.data
.balign 8
str509:
	.ascii ", failures_"
	.byte 0
/* end data */

.data
.balign 8
str512:
	.ascii ") = run_module_"
	.byte 0
/* end data */

.data
.balign 8
str515:
	.ascii "()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str517:
	.ascii "  let s = s + s_"
	.byte 0
/* end data */

.data
.balign 8
str520:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str522:
	.ascii "  let failures = append_strings(failures_"
	.byte 0
/* end data */

.data
.balign 8
str525:
	.ascii ", failures)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str536:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str541:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str544:
	.ascii "  let #(s, failures) = run_case(s, failures, "
	.byte 34
	.byte 0
/* end data */

.data
.balign 8
str546:
	.byte 34
	.ascii ", fn() -> "
	.byte 0
/* end data */

.data
.balign 8
str549:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str552:
	.ascii "())"
	.byte 10
	.byte 0
/* end data */

.text
.balign 16
.globl builder_tester_collect_test_modules
builder_tester_collect_test_modules:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_tester_collect_loop
	ldp	x29, x30, [sp], 16
	ret
.type builder_tester_collect_test_modules, @function
.size builder_tester_collect_test_modules, .-builder_tester_collect_test_modules
/* end function builder_tester_collect_test_modules */

.text
.balign 16
builder_tester_collect_loop:
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
	beq	.L4
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x21, x0
	bl	donna_files_basename
	bl	donna_files_drop_extension
	mov	x22, x0
	mov	x0, x21
	bl	donna_files_read
	bl	builder_tester_find_test_fns
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x22, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
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
	bl	builder_tester_collect_loop
	b	.L6
.L4:
	mov	x0, x19
	bl	donna_list_reverse
.L6:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type builder_tester_collect_loop, @function
.size builder_tester_collect_loop, .-builder_tester_collect_loop
/* end function builder_tester_collect_loop */

.text
.balign 16
.globl builder_tester_find_test_fns
builder_tester_find_test_fns:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, str24
	add	x1, x1, #:lo12:str24
	bl	donna_string_split
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_tester_collect_fns
	ldp	x29, x30, [sp], 16
	ret
.type builder_tester_find_test_fns, @function
.size builder_tester_find_test_fns, .-builder_tester_find_test_fns
/* end function builder_tester_find_test_fns */

.text
.balign 16
builder_tester_collect_fns:
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
	beq	.L21
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	adrp	x1, str38
	add	x1, x1, #:lo12:str38
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	.L19
	mov	x20, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x20
	mov	x2, #7
	sub	x2, x1, x2
	mov	x1, #7
	bl	donna_string_slice
	adrp	x1, str49
	add	x1, x1, #:lo12:str49
	mov	x20, x0
	bl	donna_string_index_of
	mov	x2, x0
	mov	x0, x20
	cmp	x2, #0
	cset	x1, ge
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x1, #0
	beq	.L16
	mov	x1, #0
	bl	donna_string_slice
	mov	x23, x0
	mov	x0, x21
	adrp	x1, str59
	add	x1, x1, #:lo12:str59
	mov	x21, x0
	mov	x0, x23
	bl	donna_string_ends_with
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	.L14
	mov	x1, x22
	bl	builder_tester_collect_fns
	str	x0, [x21]
	b	.L15
.L14:
	mov	x24, x0
	mov	x0, #24
	bl	malloc
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
	bl	builder_tester_collect_fns
	str	x0, [x21]
.L15:
	str	x0, [x20]
	b	.L18
.L16:
	mov	x0, x21
	mov	x21, x22
	mov	x1, x21
	bl	builder_tester_collect_fns
	str	x0, [x20]
.L18:
	str	x0, [x19]
	b	.L23
.L19:
	mov	x0, x21
	mov	x20, x22
	mov	x1, x20
	bl	builder_tester_collect_fns
	str	x0, [x19]
	b	.L23
.L21:
	mov	x0, x22
	bl	donna_list_reverse
.L23:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_tester_collect_fns, @function
.size builder_tester_collect_fns, .-builder_tester_collect_fns
/* end function builder_tester_collect_fns */

.text
.balign 16
.globl builder_tester_count_total
builder_tester_count_total:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L26
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_list_length
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_tester_count_total
	add	x0, x19, x0
	b	.L27
.L26:
	mov	x0, #0
.L27:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_tester_count_total, @function
.size builder_tester_count_total, .-builder_tester_count_total
/* end function builder_tester_count_total */

.text
.balign 16
.globl builder_tester_generate_runner
builder_tester_generate_runner:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_tester_generate_filtered_runner
	ldp	x29, x30, [sp], 16
	ret
.type builder_tester_generate_runner, @function
.size builder_tester_generate_runner, .-builder_tester_generate_runner
/* end function builder_tester_generate_runner */

.text
.balign 16
.globl builder_tester_generate_filtered_runner
builder_tester_generate_filtered_runner:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	bl	builder_tester_filter_test_modules
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	builder_tester_count_total
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_tester_gen_imports
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	bl	builder_tester_gen_module_runners
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	builder_tester_gen_main_module_calls
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str99
	add	x0, x0, #:lo12:str99
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str101
	add	x1, x1, #:lo12:str101
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str103
	add	x1, x1, #:lo12:str103
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str105
	add	x1, x1, #:lo12:str105
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str107
	add	x1, x1, #:lo12:str107
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str109
	add	x1, x1, #:lo12:str109
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str111
	add	x1, x1, #:lo12:str111
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str113
	add	x1, x1, #:lo12:str113
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str115
	add	x1, x1, #:lo12:str115
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str117
	add	x1, x1, #:lo12:str117
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str119
	add	x1, x1, #:lo12:str119
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str121
	add	x1, x1, #:lo12:str121
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str123
	add	x1, x1, #:lo12:str123
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str125
	add	x1, x1, #:lo12:str125
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str127
	add	x1, x1, #:lo12:str127
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str129
	add	x1, x1, #:lo12:str129
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str131
	add	x1, x1, #:lo12:str131
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str133
	add	x1, x1, #:lo12:str133
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str135
	add	x1, x1, #:lo12:str135
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str137
	add	x1, x1, #:lo12:str137
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str139
	add	x1, x1, #:lo12:str139
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str141
	add	x1, x1, #:lo12:str141
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str143
	add	x1, x1, #:lo12:str143
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str145
	add	x1, x1, #:lo12:str145
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str147
	add	x1, x1, #:lo12:str147
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str149
	add	x1, x1, #:lo12:str149
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str151
	add	x1, x1, #:lo12:str151
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str153
	add	x1, x1, #:lo12:str153
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str155
	add	x1, x1, #:lo12:str155
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str157
	add	x1, x1, #:lo12:str157
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str159
	add	x1, x1, #:lo12:str159
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str161
	add	x1, x1, #:lo12:str161
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str163
	add	x1, x1, #:lo12:str163
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str165
	add	x1, x1, #:lo12:str165
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str167
	add	x1, x1, #:lo12:str167
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str169
	add	x1, x1, #:lo12:str169
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str171
	add	x1, x1, #:lo12:str171
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str173
	add	x1, x1, #:lo12:str173
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str175
	add	x1, x1, #:lo12:str175
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str177
	add	x1, x1, #:lo12:str177
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str179
	add	x1, x1, #:lo12:str179
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str181
	add	x1, x1, #:lo12:str181
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str183
	add	x1, x1, #:lo12:str183
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str185
	add	x1, x1, #:lo12:str185
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str187
	add	x1, x1, #:lo12:str187
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str189
	add	x1, x1, #:lo12:str189
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str191
	add	x1, x1, #:lo12:str191
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str193
	add	x1, x1, #:lo12:str193
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str195
	add	x1, x1, #:lo12:str195
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str197
	add	x1, x1, #:lo12:str197
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str199
	add	x1, x1, #:lo12:str199
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str201
	add	x1, x1, #:lo12:str201
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str203
	add	x1, x1, #:lo12:str203
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str205
	add	x1, x1, #:lo12:str205
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str207
	add	x1, x1, #:lo12:str207
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str209
	add	x1, x1, #:lo12:str209
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str211
	add	x1, x1, #:lo12:str211
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str213
	add	x1, x1, #:lo12:str213
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str215
	add	x1, x1, #:lo12:str215
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str217
	add	x1, x1, #:lo12:str217
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str219
	add	x1, x1, #:lo12:str219
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str221
	add	x1, x1, #:lo12:str221
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str223
	add	x1, x1, #:lo12:str223
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str225
	add	x1, x1, #:lo12:str225
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str227
	add	x1, x1, #:lo12:str227
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str229
	add	x1, x1, #:lo12:str229
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str231
	add	x1, x1, #:lo12:str231
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str233
	add	x1, x1, #:lo12:str233
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str235
	add	x1, x1, #:lo12:str235
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str237
	add	x1, x1, #:lo12:str237
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str239
	add	x1, x1, #:lo12:str239
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str241
	add	x1, x1, #:lo12:str241
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str243
	add	x1, x1, #:lo12:str243
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str245
	add	x1, x1, #:lo12:str245
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str247
	add	x1, x1, #:lo12:str247
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str249
	add	x1, x1, #:lo12:str249
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str251
	add	x1, x1, #:lo12:str251
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str253
	add	x1, x1, #:lo12:str253
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str255
	add	x1, x1, #:lo12:str255
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str257
	add	x1, x1, #:lo12:str257
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str259
	add	x1, x1, #:lo12:str259
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str262
	add	x1, x1, #:lo12:str262
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str264
	add	x1, x1, #:lo12:str264
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str266
	add	x1, x1, #:lo12:str266
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str268
	add	x1, x1, #:lo12:str268
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	adrp	x1, str271
	add	x1, x1, #:lo12:str271
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	adrp	x1, str275
	add	x1, x1, #:lo12:str275
	bl	__rt_str_concat
	adrp	x1, str277
	add	x1, x1, #:lo12:str277
	bl	__rt_str_concat
	adrp	x1, str279
	add	x1, x1, #:lo12:str279
	bl	__rt_str_concat
	adrp	x1, str281
	add	x1, x1, #:lo12:str281
	bl	__rt_str_concat
	adrp	x1, str283
	add	x1, x1, #:lo12:str283
	bl	__rt_str_concat
	adrp	x1, str285
	add	x1, x1, #:lo12:str285
	bl	__rt_str_concat
	adrp	x1, str287
	add	x1, x1, #:lo12:str287
	bl	__rt_str_concat
	adrp	x1, str289
	add	x1, x1, #:lo12:str289
	bl	__rt_str_concat
	adrp	x1, str291
	add	x1, x1, #:lo12:str291
	bl	__rt_str_concat
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_tester_generate_filtered_runner, @function
.size builder_tester_generate_filtered_runner, .-builder_tester_generate_filtered_runner
/* end function builder_tester_generate_filtered_runner */

.text
.balign 16
builder_tester_filter_test_modules:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L34
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	builder_tester_filter_modules_loop
.L34:
	ldp	x29, x30, [sp], 16
	ret
.type builder_tester_filter_test_modules, @function
.size builder_tester_filter_test_modules, .-builder_tester_filter_test_modules
/* end function builder_tester_filter_test_modules */

.text
.balign 16
builder_tester_filter_modules_loop:
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
	beq	.L40
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
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	mov	x2, x24
	mov	x19, x0
	mov	x0, x23
	bl	builder_tester_filter_fns
	mov	x22, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x22
	bl	donna_list_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L38
	mov	x21, x0
	mov	x0, #16
	bl	malloc
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
	bl	malloc
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
	bl	builder_tester_filter_modules_loop
	str	x0, [x19]
	b	.L42
.L38:
	mov	x1, x24
	mov	x2, x20
	bl	builder_tester_filter_modules_loop
	str	x0, [x19]
	b	.L42
.L40:
	mov	x0, x20
	bl	donna_list_reverse
.L42:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_tester_filter_modules_loop, @function
.size builder_tester_filter_modules_loop, .-builder_tester_filter_modules_loop
/* end function builder_tester_filter_modules_loop */

.text
.balign 16
builder_tester_filter_fns:
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
	beq	.L48
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
	bl	builder_tester_matches_filters
	mov	x2, x23
	mov	x1, x22
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x3, #1
	beq	.L46
	mov	x3, x20
	mov	x24, x2
	mov	x23, x1
	bl	builder_tester_filter_fns
	str	x0, [x19]
	b	.L50
.L46:
	mov	x23, x1
	mov	x24, x2
	mov	x22, x0
	mov	x0, #24
	bl	malloc
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
	bl	builder_tester_filter_fns
	str	x0, [x19]
	b	.L50
.L48:
	mov	x0, x20
	bl	donna_list_reverse
.L50:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_tester_filter_fns, @function
.size builder_tester_filter_fns, .-builder_tester_filter_fns
/* end function builder_tester_filter_fns */

.text
.balign 16
builder_tester_matches_filters:
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
	adrp	x1, str357
	add	x1, x1, #:lo12:str357
	mov	x19, x0
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	__rt_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x22, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	.L64
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x20, x1
	bl	builder_tester_contains_text
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L62
	mov	x21, x1
	mov	x20, x0
	mov	x0, x22
	bl	builder_tester_contains_text
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	.L59
	mov	x21, x0
	bl	builder_tester_contains_text
	mov	x2, x23
	mov	x1, x22
	mov	x3, x0
	mov	x0, x21
	mov	x4, #16
	sub	sp, sp, x4
	mov	x21, sp
	cmp	x3, #1
	beq	.L56
	bl	builder_tester_matches_filters
	str	x0, [x21]
	b	.L58
.L56:
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #1
.L58:
	str	x0, [x20]
	b	.L61
.L59:
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #1
.L61:
	str	x0, [x19]
	b	.L65
.L62:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L65
.L64:
	mov	x0, #0
.L65:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_tester_matches_filters, @function
.size builder_tester_matches_filters, .-builder_tester_matches_filters
/* end function builder_tester_matches_filters */

.text
.balign 16
builder_tester_contains_text:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x20
	bl	donna_string_length
	mov	x1, x20
	mov	x21, x0
	mov	x0, x19
	cmp	x21, #0
	mov	x20, x1
	cset	x1, eq
	cmp	x1, #1
	beq	.L68
	mov	x19, x0
	bl	donna_string_length
	mov	x3, x21
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x4, #0
	bl	builder_tester_contains_text_from
	b	.L69
.L68:
	mov	x0, #0
.L69:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_tester_contains_text, @function
.size builder_tester_contains_text, .-builder_tester_contains_text
/* end function builder_tester_contains_text */

.text
.balign 16
builder_tester_contains_text_from:
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
	beq	.L75
	mov	x21, x2
	mov	x2, x22
	mov	x20, x1
	mov	x1, x23
	mov	x19, x0
	bl	donna_string_slice
	mov	x1, x20
	mov	x20, x1
	bl	donna_string_equal
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
	beq	.L73
	mov	x5, #1
	add	x4, x4, x5
	bl	builder_tester_contains_text_from
	str	x0, [x19]
	b	.L76
.L73:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L76
.L75:
	mov	x0, #0
.L76:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_tester_contains_text_from, @function
.size builder_tester_contains_text_from, .-builder_tester_contains_text_from
/* end function builder_tester_contains_text_from */

.text
.balign 16
builder_tester_gen_imports:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L79
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x19, x0
	adrp	x0, str436
	add	x0, x0, #:lo12:str436
	bl	__rt_str_concat
	adrp	x1, str438
	add	x1, x1, #:lo12:str438
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_tester_gen_imports
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L80
.L79:
	adrp	x0, str427
	add	x0, x0, #:lo12:str427
.L80:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_tester_gen_imports, @function
.size builder_tester_gen_imports, .-builder_tester_gen_imports
/* end function builder_tester_gen_imports */

.text
.balign 16
builder_tester_gen_call_lines:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L83
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
	bl	builder_tester_gen_mod_calls
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_tester_gen_call_lines
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L84
.L83:
	adrp	x0, str449
	add	x0, x0, #:lo12:str449
.L84:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_tester_gen_call_lines, @function
.size builder_tester_gen_call_lines, .-builder_tester_gen_call_lines
/* end function builder_tester_gen_call_lines */

.text
.balign 16
builder_tester_gen_module_runners:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L87
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
	adrp	x0, str477
	add	x0, x0, #:lo12:str477
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str479
	add	x1, x1, #:lo12:str479
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str481
	add	x1, x1, #:lo12:str481
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str483
	add	x1, x1, #:lo12:str483
	bl	__rt_str_concat
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	builder_tester_gen_mod_calls
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	adrp	x1, str487
	add	x1, x1, #:lo12:str487
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_tester_gen_module_runners
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L88
.L87:
	adrp	x0, str468
	add	x0, x0, #:lo12:str468
.L88:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_tester_gen_module_runners, @function
.size builder_tester_gen_module_runners, .-builder_tester_gen_module_runners
/* end function builder_tester_gen_module_runners */

.text
.balign 16
builder_tester_gen_main_module_calls:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L91
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x20, x1
	mov	x19, x0
	adrp	x0, str507
	add	x0, x0, #:lo12:str507
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str509
	add	x1, x1, #:lo12:str509
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str512
	add	x1, x1, #:lo12:str512
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str515
	add	x1, x1, #:lo12:str515
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str517
	add	x1, x1, #:lo12:str517
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str520
	add	x1, x1, #:lo12:str520
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str522
	add	x1, x1, #:lo12:str522
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	adrp	x1, str525
	add	x1, x1, #:lo12:str525
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_tester_gen_main_module_calls
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L92
.L91:
	adrp	x0, str498
	add	x0, x0, #:lo12:str498
.L92:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type builder_tester_gen_main_module_calls, @function
.size builder_tester_gen_main_module_calls, .-builder_tester_gen_main_module_calls
/* end function builder_tester_gen_main_module_calls */

.text
.balign 16
builder_tester_gen_mod_calls:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x2, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	.L95
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	adrp	x1, str541
	add	x1, x1, #:lo12:str541
	mov	x19, x0
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str544
	add	x0, x0, #:lo12:str544
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str546
	add	x1, x1, #:lo12:str546
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	mov	x1, x19
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str549
	add	x1, x1, #:lo12:str549
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str552
	add	x1, x1, #:lo12:str552
	bl	__rt_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_tester_gen_mod_calls
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L96
.L95:
	adrp	x0, str536
	add	x0, x0, #:lo12:str536
.L96:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_tester_gen_mod_calls, @function
.size builder_tester_gen_mod_calls, .-builder_tester_gen_mod_calls
/* end function builder_tester_gen_mod_calls */

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
