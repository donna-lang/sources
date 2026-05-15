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
_str44:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str58:
	.ascii "pub fn "
	.byte 0
/* end data */

.data
.balign 8
_str69:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str79:
	.ascii "_test"
	.byte 0
/* end data */

.data
.balign 8
_str106:
	.ascii "pub fn "
	.byte 0
/* end data */

.data
.balign 8
_str117:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str127:
	.ascii "_test"
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str170:
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
_str172:
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
_str174:
	.byte 10
	.ascii "fn digit_char(d: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str176:
	.ascii "  case d:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str178:
	.ascii "    0 -> "
	.byte 34
	.ascii "0"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str180:
	.ascii "    1 -> "
	.byte 34
	.ascii "1"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str182:
	.ascii "    2 -> "
	.byte 34
	.ascii "2"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str184:
	.ascii "    3 -> "
	.byte 34
	.ascii "3"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str186:
	.ascii "    4 -> "
	.byte 34
	.ascii "4"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str188:
	.ascii "    5 -> "
	.byte 34
	.ascii "5"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str190:
	.ascii "    6 -> "
	.byte 34
	.ascii "6"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str192:
	.ascii "    7 -> "
	.byte 34
	.ascii "7"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str194:
	.ascii "    8 -> "
	.byte 34
	.ascii "8"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str196:
	.ascii "    _ -> "
	.byte 34
	.ascii "9"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str198:
	.byte 10
	.ascii "fn pos_int_to_str(n: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str200:
	.ascii "  case n < 10:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str202:
	.ascii "    True  -> digit_char(n)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str204:
	.ascii "    False -> pos_int_to_str(n / 10) <> digit_char(n - n / 10 * 10)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str206:
	.byte 10
	.ascii "fn int_to_str(n: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str208:
	.ascii "  case n < 0:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str210:
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
_str212:
	.ascii "    False -> pos_int_to_str(n)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str214:
	.byte 10
	.ascii "fn two_digits(n: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str216:
	.ascii "  digit_char(n / 10) <> digit_char(n - n / 10 * 10)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str218:
	.byte 10
	.ascii "fn format_us(us: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str220:
	.ascii "  case us <= 0:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str222:
	.ascii "    True -> "
	.byte 34
	.ascii "<1us"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str224:
	.ascii "    False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str226:
	.ascii "      case us < 1000:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str228:
	.ascii "        True -> int_to_str(us) <> "
	.byte 34
	.ascii "us"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str230:
	.ascii "        False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str232:
	.ascii "          case us < 1000000:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str234:
	.ascii "            True ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str236:
	.ascii "              let ms = us / 1000"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str238:
	.ascii "              let frac = (us - ms * 1000) / 10"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str240:
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
_str242:
	.ascii "            False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str244:
	.ascii "              let s = us / 1000000"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str246:
	.ascii "              let frac = (us - s * 1000000) / 10000"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str248:
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
_str250:
	.byte 10
	.ascii "fn reverse_strings(xs: List(String), acc: List(String)) -> List(String):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str252:
	.ascii "  case xs:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str254:
	.ascii "    [] -> acc"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str256:
	.ascii "    [x, ..rest] -> reverse_strings(rest, [x, ..acc])"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str258:
	.byte 10
	.ascii "fn append_strings(xs: List(String), ys: List(String)) -> List(String):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str260:
	.ascii "  case xs:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str262:
	.ascii "    [] -> ys"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str264:
	.ascii "    [x, ..rest] -> [x, ..append_strings(rest, ys)]"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str266:
	.byte 10
	.ascii "fn add_failure(failures: List(String), name: String, result: String) -> List(String):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str268:
	.ascii "  case result == "
	.byte 34
	.byte 34
	.ascii ":"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str270:
	.ascii "    True -> failures"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str272:
	.ascii "    False -> [name, ..failures]"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str274:
	.byte 10
	.ascii "fn print_failure_names(names: List(String)) -> Nil:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str276:
	.ascii "  case names:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str278:
	.ascii "    [] -> Nil"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str280:
	.ascii "    [name, ..rest] ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str282:
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
_str284:
	.ascii "      print_failure_names(rest)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str286:
	.byte 10
	.ascii "fn print_failures(failures: List(String)) -> Nil:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str288:
	.ascii "  case failures:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str290:
	.ascii "    [] -> Nil"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str292:
	.ascii "    _ ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str294:
	.ascii "      echo "
	.byte 34
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str296:
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
_str298:
	.ascii "      print_failure_names(reverse_strings(failures, []))"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str300:
	.byte 10
	.ascii "fn run_test(name: String, result: String, us: Int) -> Int:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str302:
	.ascii "  let duration = format_us(us)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str304:
	.ascii "  case result == "
	.byte 34
	.byte 34
	.ascii ":"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str306:
	.ascii "    True  ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str308:
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
_str310:
	.ascii "      0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str312:
	.ascii "    False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str314:
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
_str316:
	.ascii "      echo result"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str318:
	.ascii "      1"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str320:
	.byte 10
	.ascii "fn run_case(s: Int, failures: List(String), name: String, test_fn: fn() -> String) -> #(Int, List(String)):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str322:
	.ascii "  let t = ffi_now_us()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str324:
	.ascii "  let r = test_fn()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str326:
	.ascii "  let us = ffi_now_us() - t"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str328:
	.ascii "  let failures2 = add_failure(failures, name, r)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str330:
	.ascii "  #(s + run_test(name, r, us), failures2)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str333:
	.byte 10
	.ascii "pub fn main() -> Int:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str335:
	.ascii "  let t0 = ffi_now_us()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str337:
	.ascii "  let s = 0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str339:
	.ascii "  let failures = []"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str342:
	.ascii "  let passed = "
	.byte 0
