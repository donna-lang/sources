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
str44:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str58:
	.ascii "pub fn "
	.byte 0
/* end data */

.data
.balign 8
str69:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str79:
	.ascii "_test"
	.byte 0
/* end data */

.data
.balign 8
str106:
	.ascii "pub fn "
	.byte 0
/* end data */

.data
.balign 8
str117:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str127:
	.ascii "_test"
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str170:
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
str172:
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
str174:
	.byte 10
	.ascii "fn digit_char(d: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str176:
	.ascii "  case d:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str178:
	.ascii "    0 -> "
	.byte 34
	.ascii "0"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str180:
	.ascii "    1 -> "
	.byte 34
	.ascii "1"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str182:
	.ascii "    2 -> "
	.byte 34
	.ascii "2"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str184:
	.ascii "    3 -> "
	.byte 34
	.ascii "3"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str186:
	.ascii "    4 -> "
	.byte 34
	.ascii "4"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str188:
	.ascii "    5 -> "
	.byte 34
	.ascii "5"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str190:
	.ascii "    6 -> "
	.byte 34
	.ascii "6"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str192:
	.ascii "    7 -> "
	.byte 34
	.ascii "7"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str194:
	.ascii "    8 -> "
	.byte 34
	.ascii "8"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str196:
	.ascii "    _ -> "
	.byte 34
	.ascii "9"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str198:
	.byte 10
	.ascii "fn pos_int_to_str(n: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str200:
	.ascii "  case n < 10:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str202:
	.ascii "    True  -> digit_char(n)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str204:
	.ascii "    False -> pos_int_to_str(n / 10) <> digit_char(n - n / 10 * 10)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str206:
	.byte 10
	.ascii "fn int_to_str(n: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str208:
	.ascii "  case n < 0:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str210:
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
str212:
	.ascii "    False -> pos_int_to_str(n)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str214:
	.byte 10
	.ascii "fn two_digits(n: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str216:
	.ascii "  digit_char(n / 10) <> digit_char(n - n / 10 * 10)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str218:
	.byte 10
	.ascii "fn format_us(us: Int) -> String:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str220:
	.ascii "  case us <= 0:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str222:
	.ascii "    True -> "
	.byte 34
	.ascii "<1us"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str224:
	.ascii "    False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str226:
	.ascii "      case us < 1000:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str228:
	.ascii "        True -> int_to_str(us) <> "
	.byte 34
	.ascii "us"
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str230:
	.ascii "        False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str232:
	.ascii "          case us < 1000000:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str234:
	.ascii "            True ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str236:
	.ascii "              let ms = us / 1000"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str238:
	.ascii "              let frac = (us - ms * 1000) / 10"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str240:
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
str242:
	.ascii "            False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str244:
	.ascii "              let s = us / 1000000"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str246:
	.ascii "              let frac = (us - s * 1000000) / 10000"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str248:
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
str250:
	.byte 10
	.ascii "fn reverse_strings(xs: List(String), acc: List(String)) -> List(String):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str252:
	.ascii "  case xs:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str254:
	.ascii "    [] -> acc"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str256:
	.ascii "    [x, ..rest] -> reverse_strings(rest, [x, ..acc])"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str258:
	.byte 10
	.ascii "fn append_strings(xs: List(String), ys: List(String)) -> List(String):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str260:
	.ascii "  case xs:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str262:
	.ascii "    [] -> ys"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str264:
	.ascii "    [x, ..rest] -> [x, ..append_strings(rest, ys)]"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str266:
	.byte 10
	.ascii "fn add_failure(failures: List(String), name: String, result: String) -> List(String):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str268:
	.ascii "  case result == "
	.byte 34
	.byte 34
	.ascii ":"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str270:
	.ascii "    True -> failures"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str272:
	.ascii "    False -> [name, ..failures]"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str274:
	.byte 10
	.ascii "fn print_failure_names(names: List(String)) -> Nil:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str276:
	.ascii "  case names:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str278:
	.ascii "    [] -> Nil"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str280:
	.ascii "    [name, ..rest] ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str282:
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
str284:
	.ascii "      print_failure_names(rest)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str286:
	.byte 10
	.ascii "fn print_failures(failures: List(String)) -> Nil:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str288:
	.ascii "  case failures:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str290:
	.ascii "    [] -> Nil"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str292:
	.ascii "    _ ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str294:
	.ascii "      echo "
	.byte 34
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str296:
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
str298:
	.ascii "      print_failure_names(reverse_strings(failures, []))"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str300:
	.byte 10
	.ascii "fn run_test(name: String, result: String, us: Int) -> Int:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str302:
	.ascii "  let duration = format_us(us)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str304:
	.ascii "  case result == "
	.byte 34
	.byte 34
	.ascii ":"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str306:
	.ascii "    True  ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str308:
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
str310:
	.ascii "      0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str312:
	.ascii "    False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str314:
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
str316:
	.ascii "      echo result"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str318:
	.ascii "      1"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str320:
	.byte 10
	.ascii "fn run_case(s: Int, failures: List(String), name: String, test_fn: fn() -> String) -> #(Int, List(String)):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str322:
	.ascii "  let t = ffi_now_us()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str324:
	.ascii "  let r = test_fn()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str326:
	.ascii "  let us = ffi_now_us() - t"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str328:
	.ascii "  let failures2 = add_failure(failures, name, r)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str330:
	.ascii "  #(s + run_test(name, r, us), failures2)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str333:
	.byte 10
	.ascii "pub fn main() -> Int:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str335:
	.ascii "  let t0 = ffi_now_us()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str337:
	.ascii "  let s = 0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str339:
	.ascii "  let failures = []"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str342:
	.ascii "  let passed = "
	.byte 0
