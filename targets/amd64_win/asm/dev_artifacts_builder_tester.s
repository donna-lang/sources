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
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_tester_collect_loop
	subq $-32, %rsp
	leave
	ret
/* end function builder_tester_collect_test_modules */

.text
.balign 16
builder_tester_collect_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb4
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	callq donna_files_basename
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_drop_extension
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_read
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_tester_find_test_fns
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $16, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rdi, 8(%rdx)
	movq %rsi, 16(%rdx)
	subq $32, %rsp
	callq builder_tester_collect_loop
	subq $-32, %rsp
	jmp Lbb6
Lbb4:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb6:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_collect_loop */

.text
.balign 16
.globl builder_tester_find_test_fns
builder_tester_find_test_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str24(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_tester_collect_fns
	subq $-32, %rsp
	leave
	ret
/* end function builder_tester_find_test_fns */

.text
.balign 16
builder_tester_collect_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq %rcx, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb21
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	subq $32, %rsp
	leaq str38(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb19
	subq $32, %rsp
	movq %rcx, %rdi
	callq donna_string_length
	movq %rdi, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $7, %r8
	subq $32, %rsp
	movl $7, %edx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str49(%rip), %rdx
	movq %rcx, %rdi
	callq donna_string_index_of
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	cmpq $0, %r8
	setge %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rax
	jz Lbb16
	subq $32, %rsp
	movl $0, %edx
	callq donna_string_slice
	movq %rbx, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	leaq str59(%rip), %rdx
	movq %rcx, %rbx
	movq %r13, %rcx
	callq donna_string_ends_with
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb14
	subq $32, %rsp
	movq %r12, %rdx
	callq builder_tester_collect_fns
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb15
Lbb14:
	subq $32, %rsp
	movq %rcx, %r14
	movl $24, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	subq $32, %rsp
	callq builder_tester_collect_fns
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb15:
	movq %rax, (%rdi)
	jmp Lbb18
Lbb16:
	movq %rbx, %rcx
	movq %r12, %rbx
	subq $32, %rsp
	movq %rbx, %rdx
	callq builder_tester_collect_fns
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb18:
	movq %rax, (%rsi)
	jmp Lbb23
Lbb19:
	movq %rbx, %rcx
	movq %r12, %rdi
	subq $32, %rsp
	movq %rdi, %rdx
	callq builder_tester_collect_fns
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb23
Lbb21:
	movq %r12, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb23:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_collect_fns */

.text
.balign 16
.globl builder_tester_count_total
builder_tester_count_total:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb26
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_list_length
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_tester_count_total
	subq $-32, %rsp
	addq %rsi, %rax
	jmp Lbb27
Lbb26:
	movl $0, %eax
Lbb27:
	popq %rsi
	leave
	ret
/* end function builder_tester_count_total */

.text
.balign 16
.globl builder_tester_generate_runner
builder_tester_generate_runner:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_tester_generate_filtered_runner
	subq $-32, %rsp
	leave
	ret
/* end function builder_tester_generate_runner */

.text
.balign 16
.globl builder_tester_generate_filtered_runner
builder_tester_generate_filtered_runner:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_tester_filter_test_modules
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq builder_tester_count_total
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_tester_gen_imports
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	callq builder_tester_gen_module_runners
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_tester_gen_main_module_calls
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str99(%rip), %rcx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str101(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str103(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str105(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str107(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str109(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str111(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str113(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str115(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str117(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str119(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str121(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str123(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str125(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str127(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str129(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str131(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str133(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str135(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str137(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str139(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str141(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str143(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str145(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str147(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str149(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str151(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str153(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str155(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str157(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str159(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str161(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str163(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str165(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str167(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str169(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str171(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str173(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str175(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str177(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str179(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str181(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str183(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str185(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str187(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str189(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str191(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str193(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str195(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str197(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str199(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str201(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str203(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str205(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str207(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str209(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str211(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str213(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str215(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str217(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str219(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str221(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str223(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str225(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str227(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str229(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str231(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str233(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str235(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str237(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str239(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str241(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str243(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str245(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str247(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str249(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str251(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str253(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str255(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str257(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str259(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str262(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str264(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str266(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str268(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str271(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str275(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str277(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str279(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str281(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str283(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str285(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str287(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str289(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str291(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_tester_generate_filtered_runner */

.text
.balign 16
builder_tester_filter_test_modules:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rax
	movq (%rdx), %rcx
	cmpq $0, %rcx
	jz Lbb34
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rax, %rcx
	callq builder_tester_filter_modules_loop
	subq $-32, %rsp
Lbb34:
	leave
	ret
/* end function builder_tester_filter_test_modules */

.text
.balign 16
builder_tester_filter_modules_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r8, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb40
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %r14
	movq %rdx, %r13
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq donna_nil(%rip), %r9
	movq %r13, %r8
	movq %rcx, %rsi
	movq %r14, %rcx
	callq builder_tester_filter_fns
	movq %rsi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r12, %rcx
	callq donna_list_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb38
	subq $32, %rsp
	movq %rcx, %rbx
	movl $16, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r14, (%rbx)
	movq %r12, 8(%rbx)
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rbx, 8(%r8)
	movq %rdi, 16(%r8)
	subq $32, %rsp
	callq builder_tester_filter_modules_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb42
Lbb38:
	movq %r13, %rdx
	subq $32, %rsp
	movq %rdi, %r8
	callq builder_tester_filter_modules_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb42
Lbb40:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb42:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_filter_modules_loop */

.text
.balign 16
builder_tester_filter_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r9, %rdi
	movq (%rdx), %rax
	cmpq $0, %rax
	jz Lbb48
	movq 8(%rdx), %rbx
	movq 16(%rdx), %rdx
	subq $32, %rsp
	movq %r8, %r13
	movq %rdx, %r12
	movq %rbx, %rdx
	movq %rcx, %rsi
	callq builder_tester_matches_filters
	movq %r13, %r8
	movq %r12, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb46
	subq $32, %rsp
	movq %rdi, %r9
	movq %r8, %r14
	movq %rdx, %r13
	callq builder_tester_filter_fns
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb50
Lbb46:
	movq %rdx, %r13
	movq %r8, %r14
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r14, %r8
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	movq $1, (%r9)
	movq %rbx, 8(%r9)
	movq %rdi, 16(%r9)
	subq $32, %rsp
	callq builder_tester_filter_fns
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb50
Lbb48:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb50:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_filter_fns */

.text
.balign 16
builder_tester_matches_filters:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %r8, %rdi
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str357(%rip), %rdx
	movq %rcx, %rsi
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	callq __rt_str_concat
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	movq (%r8), %rax
	cmpq $0, %rax
	jz Lbb64
	movq 8(%r8), %rdx
	movq 16(%r8), %r13
	subq $32, %rsp
	movq %rdx, %rdi
	callq builder_tester_contains_text
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb62
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rcx, %rdi
	movq %r12, %rcx
	callq builder_tester_contains_text
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb59
	subq $32, %rsp
	movq %rcx, %rbx
	callq builder_tester_contains_text
	movq %r13, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb56
	subq $32, %rsp
	callq builder_tester_matches_filters
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb58
Lbb56:
	movq $1, (%rbx)
	movl $1, %eax
Lbb58:
	movq %rax, (%rdi)
	jmp Lbb61
Lbb59:
	movq $1, (%rdi)
	movl $1, %eax
Lbb61:
	movq %rax, (%rsi)
	jmp Lbb65
Lbb62:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb65
Lbb64:
	movl $0, %eax
Lbb65:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_matches_filters */

.text
.balign 16
builder_tester_contains_text:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_string_length
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	cmpq $0, %rbx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb68
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rbx, %r9
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	callq builder_tester_contains_text_from
	subq $-48, %rsp
	jmp Lbb69
Lbb68:
	movl $0, %eax
Lbb69:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_tester_contains_text */

.text
.balign 16
builder_tester_contains_text_from:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq 48(%rbp), %rdi
	movq %r9, %r13
	movq %r13, %rax
	addq %rdi, %rax
	cmpq %r8, %rax
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb75
	subq $32, %rsp
	movq %r8, %r12
	movq %r13, %r8
	movq %rdx, %rbx
	movq %rdi, %rdx
	movq %rcx, %rsi
	callq donna_string_slice
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	callq donna_string_equal
	movq %r13, %r9
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb73
	movq %rdi, %rax
	addq $1, %rax
	subq $48, %rsp
	movq %rsp, %rdi
	movq %rax, 32(%rdi)
	callq builder_tester_contains_text_from
	subq $-48, %rsp
	movq %rax, (%rsi)
	jmp Lbb76
Lbb73:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb76
Lbb75:
	movl $0, %eax
Lbb76:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_contains_text_from */

.text
.balign 16
builder_tester_gen_imports:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb79
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rdx
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str436(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str438(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_tester_gen_imports
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb80
Lbb79:
	leaq str427(%rip), %rax
Lbb80:
	popq %rsi
	leave
	ret
/* end function builder_tester_gen_imports */

.text
.balign 16
builder_tester_gen_call_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb83
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq builder_tester_gen_mod_calls
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_tester_gen_call_lines
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb84
Lbb83:
	leaq str449(%rip), %rax
Lbb84:
	popq %rsi
	leave
	ret
/* end function builder_tester_gen_call_lines */

.text
.balign 16
builder_tester_gen_module_runners:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb87
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rcx, %rdx
	movq %rcx, %rdi
	leaq str477(%rip), %rcx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str479(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str481(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str483(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_tester_gen_mod_calls
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str487(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_tester_gen_module_runners
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb88
Lbb87:
	leaq str468(%rip), %rax
Lbb88:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_tester_gen_module_runners */

.text
.balign 16
builder_tester_gen_main_module_calls:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb91
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rdx
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rcx, %rsi
	leaq str507(%rip), %rcx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str509(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str512(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str515(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str517(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str520(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str522(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str525(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_tester_gen_main_module_calls
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb92
Lbb91:
	leaq str498(%rip), %rax
Lbb92:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_tester_gen_main_module_calls */

.text
.balign 16
builder_tester_gen_mod_calls:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb95
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str541(%rip), %rdx
	movq %rcx, %rsi
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str544(%rip), %rcx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str546(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rsi, %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str549(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str552(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_tester_gen_mod_calls
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb96
Lbb95:
	leaq str536(%rip), %rax
Lbb96:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_tester_gen_mod_calls */

.text
.balign 16
__rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq strlen
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rcx
	callq strlen
	subq $-32, %rsp
	addq %rbx, %rax
	movq %rax, %rcx
	addq $1, %rcx
	subq $32, %rsp
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcpy
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcat
	movq %rsi, %rax
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