/* end data */

.data
.balign 8
_str346:
	.ascii " - s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str348:
	.ascii "  let elapsed = ffi_now_us() - t0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str350:
	.ascii "  let ts = format_us(elapsed)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str352:
	.ascii "  case s == 0:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str354:
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
_str356:
	.ascii "    False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str358:
	.ascii "      print_failures(failures)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str360:
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
_str362:
	.ascii "  s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str428:
	.ascii "."
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
	.ascii "import test/"
	.byte 0
/* end data */

.data
.balign 8
_str509:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str520:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str539:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str548:
	.byte 10
	.ascii "fn run_module_"
	.byte 0
/* end data */

.data
.balign 8
_str550:
	.ascii "() -> #(Int, List(String)):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str552:
	.ascii "  let s = 0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str554:
	.ascii "  let failures = []"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str558:
	.ascii "  #(s, failures)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str569:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str578:
	.ascii "  let #(s_"
	.byte 0
/* end data */

.data
.balign 8
_str580:
	.ascii ", failures_"
	.byte 0
/* end data */

.data
.balign 8
_str583:
	.ascii ") = run_module_"
	.byte 0
/* end data */

.data
.balign 8
_str586:
	.ascii "()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str588:
	.ascii "  let s = s + s_"
	.byte 0
/* end data */

.data
.balign 8
_str591:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str593:
	.ascii "  let failures = append_strings(failures_"
	.byte 0
/* end data */

.data
.balign 8
_str596:
	.ascii ", failures)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str607:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str612:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str615:
	.ascii "  let #(s, failures) = run_case(s, failures, "
	.byte 34
	.byte 0
/* end data */

.data
.balign 8
_str617:
	.byte 34
	.ascii ", fn() -> "
	.byte 0
/* end data */

.data
.balign 8
_str620:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str623:
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
.globl _builder_tester_collect_invalid_public_test_functions
_builder_tester_collect_invalid_public_test_functions:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_tester_collect_invalid_public_test_functions_loop
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_tester_collect_invalid_public_test_functions */

.text
.balign 4
_builder_tester_collect_invalid_public_test_functions_loop:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L13
	mov	x2, #8
	add	x2, x1, x2
	ldr	x21, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x20, x0
	mov	x0, x21
	bl	_donna_files_read
	mov	x1, x21
	bl	_builder_tester_find_invalid_public_test_fns
	mov	x1, x20
	bl	_donna_list_append
	mov	x1, x0
	mov	x0, x19
	bl	_builder_tester_collect_invalid_public_test_functions_loop
	b	L14
L13:
	bl	_donna_list_reverse
L14:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_tester_collect_invalid_public_test_functions_loop */