/* end data */

.data
.balign 8
str346:
	.ascii " - s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str348:
	.ascii "  let elapsed = ffi_now_us() - t0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str350:
	.ascii "  let ts = format_us(elapsed)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str352:
	.ascii "  case s == 0:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str354:
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
str356:
	.ascii "    False ->"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str358:
	.ascii "      print_failures(failures)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str360:
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
str362:
	.ascii "  s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str428:
	.ascii "."
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
	.ascii "import test/"
	.byte 0
/* end data */

.data
.balign 8
str509:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str520:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str539:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str548:
	.byte 10
	.ascii "fn run_module_"
	.byte 0
/* end data */

.data
.balign 8
str550:
	.ascii "() -> #(Int, List(String)):"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str552:
	.ascii "  let s = 0"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str554:
	.ascii "  let failures = []"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str558:
	.ascii "  #(s, failures)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str569:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str578:
	.ascii "  let #(s_"
	.byte 0
/* end data */

.data
.balign 8
str580:
	.ascii ", failures_"
	.byte 0
/* end data */

.data
.balign 8
str583:
	.ascii ") = run_module_"
	.byte 0
/* end data */

.data
.balign 8
str586:
	.ascii "()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str588:
	.ascii "  let s = s + s_"
	.byte 0
/* end data */

.data
.balign 8
str591:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str593:
	.ascii "  let failures = append_strings(failures_"
	.byte 0
/* end data */

.data
.balign 8
str596:
	.ascii ", failures)"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str607:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str612:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str615:
	.ascii "  let #(s, failures) = run_case(s, failures, "
	.byte 34
	.byte 0
/* end data */

.data
.balign 8
str617:
	.byte 34
	.ascii ", fn() -> "
	.byte 0
/* end data */

.data
.balign 8
str620:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str623:
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
.globl builder_tester_collect_invalid_public_test_functions
builder_tester_collect_invalid_public_test_functions:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_tester_collect_invalid_public_test_functions_loop
	ldp	x29, x30, [sp], 16
	ret
.type builder_tester_collect_invalid_public_test_functions, @function
.size builder_tester_collect_invalid_public_test_functions, .-builder_tester_collect_invalid_public_test_functions
/* end function builder_tester_collect_invalid_public_test_functions */

.text
.balign 16
builder_tester_collect_invalid_public_test_functions_loop:
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
	beq	.L13
	mov	x2, #8
	add	x2, x1, x2
	ldr	x21, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x20, x0
	mov	x0, x21
	bl	donna_files_read
	mov	x1, x21
	bl	builder_tester_find_invalid_public_test_fns
	mov	x1, x20
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x19
	bl	builder_tester_collect_invalid_public_test_functions_loop
	b	.L14
.L13:
	bl	donna_list_reverse
.L14:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_tester_collect_invalid_public_test_functions_loop, @function
.size builder_tester_collect_invalid_public_test_functions_loop, .-builder_tester_collect_invalid_public_test_functions_loop
/* end function builder_tester_collect_invalid_public_test_functions_loop */

