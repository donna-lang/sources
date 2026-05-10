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
	jz Lbb21
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	leaq _str38(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_starts_with
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb19
	movq %rdi, %r12
	callq _donna_string_length
	movq %r12, %rdi
	movq %rax, %rdx
	subq $7, %rdx
	movl $7, %esi
	callq _donna_string_slice
	movq %rax, %rdi
	leaq _str49(%rip), %rsi
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
	jz Lbb16
	movl $0, %esi
	callq _donna_string_slice
	movq %r13, %rdi
	movq %rax, %r15
	leaq _str59(%rip), %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq _donna_string_ends_with
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -16(%rbp)
	cmpq $1, %rax
	jz Lbb14
	movq %r14, %rsi
	callq _builder_tester_collect_fns
	movq %rax, (%r13)
	jmp Lbb15
Lbb14:
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
Lbb15:
	movq %rax, (%r12)
	jmp Lbb18
Lbb16:
	movq %r13, %rdi
	movq %r14, %r13
	movq %r13, %rsi
	callq _builder_tester_collect_fns
	movq %rax, (%r12)
Lbb18:
	movq %rax, (%rbx)
	jmp Lbb23
Lbb19:
	movq %r13, %rdi
	movq %r14, %r12
	movq %r12, %rsi
	callq _builder_tester_collect_fns
	movq %rax, (%rbx)
	jmp Lbb23
Lbb21:
	movq %r14, %rdi
	callq _donna_list_reverse
Lbb23:
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
.globl _builder_tester_count_total
_builder_tester_count_total:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb26
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	callq _donna_list_length
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_tester_count_total
	addq %rbx, %rax
	jmp Lbb27
Lbb26:
	movl $0, %eax
Lbb27:
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
	movq %rdi, %rbx
	callq _builder_tester_filter_test_modules
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _builder_tester_count_total
	movq %rbx, %rdi
	movq %rax, %rbx
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
	leaq _str99(%rip), %rdi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str101(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str103(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str105(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str107(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str109(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str111(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str113(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str115(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str117(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str119(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str121(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str123(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str125(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str127(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str129(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str131(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str133(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str135(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str137(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str139(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str141(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str143(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str145(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str147(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str149(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str151(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str153(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str155(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str157(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str159(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str161(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str163(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str165(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str167(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str169(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str171(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str173(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str175(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str177(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str179(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str181(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str183(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str185(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str187(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str189(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str191(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str193(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str195(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str197(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str199(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str201(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str203(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str205(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str207(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str209(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str211(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str213(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str215(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str217(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str219(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str221(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str223(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str225(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str227(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str229(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str231(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str233(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str235(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str237(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str239(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str241(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str243(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str245(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str247(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str249(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str251(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str253(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str255(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str257(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str259(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str262(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str264(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str266(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str268(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str271(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str275(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str277(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str279(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str281(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str283(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str285(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str287(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str289(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str291(%rip), %rsi
	callq ___rt_str_concat
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_tester_generate_filtered_runner */

.text
.balign 16
_builder_tester_filter_test_modules:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rax
	movq (%rsi), %rcx
	cmpq $0, %rcx
	jz Lbb34
	leaq _donna_nil(%rip), %rdx
	movq %rax, %rdi
	callq _builder_tester_filter_modules_loop
Lbb34:
	leave
	ret
/* end function builder_tester_filter_test_modules */

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
	jz Lbb40
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
	jz Lbb38
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
	jmp Lbb42
Lbb38:
	movq %r13, %rbx
	movq %r15, %rsi
	movq %r12, %rdx
	callq _builder_tester_filter_modules_loop
	movq %rax, (%rbx)
	jmp Lbb42
Lbb40:
	movq %r12, %rdi
	callq _donna_list_reverse
Lbb42:
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
	jz Lbb48
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
	jz Lbb46
	movq %r12, %rcx
	movq %rdx, %r15
	movq %rsi, %r14
	callq _builder_tester_filter_fns
	movq %rax, (%rbx)
	jmp Lbb50
Lbb46:
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
	jmp Lbb50
Lbb48:
	movq %r12, %rdi
	callq _donna_list_reverse
Lbb50:
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
	leaq _str357(%rip), %rsi
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
	jz Lbb64
	movq 8(%rdx), %rsi
	movq 16(%rdx), %r15
	movq %rsi, %r12
	callq _builder_tester_contains_text
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb62
	movq %rsi, %r13
	movq %rdi, %r12
	movq %r14, %rdi
	callq _builder_tester_contains_text
	movq %r13, %rsi
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb59
	movq %rdi, %r13
	callq _builder_tester_contains_text
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb56
	callq _builder_tester_matches_filters
	movq %rax, (%r13)
	jmp Lbb58
Lbb56:
	movq $1, (%r13)
	movl $1, %eax
Lbb58:
	movq %rax, (%r12)
	jmp Lbb61
Lbb59:
	movq $1, (%r12)
	movl $1, %eax
Lbb61:
	movq %rax, (%rbx)
	jmp Lbb65
Lbb62:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb65
Lbb64:
	movl $0, %eax
Lbb65:
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
	jz Lbb68
	movq %rdi, %rbx
	callq _donna_string_length
	movq %r13, %rcx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	movl $0, %r8d
	callq _builder_tester_contains_text_from
	jmp Lbb69
Lbb68:
	movl $0, %eax
Lbb69:
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
	jz Lbb75
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
	jz Lbb73
	addq $1, %r8
	callq _builder_tester_contains_text_from
	movq %rax, (%rbx)
	jmp Lbb76
Lbb73:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb76
Lbb75:
	movl $0, %eax
Lbb76:
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
	jz Lbb79
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rsi
	movq %rdi, %rbx
	leaq _str436(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str438(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_tester_gen_imports
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb80
Lbb79:
	leaq _str427(%rip), %rax
Lbb80:
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
	jz Lbb83
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
	jmp Lbb84
Lbb83:
	leaq _str449(%rip), %rax
Lbb84:
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
	jz Lbb87
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq (%rax), %rdi
	movq 8(%rax), %rsi
	movq %rsi, %r13
	movq %rdi, %rsi
	movq %rdi, %r12
	leaq _str477(%rip), %rdi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str479(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str481(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str483(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	callq _builder_tester_gen_mod_calls
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str487(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_tester_gen_module_runners
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb88
Lbb87:
	leaq _str468(%rip), %rax
Lbb88:
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
	jz Lbb91
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rsi
	movq %rsi, %r12
	movq %rdi, %rbx
	leaq _str507(%rip), %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str509(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str512(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str515(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str517(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str520(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str522(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str525(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_tester_gen_main_module_calls
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb92
Lbb91:
	leaq _str498(%rip), %rax
Lbb92:
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
	jz Lbb95
	movq 8(%rax), %rsi
	movq 16(%rax), %r12
	movq %rsi, %r13
	leaq _str541(%rip), %rsi
	movq %rdi, %rbx
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq _str544(%rip), %rdi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str546(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	movq %rbx, %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str549(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str552(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_tester_gen_mod_calls
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb96
Lbb95:
	leaq _str536(%rip), %rax
Lbb96:
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