.text
.balign 4
.globl _builder_tester_find_invalid_public_test_fns
_builder_tester_find_invalid_public_test_fns:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	adrp	x1, _str44@page
	add	x1, x1, _str44@pageoff
	bl	_donna_string_split
	mov	x1, x19
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_builder_tester_collect_invalid_fns
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_tester_find_invalid_public_test_fns */

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
	beq	L29
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	adrp	x1, _str58@page
	add	x1, x1, _str58@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	L27
	mov	x20, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x20
	mov	x2, #7
	sub	x2, x1, x2
	mov	x1, #7
	bl	_donna_string_slice
	adrp	x1, _str69@page
	add	x1, x1, _str69@pageoff
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
	beq	L24
	mov	x1, #0
	bl	_donna_string_slice
	mov	x23, x0
	mov	x0, x21
	adrp	x1, _str79@page
	add	x1, x1, _str79@pageoff
	mov	x21, x0
	mov	x0, x23
	bl	_donna_string_ends_with
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	L22
	mov	x1, x22
	bl	_builder_tester_collect_fns
	str	x0, [x21]
	b	L23
L22:
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
L23:
	str	x0, [x20]
	b	L26
L24:
	mov	x0, x21
	mov	x21, x22
	mov	x1, x21
	bl	_builder_tester_collect_fns
	str	x0, [x20]
L26:
	str	x0, [x19]
	b	L31
L27:
	mov	x0, x21
	mov	x20, x22
	mov	x1, x20
	bl	_builder_tester_collect_fns
	str	x0, [x19]
	b	L31
L29:
	mov	x0, x22
	bl	_donna_list_reverse
L31:
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
_builder_tester_collect_invalid_fns:
	hint	#34
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [x29, 72]
	str	x20, [x29, 64]
	str	x21, [x29, 56]
	str	x22, [x29, 48]
	str	x23, [x29, 40]
	str	x24, [x29, 32]
	str	x25, [x29, 24]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x22, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L45
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x21, [x2]
	mov	x23, x1
	adrp	x1, _str106@page
	add	x1, x1, _str106@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	L43
	mov	x20, x0
	bl	_donna_string_length
	mov	x1, x23
	mov	x2, x0
	mov	x0, x20
	mov	x3, #7
	sub	x2, x2, x3
	mov	x20, x1
	mov	x1, #7
	bl	_donna_string_slice
	mov	x1, x20
	mov	x23, x1
	adrp	x1, _str117@page
	add	x1, x1, _str117@pageoff
	mov	x20, x0
	bl	_donna_string_index_of
	mov	x1, x23
	mov	x2, x0
	mov	x0, x20
	cmp	x2, #0
	mov	x25, x1
	cset	x1, ge
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x1, #0
	beq	L40
	mov	x1, #0
	bl	_donna_string_slice
	mov	x1, x0
	mov	x0, x21
	mov	x23, x1
	adrp	x1, _str127@page
	add	x1, x1, _str127@pageoff
	mov	x21, x0
	mov	x0, x23
	bl	_donna_string_ends_with
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	cmp	x2, #1
	beq	L37
	mov	x24, x1
	adrp	x1, _str135@page
	add	x1, x1, _str135@pageoff
	mov	x23, x0
	mov	x0, x25
	bl	___rt_str_concat
	mov	x1, x24
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	mov	x24, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x25
	mov	x2, x0
	mov	x0, x24
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x23, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x22, [x3]
	bl	_builder_tester_collect_invalid_fns
	str	x0, [x21]
	b	L39
L37:
	mov	x1, x25
	mov	x2, x22
	bl	_builder_tester_collect_invalid_fns
	str	x0, [x21]
L39:
	str	x0, [x20]
	b	L42
L40:
	mov	x0, x21
	mov	x21, x22
	mov	x1, x25
	mov	x2, x21
	bl	_builder_tester_collect_invalid_fns
	str	x0, [x20]
L42:
	str	x0, [x19]
	b	L47
L43:
	mov	x0, x21
	mov	x20, x22
	mov	x1, x23
	mov	x2, x20
	bl	_builder_tester_collect_invalid_fns
	str	x0, [x19]
	b	L47
L45:
	mov	x0, x22
	bl	_donna_list_reverse
L47:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 80
	ret
/* end function builder_tester_collect_invalid_fns */

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
	beq	L50
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
	b	L51
L50:
	mov	x0, #0