.text
.balign 16
.globl builder_tester_find_invalid_public_test_fns
builder_tester_find_invalid_public_test_fns:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	adrp	x1, str44
	add	x1, x1, #:lo12:str44
	bl	donna_string_split
	mov	x1, x19
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	builder_tester_collect_invalid_fns
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_tester_find_invalid_public_test_fns, @function
.size builder_tester_find_invalid_public_test_fns, .-builder_tester_find_invalid_public_test_fns
/* end function builder_tester_find_invalid_public_test_fns */

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
	beq	.L29
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	adrp	x1, str58
	add	x1, x1, #:lo12:str58
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	.L27
	mov	x20, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x20
	mov	x2, #7
	sub	x2, x1, x2
	mov	x1, #7
	bl	donna_string_slice
	adrp	x1, str69
	add	x1, x1, #:lo12:str69
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
	beq	.L24
	mov	x1, #0
	bl	donna_string_slice
	mov	x23, x0
	mov	x0, x21
	adrp	x1, str79
	add	x1, x1, #:lo12:str79
	mov	x21, x0
	mov	x0, x23
	bl	donna_string_ends_with
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	.L22
	mov	x1, x22
	bl	builder_tester_collect_fns
	str	x0, [x21]
	b	.L23
.L22:
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
.L23:
	str	x0, [x20]
	b	.L26
.L24:
	mov	x0, x21
	mov	x21, x22
	mov	x1, x21
	bl	builder_tester_collect_fns
	str	x0, [x20]
.L26:
	str	x0, [x19]
	b	.L31
.L27:
	mov	x0, x21
	mov	x20, x22
	mov	x1, x20
	bl	builder_tester_collect_fns
	str	x0, [x19]
	b	.L31
.L29:
	mov	x0, x22
	bl	donna_list_reverse
.L31:
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
builder_tester_collect_invalid_fns:
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
	beq	.L45
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x21, [x2]
	mov	x23, x1
	adrp	x1, str106
	add	x1, x1, #:lo12:str106
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	.L43
	mov	x20, x0
	bl	donna_string_length
	mov	x1, x23
	mov	x2, x0
	mov	x0, x20
	mov	x3, #7
	sub	x2, x2, x3
	mov	x20, x1
	mov	x1, #7
	bl	donna_string_slice
	mov	x1, x20
	mov	x23, x1
	adrp	x1, str117
	add	x1, x1, #:lo12:str117
	mov	x20, x0
	bl	donna_string_index_of
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
	beq	.L40
	mov	x1, #0
	bl	donna_string_slice
	mov	x1, x0
	mov	x0, x21
	mov	x23, x1
	adrp	x1, str127
	add	x1, x1, #:lo12:str127
	mov	x21, x0
	mov	x0, x23
	bl	donna_string_ends_with
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	cmp	x2, #1
	beq	.L37
	mov	x24, x1
	adrp	x1, str135
	add	x1, x1, #:lo12:str135
	mov	x23, x0
	mov	x0, x25
	bl	__rt_str_concat
	mov	x1, x24
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	mov	x24, x0
	mov	x0, #24
	bl	malloc
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
	bl	builder_tester_collect_invalid_fns
	str	x0, [x21]
	b	.L39
.L37:
	mov	x1, x25
	mov	x2, x22
	bl	builder_tester_collect_invalid_fns
	str	x0, [x21]
.L39:
	str	x0, [x20]
	b	.L42
.L40:
	mov	x0, x21
	mov	x21, x22
	mov	x1, x25
	mov	x2, x21
	bl	builder_tester_collect_invalid_fns
	str	x0, [x20]
.L42:
	str	x0, [x19]
	b	.L47
.L43:
	mov	x0, x21
	mov	x20, x22
	mov	x1, x23
	mov	x2, x20
	bl	builder_tester_collect_invalid_fns
	str	x0, [x19]
	b	.L47
.L45:
	mov	x0, x22
	bl	donna_list_reverse
.L47:
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
.type builder_tester_collect_invalid_fns, @function
.size builder_tester_collect_invalid_fns, .-builder_tester_collect_invalid_fns
/* end function builder_tester_collect_invalid_fns */

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
	beq	.L50
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
	b	.L51
.L50:
	mov	x0, #0
