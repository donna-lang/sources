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
.balign 16
.globl _builder_tester_collect_test_modules
_builder_tester_collect_test_modules:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rsi
	callq _builder_tester_collect_loop
	leave
	ret
/* end function builder_tester_collect_test_modules */

.text
.balign 16
_builder_tester_collect_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %rbx
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb4
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rdi, %r13
	callq _donna_files_basename
	movq %rax, %rdi
	callq _donna_files_drop_extension
	movq %r13, %rdi
	movq %rax, %r14
	callq _donna_files_read
	movq %rax, %rdi
	callq _builder_tester_find_test_fns
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdi, %r12
	movl $16, %edi
	callq _malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq _builder_tester_collect_loop
	jmp Lbb6
Lbb4:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb6:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_collect_loop */

.text
.balign 16
.globl _builder_tester_find_test_fns
_builder_tester_find_test_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _str24(%rip), %rsi
	callq _donna_string_split
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rsi
	callq _builder_tester_collect_fns
	leave
	ret
/* end function builder_tester_find_test_fns */

.text
.balign 16
.globl _builder_tester_collect_invalid_public_test_functions
_builder_tester_collect_invalid_public_test_functions:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rsi
	callq _builder_tester_collect_invalid_public_test_functions_loop
	leave
	ret
/* end function builder_tester_collect_invalid_public_test_functions */

.text
.balign 16
_builder_tester_collect_invalid_public_test_functions_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rax
	movq %rsi, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb13
	movq 8(%rax), %r13
	movq 16(%rax), %rbx
	movq %rdi, %r12
	movq %r13, %rdi
	callq _donna_files_read
	movq %r13, %rsi
	movq %rax, %rdi
	callq _builder_tester_find_invalid_public_test_fns
	movq %rax, %rdi
	movq %r12, %rsi
	callq _donna_list_append
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _builder_tester_collect_invalid_public_test_functions_loop
	jmp Lbb14
Lbb13:
	callq _donna_list_reverse
Lbb14:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_collect_invalid_public_test_functions_loop */

.text
.balign 16
.globl _builder_tester_find_invalid_public_test_fns
_builder_tester_find_invalid_public_test_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	leaq _str44(%rip), %rsi
	callq _donna_string_split
	movq %rbx, %rsi
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rdx
	callq _builder_tester_collect_invalid_fns
	popq %rbx
	leave
	ret
/* end function builder_tester_find_invalid_public_test_fns */