L51:
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
	adrp	x0, _str170@page
	add	x0, x0, _str170@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str172@page
	add	x1, x1, _str172@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str174@page
	add	x1, x1, _str174@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str176@page
	add	x1, x1, _str176@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str178@page
	add	x1, x1, _str178@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str180@page
	add	x1, x1, _str180@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str182@page
	add	x1, x1, _str182@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str184@page
	add	x1, x1, _str184@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str186@page
	add	x1, x1, _str186@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str188@page
	add	x1, x1, _str188@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str190@page
	add	x1, x1, _str190@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str192@page
	add	x1, x1, _str192@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str194@page
	add	x1, x1, _str194@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str196@page
	add	x1, x1, _str196@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str198@page
	add	x1, x1, _str198@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str200@page
	add	x1, x1, _str200@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str202@page
	add	x1, x1, _str202@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str204@page
	add	x1, x1, _str204@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str206@page
	add	x1, x1, _str206@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str208@page
	add	x1, x1, _str208@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str210@page
	add	x1, x1, _str210@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str212@page
	add	x1, x1, _str212@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str214@page
	add	x1, x1, _str214@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str216@page
	add	x1, x1, _str216@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str218@page
	add	x1, x1, _str218@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str220@page
	add	x1, x1, _str220@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str222@page
	add	x1, x1, _str222@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str224@page
	add	x1, x1, _str224@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str226@page
	add	x1, x1, _str226@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str228@page
	add	x1, x1, _str228@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str230@page
	add	x1, x1, _str230@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str232@page
	add	x1, x1, _str232@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str234@page
	add	x1, x1, _str234@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str236@page
	add	x1, x1, _str236@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str238@page
	add	x1, x1, _str238@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str240@page
	add	x1, x1, _str240@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str242@page
	add	x1, x1, _str242@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str244@page
	add	x1, x1, _str244@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str246@page
	add	x1, x1, _str246@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str248@page
	add	x1, x1, _str248@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str250@page
	add	x1, x1, _str250@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str252@page
	add	x1, x1, _str252@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str254@page
	add	x1, x1, _str254@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str256@page
	add	x1, x1, _str256@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str258@page
	add	x1, x1, _str258@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str260@page
	add	x1, x1, _str260@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str262@page
	add	x1, x1, _str262@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str264@page
	add	x1, x1, _str264@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str266@page
	add	x1, x1, _str266@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str268@page
	add	x1, x1, _str268@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str270@page
	add	x1, x1, _str270@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str272@page
	add	x1, x1, _str272@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str274@page
	add	x1, x1, _str274@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str276@page
	add	x1, x1, _str276@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str278@page
	add	x1, x1, _str278@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str280@page
	add	x1, x1, _str280@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str282@page
	add	x1, x1, _str282@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str284@page
	add	x1, x1, _str284@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str286@page
	add	x1, x1, _str286@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str288@page
	add	x1, x1, _str288@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str290@page
	add	x1, x1, _str290@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str292@page
	add	x1, x1, _str292@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str294@page
	add	x1, x1, _str294@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str296@page
	add	x1, x1, _str296@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str298@page
	add	x1, x1, _str298@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str300@page
	add	x1, x1, _str300@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str302@page
	add	x1, x1, _str302@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str304@page
	add	x1, x1, _str304@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str306@page
	add	x1, x1, _str306@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str308@page
	add	x1, x1, _str308@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str310@page
	add	x1, x1, _str310@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str312@page
	add	x1, x1, _str312@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str314@page
	add	x1, x1, _str314@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str316@page
	add	x1, x1, _str316@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str318@page
	add	x1, x1, _str318@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str320@page
	add	x1, x1, _str320@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str322@page
	add	x1, x1, _str322@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str324@page
	add	x1, x1, _str324@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str326@page
	add	x1, x1, _str326@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str328@page
	add	x1, x1, _str328@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str330@page
	add	x1, x1, _str330@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str333@page
	add	x1, x1, _str333@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str335@page
	add	x1, x1, _str335@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str337@page
	add	x1, x1, _str337@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str339@page
	add	x1, x1, _str339@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	___rt_str_concat
	adrp	x1, _str342@page
	add	x1, x1, _str342@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	adrp	x1, _str346@page
	add	x1, x1, _str346@pageoff
	bl	___rt_str_concat
	adrp	x1, _str348@page
	add	x1, x1, _str348@pageoff
	bl	___rt_str_concat
	adrp	x1, _str350@page
	add	x1, x1, _str350@pageoff
	bl	___rt_str_concat
	adrp	x1, _str352@page
	add	x1, x1, _str352@pageoff
	bl	___rt_str_concat
	adrp	x1, _str354@page
	add	x1, x1, _str354@pageoff
	bl	___rt_str_concat
	adrp	x1, _str356@page
	add	x1, x1, _str356@pageoff
	bl	___rt_str_concat
	adrp	x1, _str358@page
	add	x1, x1, _str358@pageoff
	bl	___rt_str_concat
	adrp	x1, _str360@page
	add	x1, x1, _str360@pageoff
	bl	___rt_str_concat
	adrp	x1, _str362@page
	add	x1, x1, _str362@pageoff
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
	beq	L58
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_builder_tester_filter_modules_loop
L58:
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
	beq	L64
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
	beq	L62
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
	b	L66