.L51:
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
	adrp	x0, str170
	add	x0, x0, #:lo12:str170
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str172
	add	x1, x1, #:lo12:str172
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str174
	add	x1, x1, #:lo12:str174
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str176
	add	x1, x1, #:lo12:str176
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str178
	add	x1, x1, #:lo12:str178
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str180
	add	x1, x1, #:lo12:str180
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str182
	add	x1, x1, #:lo12:str182
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str184
	add	x1, x1, #:lo12:str184
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str186
	add	x1, x1, #:lo12:str186
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str188
	add	x1, x1, #:lo12:str188
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str190
	add	x1, x1, #:lo12:str190
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str192
	add	x1, x1, #:lo12:str192
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str194
	add	x1, x1, #:lo12:str194
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str196
	add	x1, x1, #:lo12:str196
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str198
	add	x1, x1, #:lo12:str198
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str200
	add	x1, x1, #:lo12:str200
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str202
	add	x1, x1, #:lo12:str202
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str204
	add	x1, x1, #:lo12:str204
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str206
	add	x1, x1, #:lo12:str206
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str208
	add	x1, x1, #:lo12:str208
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str210
	add	x1, x1, #:lo12:str210
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str212
	add	x1, x1, #:lo12:str212
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str214
	add	x1, x1, #:lo12:str214
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str216
	add	x1, x1, #:lo12:str216
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str218
	add	x1, x1, #:lo12:str218
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str220
	add	x1, x1, #:lo12:str220
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str222
	add	x1, x1, #:lo12:str222
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str224
	add	x1, x1, #:lo12:str224
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str226
	add	x1, x1, #:lo12:str226
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str228
	add	x1, x1, #:lo12:str228
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str230
	add	x1, x1, #:lo12:str230
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str232
	add	x1, x1, #:lo12:str232
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str234
	add	x1, x1, #:lo12:str234
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str236
	add	x1, x1, #:lo12:str236
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str238
	add	x1, x1, #:lo12:str238
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str240
	add	x1, x1, #:lo12:str240
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str242
	add	x1, x1, #:lo12:str242
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str244
	add	x1, x1, #:lo12:str244
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str246
	add	x1, x1, #:lo12:str246
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str248
	add	x1, x1, #:lo12:str248
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str250
	add	x1, x1, #:lo12:str250
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str252
	add	x1, x1, #:lo12:str252
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str254
	add	x1, x1, #:lo12:str254
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str256
	add	x1, x1, #:lo12:str256
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str258
	add	x1, x1, #:lo12:str258
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str260
	add	x1, x1, #:lo12:str260
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str262
	add	x1, x1, #:lo12:str262
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str264
	add	x1, x1, #:lo12:str264
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str266
	add	x1, x1, #:lo12:str266
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str268
	add	x1, x1, #:lo12:str268
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str270
	add	x1, x1, #:lo12:str270
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str272
	add	x1, x1, #:lo12:str272
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str274
	add	x1, x1, #:lo12:str274
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str276
	add	x1, x1, #:lo12:str276
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str278
	add	x1, x1, #:lo12:str278
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str280
	add	x1, x1, #:lo12:str280
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str282
	add	x1, x1, #:lo12:str282
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str284
	add	x1, x1, #:lo12:str284
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str286
	add	x1, x1, #:lo12:str286
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str288
	add	x1, x1, #:lo12:str288
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str290
	add	x1, x1, #:lo12:str290
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str292
	add	x1, x1, #:lo12:str292
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str294
	add	x1, x1, #:lo12:str294
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str296
	add	x1, x1, #:lo12:str296
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str298
	add	x1, x1, #:lo12:str298
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str300
	add	x1, x1, #:lo12:str300
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str302
	add	x1, x1, #:lo12:str302
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str304
	add	x1, x1, #:lo12:str304
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str306
	add	x1, x1, #:lo12:str306
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str308
	add	x1, x1, #:lo12:str308
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str310
	add	x1, x1, #:lo12:str310
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str312
	add	x1, x1, #:lo12:str312
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str314
	add	x1, x1, #:lo12:str314
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str316
	add	x1, x1, #:lo12:str316
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str318
	add	x1, x1, #:lo12:str318
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str320
	add	x1, x1, #:lo12:str320
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str322
	add	x1, x1, #:lo12:str322
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str324
	add	x1, x1, #:lo12:str324
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str326
	add	x1, x1, #:lo12:str326
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str328
	add	x1, x1, #:lo12:str328
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str330
	add	x1, x1, #:lo12:str330
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str333
	add	x1, x1, #:lo12:str333
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str335
	add	x1, x1, #:lo12:str335
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str337
	add	x1, x1, #:lo12:str337
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str339
	add	x1, x1, #:lo12:str339
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	adrp	x1, str342
	add	x1, x1, #:lo12:str342
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	adrp	x1, str346
	add	x1, x1, #:lo12:str346
	bl	__rt_str_concat
	adrp	x1, str348
	add	x1, x1, #:lo12:str348
	bl	__rt_str_concat
	adrp	x1, str350
	add	x1, x1, #:lo12:str350
	bl	__rt_str_concat
	adrp	x1, str352
	add	x1, x1, #:lo12:str352
	bl	__rt_str_concat
	adrp	x1, str354
	add	x1, x1, #:lo12:str354
	bl	__rt_str_concat
	adrp	x1, str356
	add	x1, x1, #:lo12:str356
	bl	__rt_str_concat
	adrp	x1, str358
	add	x1, x1, #:lo12:str358
	bl	__rt_str_concat
	adrp	x1, str360
	add	x1, x1, #:lo12:str360
	bl	__rt_str_concat
	adrp	x1, str362
	add	x1, x1, #:lo12:str362
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
	beq	.L58
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	builder_tester_filter_modules_loop
.L58:
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
	beq	.L64
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
	beq	.L62
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
	b	.L66