.text
.balign 16
_builder_tester_collect_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r14
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb29
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	leaq _str58(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_starts_with
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb27
	movq %rdi, %r12
	callq _donna_string_length
	movq %r12, %rdi
	movq %rax, %rdx
	subq $7, %rdx
	movl $7, %esi
	callq _donna_string_slice
	movq %rax, %rdi
	leaq _str69(%rip), %rsi
	movq %rdi, %r12
	callq _donna_string_index_of
	movq %r12, %rdi
	movq %rax, %rdx
	cmpq $0, %rdx
	setge %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rax
	jz Lbb24
	movl $0, %esi
	callq _donna_string_slice
	movq %r13, %rdi
	movq %rax, %r15
	leaq _str79(%rip), %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq _donna_string_ends_with
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -16(%rbp)
	cmpq $1, %rax
	jz Lbb22
	movq %r14, %rsi
	callq _builder_tester_collect_fns
	movq %rax, (%r13)
	jmp Lbb23
Lbb22:
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq -16(%rbp), %r13
	movq $1, (%rsi)
	movq %r15, 8(%rsi)
	movq %r14, 16(%rsi)
	callq _builder_tester_collect_fns
	movq %rax, (%r13)
Lbb23:
	movq %rax, (%r12)
	jmp Lbb26
Lbb24:
	movq %r13, %rdi
	movq %r14, %r13
	movq %r13, %rsi
	callq _builder_tester_collect_fns
	movq %rax, (%r12)
Lbb26:
	movq %rax, (%rbx)
	jmp Lbb31
Lbb27:
	movq %r13, %rdi
	movq %r14, %r12
	movq %r12, %rsi
	callq _builder_tester_collect_fns
	movq %rax, (%rbx)
	jmp Lbb31
Lbb29:
	movq %r14, %rdi
	callq _donna_list_reverse
Lbb31:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_collect_fns */

.text
.balign 16
_builder_tester_collect_invalid_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r14
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb45
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rsi, %r15
	leaq _str106(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_starts_with
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb43
	movq %rdi, %r13
	callq _donna_string_length
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	subq $7, %rdx
	movq %rsi, %r13
	movl $7, %esi
	callq _donna_string_slice
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r15
	leaq _str117(%rip), %rsi
	movq %rdi, %r13
	callq _donna_string_index_of
	movq %r13, %rdi
	movq %rax, %rdx
	cmpq $0, %rdx
	setge %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -16(%rbp)
	cmpq $0, %rax
	jz Lbb40
	movl $0, %esi
	callq _donna_string_slice
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rsi, %r13
	leaq _str127(%rip), %rsi
	movq %rdi, %r12
	movq %r13, %rdi
	callq _donna_string_ends_with
	movq %r13, %rsi
	movq %r12, %rdi
	movq -16(%rbp), %r12
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -32(%rbp)
	cmpq $1, %rax
	jz Lbb37
	movq %rsi, %r12
	leaq _str135(%rip), %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq -16(%rbp), %r12
	callq ___rt_str_concat
	movq %r13, %rdi
	movq %rax, -24(%rbp)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq -32(%rbp), %r13
	movq -24(%rbp), %rax
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r14, 16(%rdx)
	callq _builder_tester_collect_invalid_fns
	movq %rax, (%r13)
	jmp Lbb39
Lbb37:
	movq %r15, %rsi
	movq %r14, %rdx
	callq _builder_tester_collect_invalid_fns
	movq %rax, (%r13)
Lbb39:
	movq %rax, (%r12)
	jmp Lbb42
Lbb40:
	movq %r12, %rdi
	movq %r13, %r12
	movq %r14, %r13
	movq %r15, %rsi
	movq %r13, %rdx
	callq _builder_tester_collect_invalid_fns
	movq %rax, (%r12)
Lbb42:
	movq %rax, (%rbx)
	jmp Lbb47
Lbb43:
	movq %r12, %rdi
	movq %r14, %r12
	movq %r15, %rsi
	movq %r12, %rdx
	callq _builder_tester_collect_invalid_fns
	movq %rax, (%rbx)
	jmp Lbb47
Lbb45:
	movq %r14, %rdi
	callq _donna_list_reverse
Lbb47:
	movq %rbp, %rsp
	subq $80, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_collect_invalid_fns */

.text
.balign 16
.globl _builder_tester_count_total
_builder_tester_count_total:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb50
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	callq _donna_list_length
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_tester_count_total
	addq %rbx, %rax
	jmp Lbb51
Lbb50:
	movl $0, %eax
Lbb51:
	popq %rbx
	leave
	ret
/* end function builder_tester_count_total */

.text
.balign 16
.globl _builder_tester_generate_runner
_builder_tester_generate_runner:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rsi
	callq _builder_tester_generate_filtered_runner
	leave
	ret
/* end function builder_tester_generate_runner */

.text
.balign 16
.globl _builder_tester_generate_filtered_runner
_builder_tester_generate_filtered_runner:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	callq _builder_tester_select_test_modules
	movq %rax, %rdi
	movq %rdi, %rbx
	callq _builder_tester_count_total
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r12
	callq _builder_tester_gen_imports
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	callq _builder_tester_gen_module_runners
	movq %r13, %rdi
	movq %rax, %r13
	callq _builder_tester_gen_main_module_calls
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	leaq _str170(%rip), %rdi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str172(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str174(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str176(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str178(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str180(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str182(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str184(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str186(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str188(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str190(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str192(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str194(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str196(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str198(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str200(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str202(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str204(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str206(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str208(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str210(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str212(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str214(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str216(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str218(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str220(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str222(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str224(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str226(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str228(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str230(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str232(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str234(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str236(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str238(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str240(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str242(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str244(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str246(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str248(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str250(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str252(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str254(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str256(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str258(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str260(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str262(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str264(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str266(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str268(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str270(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str272(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str274(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str276(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str278(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str280(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str282(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str284(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str286(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str288(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str290(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str292(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str294(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str296(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str298(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str300(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str302(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str304(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str306(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str308(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str310(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str312(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str314(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str316(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str318(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str320(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str322(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str324(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str326(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str328(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str330(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str333(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str335(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str337(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str339(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str342(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str346(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str348(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str350(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str352(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str354(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str356(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str358(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str360(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str362(%rip), %rsi
	callq ___rt_str_concat
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_generate_filtered_runner */

.text
.balign 16
.globl _builder_tester_select_test_modules
_builder_tester_select_test_modules:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rax
	movq (%rsi), %rcx
	cmpq $0, %rcx
	jz Lbb58
	leaq _donna_nil(%rip), %rdx
	movq %rax, %rdi
	callq _builder_tester_filter_modules_loop
Lbb58:
	leave
	ret
/* end function builder_tester_select_test_modules */

.text
.balign 16
_builder_tester_filter_modules_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb64
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rbx
	movq %rsi, %r15
	movq 8(%rax), %rsi
	leaq _donna_nil(%rip), %rcx
	movq %r15, %rdx
	movq %rdi, %r13
	movq %rbx, %rdi
	callq _builder_tester_filter_fns
	movq %r13, %rdi
	movq %rax, %r14
	movq %rdi, %r13
	movq %r14, %rdi
	callq _donna_list_is_empty
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -16(%rbp)
	cmpq $1, %rax
	jz Lbb62
	movq %rdi, %r13
	movl $16, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rax, (%r13)
	movq %r14, 8(%r13)
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq _builder_tester_filter_modules_loop
	movq %rax, (%rbx)
	jmp Lbb66
Lbb62:
	movq %r13, %rbx
	movq %r15, %rsi
	movq %r12, %rdx
	callq _builder_tester_filter_modules_loop
	movq %rax, (%rbx)
	jmp Lbb66
Lbb64:
	movq %r12, %rdi
	callq _donna_list_reverse
Lbb66:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_filter_modules_loop */

.text
.balign 16
_builder_tester_filter_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r12
	movq (%rsi), %rax
	cmpq $0, %rax
	jz Lbb72
	movq 8(%rsi), %r13
	movq 16(%rsi), %rsi
	movq %rdx, %r15
	movq %rsi, %r14
	movq %r13, %rsi
	movq %rdi, %rbx
	callq _builder_tester_matches_filters
	movq %r15, %rdx
	movq %r14, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -16(%rbp)
	cmpq $1, %rax
	jz Lbb70
	movq %r12, %rcx
	movq %rdx, %r15
	movq %rsi, %r14
	callq _builder_tester_filter_fns
	movq %rax, (%rbx)
	jmp Lbb74
Lbb70:
	movq %rsi, %r14
	movq %rdx, %r15
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %r15, %rdx
	movq %r14, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq -16(%rbp), %rbx
	movq $1, (%rcx)
	movq %r13, 8(%rcx)
	movq %r12, 16(%rcx)
	callq _builder_tester_filter_fns
	movq %rax, (%rbx)
	jmp Lbb74
Lbb72:
	movq %r12, %rdi
	callq _donna_list_reverse
Lbb74:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_filter_fns */

.text
.balign 16
_builder_tester_matches_filters:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r12
	movq %rsi, %r13
	leaq _str428(%rip), %rsi
	movq %rdi, %rbx
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r14
	callq ___rt_str_concat
	movq %r12, %rdx
	movq %rax, %rdi
	movq (%rdx), %rax
	cmpq $0, %rax
	jz Lbb88
	movq 8(%rdx), %rsi
	movq 16(%rdx), %r15
	movq %rsi, %r12
	callq _builder_tester_contains_text
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb86
	movq %rsi, %r13
	movq %rdi, %r12
	movq %r14, %rdi
	callq _builder_tester_contains_text
	movq %r13, %rsi
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb83
	movq %rdi, %r13
	callq _builder_tester_contains_text
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb80
	callq _builder_tester_matches_filters
	movq %rax, (%r13)
	jmp Lbb82
Lbb80:
	movq $1, (%r13)
	movl $1, %eax
Lbb82:
	movq %rax, (%r12)
	jmp Lbb85
Lbb83:
	movq $1, (%r12)
	movl $1, %eax
Lbb85:
	movq %rax, (%rbx)
	jmp Lbb89
Lbb86:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb89
Lbb88:
	movl $0, %eax
Lbb89:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_matches_filters */

.text
.balign 16
_builder_tester_contains_text:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _donna_string_length
	movq %rbx, %rdi
	movq %rax, %r13
	cmpq $0, %r13
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb92
	movq %rdi, %rbx
	callq _donna_string_length
	movq %r13, %rcx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	movl $0, %r8d
	callq _builder_tester_contains_text_from
	jmp Lbb93
Lbb92:
	movl $0, %eax
Lbb93:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_contains_text */

.text
.balign 16
_builder_tester_contains_text_from:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r8, %r15
	movq %rcx, %r14
	movq %r14, %rax
	addq %r15, %rax
	cmpq %rdx, %rax
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb99
	movq %rdx, %r13
	movq %r14, %rdx
	movq %rsi, %r12
	movq %r15, %rsi
	movq %rdi, %rbx
	callq _donna_string_slice
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	callq _donna_string_equal
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb97
	addq $1, %r8
	callq _builder_tester_contains_text_from
	movq %rax, (%rbx)
	jmp Lbb100
Lbb97:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb100
Lbb99:
	movl $0, %eax
Lbb100:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_contains_text_from */

.text
.balign 16
_builder_tester_gen_imports:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb103
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rsi
	movq %rdi, %rbx
	leaq _str507(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str509(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_tester_gen_imports
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb104
Lbb103:
	leaq _str498(%rip), %rax
Lbb104:
	popq %rbx
	leave
	ret
/* end function builder_tester_gen_imports */

.text
.balign 16
_builder_tester_gen_call_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb107
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	movq 8(%rax), %rsi
	callq _builder_tester_gen_mod_calls
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_tester_gen_call_lines
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb108
Lbb107:
	leaq _str520(%rip), %rax
Lbb108:
	popq %rbx
	leave
	ret
/* end function builder_tester_gen_call_lines */

.text
.balign 16
_builder_tester_gen_module_runners:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb111
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq (%rax), %rdi
	movq 8(%rax), %rsi
	movq %rsi, %r13
	movq %rdi, %rsi
	movq %rdi, %r12
	leaq _str548(%rip), %rdi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str550(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str552(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str554(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	callq _builder_tester_gen_mod_calls
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str558(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_tester_gen_module_runners
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb112
Lbb111:
	leaq _str539(%rip), %rax
Lbb112:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_gen_module_runners */

.text
.balign 16
_builder_tester_gen_main_module_calls:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb115
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rsi
	movq %rsi, %r12
	movq %rdi, %rbx
	leaq _str578(%rip), %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str580(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str583(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str586(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str588(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str591(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str593(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str596(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_tester_gen_main_module_calls
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb116
Lbb115:
	leaq _str569(%rip), %rax
Lbb116:
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_gen_main_module_calls */

.text
.balign 16
_builder_tester_gen_mod_calls:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb119
	movq 8(%rax), %rsi
	movq 16(%rax), %r12
	movq %rsi, %r13
	leaq _str612(%rip), %rsi
	movq %rdi, %rbx
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq _str615(%rip), %rdi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str617(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	movq %rbx, %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str620(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str623(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_tester_gen_mod_calls
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb120
Lbb119:
	leaq _str607(%rip), %rax
Lbb120:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_gen_mod_calls */

.text
.balign 16
___rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq _strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq _strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq _malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq _strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