L62:
	mov	x1, x24
	mov	x2, x20
	bl	_builder_tester_filter_modules_loop
	str	x0, [x19]
	b	L66
L64:
	mov	x0, x20
	bl	_donna_list_reverse
L66:
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
	beq	L72
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
	beq	L70
	mov	x3, x20
	mov	x24, x2
	mov	x23, x1
	bl	_builder_tester_filter_fns
	str	x0, [x19]
	b	L74
L70:
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
	b	L74
L72:
	mov	x0, x20
	bl	_donna_list_reverse
L74:
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
	adrp	x1, _str428@page
	add	x1, x1, _str428@pageoff
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
	beq	L88
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
	beq	L86
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
	beq	L83
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
	beq	L80
	bl	_builder_tester_matches_filters
	str	x0, [x21]
	b	L82
L80:
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #1
L82:
	str	x0, [x20]
	b	L85
L83:
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #1
L85:
	str	x0, [x19]
	b	L89
L86:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L89
L88:
	mov	x0, #0
L89:
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
	beq	L92
	mov	x19, x0
	bl	_donna_string_length
	mov	x3, x21
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x4, #0
	bl	_builder_tester_contains_text_from
	b	L93
L92:
	mov	x0, #0
L93:
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
	beq	L99
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
	beq	L97
	mov	x5, #1
	add	x4, x4, x5
	bl	_builder_tester_contains_text_from
	str	x0, [x19]
	b	L100
L97:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L100
L99:
	mov	x0, #0
L100:
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
	beq	L103
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x19, x0
	adrp	x0, _str507@page
	add	x0, x0, _str507@pageoff
	bl	___rt_str_concat
	adrp	x1, _str509@page
	add	x1, x1, _str509@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_tester_gen_imports
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L104
L103:
	adrp	x0, _str498@page
	add	x0, x0, _str498@pageoff
L104:
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
	beq	L107
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
	b	L108
L107:
	adrp	x0, _str520@page
	add	x0, x0, _str520@pageoff
L108:
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
	beq	L111
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
	adrp	x0, _str548@page
	add	x0, x0, _str548@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str550@page
	add	x1, x1, _str550@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str552@page
	add	x1, x1, _str552@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str554@page
	add	x1, x1, _str554@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_builder_tester_gen_mod_calls
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	adrp	x1, _str558@page
	add	x1, x1, _str558@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_tester_gen_module_runners
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L112
L111:
	adrp	x0, _str539@page
	add	x0, x0, _str539@pageoff
L112:
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
	beq	L115
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x20, x1
	mov	x19, x0
	adrp	x0, _str578@page
	add	x0, x0, _str578@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str580@page
	add	x1, x1, _str580@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str583@page
	add	x1, x1, _str583@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str586@page
	add	x1, x1, _str586@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str588@page
	add	x1, x1, _str588@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str591@page
	add	x1, x1, _str591@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str593@page
	add	x1, x1, _str593@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	___rt_str_concat
	adrp	x1, _str596@page
	add	x1, x1, _str596@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_tester_gen_main_module_calls
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L116
L115:
	adrp	x0, _str569@page
	add	x0, x0, _str569@pageoff
L116:
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
	beq	L119
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	adrp	x1, _str612@page
	add	x1, x1, _str612@pageoff
	mov	x19, x0
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, _str615@page
	add	x0, x0, _str615@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str617@page
	add	x1, x1, _str617@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	mov	x1, x19
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str620@page
	add	x1, x1, _str620@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str623@page
	add	x1, x1, _str623@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_tester_gen_mod_calls
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L120
L119:
	adrp	x0, _str607@page
	add	x0, x0, _str607@pageoff
L120:
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