.L62:
	mov	x1, x24
	mov	x2, x20
	bl	builder_tester_filter_modules_loop
	str	x0, [x19]
	b	.L66
.L64:
	mov	x0, x20
	bl	donna_list_reverse
.L66:
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
	beq	.L72
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
	beq	.L70
	mov	x3, x20
	mov	x24, x2
	mov	x23, x1
	bl	builder_tester_filter_fns
	str	x0, [x19]
	b	.L74
.L70:
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
	b	.L74
.L72:
	mov	x0, x20
	bl	donna_list_reverse
.L74:
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
	adrp	x1, str428
	add	x1, x1, #:lo12:str428
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
	beq	.L88
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
	beq	.L86
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
	beq	.L83
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
	beq	.L80
	bl	builder_tester_matches_filters
	str	x0, [x21]
	b	.L82
.L80:
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #1
.L82:
	str	x0, [x20]
	b	.L85
.L83:
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #1
.L85:
	str	x0, [x19]
	b	.L89
.L86:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L89
.L88:
	mov	x0, #0
.L89:
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
	beq	.L92
	mov	x19, x0
	bl	donna_string_length
	mov	x3, x21
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x4, #0
	bl	builder_tester_contains_text_from
	b	.L93
.L92:
	mov	x0, #0
.L93:
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
	beq	.L99
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
	beq	.L97
	mov	x5, #1
	add	x4, x4, x5
	bl	builder_tester_contains_text_from
	str	x0, [x19]
	b	.L100
.L97:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L100
.L99:
	mov	x0, #0
.L100:
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
	beq	.L103
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x19, x0
	adrp	x0, str507
	add	x0, x0, #:lo12:str507
	bl	__rt_str_concat
	adrp	x1, str509
	add	x1, x1, #:lo12:str509
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_tester_gen_imports
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L104
.L103:
	adrp	x0, str498
	add	x0, x0, #:lo12:str498
.L104:
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
	beq	.L107
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
	b	.L108
.L107:
	adrp	x0, str520
	add	x0, x0, #:lo12:str520
.L108:
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
	beq	.L111
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
	adrp	x0, str548
	add	x0, x0, #:lo12:str548
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str550
	add	x1, x1, #:lo12:str550
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str552
	add	x1, x1, #:lo12:str552
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str554
	add	x1, x1, #:lo12:str554
	bl	__rt_str_concat
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	builder_tester_gen_mod_calls
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	adrp	x1, str558
	add	x1, x1, #:lo12:str558
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_tester_gen_module_runners
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L112
.L111:
	adrp	x0, str539
	add	x0, x0, #:lo12:str539
.L112:
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
	beq	.L115
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x20, x1
	mov	x19, x0
	adrp	x0, str578
	add	x0, x0, #:lo12:str578
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str580
	add	x1, x1, #:lo12:str580
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str583
	add	x1, x1, #:lo12:str583
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str586
	add	x1, x1, #:lo12:str586
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str588
	add	x1, x1, #:lo12:str588
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str591
	add	x1, x1, #:lo12:str591
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str593
	add	x1, x1, #:lo12:str593
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	adrp	x1, str596
	add	x1, x1, #:lo12:str596
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_tester_gen_main_module_calls
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L116
.L115:
	adrp	x0, str569
	add	x0, x0, #:lo12:str569
.L116:
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
	beq	.L119
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	adrp	x1, str612
	add	x1, x1, #:lo12:str612
	mov	x19, x0
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str615
	add	x0, x0, #:lo12:str615
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str617
	add	x1, x1, #:lo12:str617
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	mov	x1, x19
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str620
	add	x1, x1, #:lo12:str620
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str623
	add	x1, x1, #:lo12:str623
	bl	__rt_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_tester_gen_mod_calls
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L120
.L119:
	adrp	x0, str607
	add	x0, x0, #:lo12:str607
.L120:
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
