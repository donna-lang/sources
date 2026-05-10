.data
.balign 8
_str10:
	.ascii "unexpected character"
	.byte 0
/* end data */

.data
.balign 8
_str11:
	.ascii "unexpected `"
	.byte 0
/* end data */

.data
.balign 8
_str13:
	.ascii "` here"
	.byte 0
/* end data */

.data
.balign 8
_str15:
	.ascii "remove this character or check for a typo"
	.byte 0
/* end data */

.data
.balign 8
_str26:
	.ascii "unterminated string"
	.byte 0
/* end data */

.data
.balign 8
_str27:
	.ascii "string opened here is never closed"
	.byte 0
/* end data */

.data
.balign 8
_str28:
	.ascii "add a closing `"
	.byte 34
	.ascii "` to end the string"
	.byte 0
/* end data */

.data
.balign 8
_str41:
	.ascii "invalid escape sequence"
	.byte 0
/* end data */

.data
.balign 8
_str42:
	.ascii "unknown escape `"
	.byte 92
	.byte 0
/* end data */

.data
.balign 8
_str44:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str46:
	.ascii "valid escapes are "
	.byte 92
	.ascii "n "
	.byte 92
	.ascii "t "
	.byte 92
	.ascii "r "
	.byte 92
	.ascii "a "
	.byte 92
	.ascii "b "
	.byte 92
	.ascii "f "
	.byte 92
	.ascii "v "
	.byte 92
	.ascii "e "
	.byte 92
	.byte 92
	.ascii " "
	.byte 92
	.byte 34
	.ascii " "
	.byte 92
	.ascii "xNN "
	.byte 92
	.ascii "u{NNNN}"
	.byte 0
/* end data */

.data
.balign 8
_str57:
	.ascii "invalid hex escape"
	.byte 0
/* end data */

.data
.balign 8
_str58:
	.ascii "expected two hex digits after `"
	.byte 92
	.ascii "x`"
	.byte 0
/* end data */

.data
.balign 8
_str59:
	.ascii "example: `"
	.byte 92
	.ascii "x41` for `A`"
	.byte 0
/* end data */

.data
.balign 8
_str70:
	.ascii "invalid unicode escape"
	.byte 0
/* end data */

.data
.balign 8
_str71:
	.ascii "expected hex digits in `"
	.byte 92
	.ascii "u{...}`"
	.byte 0
/* end data */

.data
.balign 8
_str72:
	.ascii "example: `"
	.byte 92
	.ascii "u{1F600}` for an emoji"
	.byte 0
/* end data */

.data
.balign 8
_str85:
	.ascii "empty number literal"
	.byte 0
/* end data */

.data
.balign 8
_str86:
	.ascii "expected digits after `"
	.byte 0
/* end data */

.data
.balign 8
_str88:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str90:
	.ascii "add at least one digit, e.g. `"
	.byte 0
/* end data */

.data
.balign 8
_str92:
	.ascii "1`"
	.byte 0
/* end data */

.data
.balign 8
_str108:
	.ascii "unexpected token"
	.byte 0
/* end data */

.data
.balign 8
_str109:
	.ascii "found `"
	.byte 0
/* end data */

.data
.balign 8
_str111:
	.ascii "`, expected "
	.byte 0
/* end data */

.data
.balign 8
_str127:
	.ascii "unexpected end of file"
	.byte 0
/* end data */

.data
.balign 8
_str128:
	.ascii "expected "
	.byte 0
/* end data */

.data
.balign 8
_str130:
	.ascii " before end of file"
	.byte 0
/* end data */

.data
.balign 8
_str132:
	.ascii "check for a missing closing delimiter or incomplete expression"
	.byte 0
/* end data */

.data
.balign 8
_str143:
	.ascii "invalid indentation"
	.byte 0
/* end data */

.data
.balign 8
_str144:
	.ascii "indentation does not match any outer block"
	.byte 0
/* end data */

.data
.balign 8
_str145:
	.ascii "Donna uses 2-space indentation "
	.byte 226
	.byte 128
	.byte 148
	.ascii " check for mixed tabs and spaces"
	.byte 0
/* end data */

.data
.balign 8
_str156:
	.ascii "missing colon"
	.byte 0
/* end data */

.data
.balign 8
_str157:
	.ascii "expected `:` to open a block here"
	.byte 0
/* end data */

.data
.balign 8
_str158:
	.ascii "add `:` at the end of this line"
	.byte 0
/* end data */

.data
.balign 8
_str169:
	.ascii "missing arrow"
	.byte 0
/* end data */

.data
.balign 8
_str170:
	.ascii "expected `->` to begin the arm result"
	.byte 0
/* end data */

.data
.balign 8
_str171:
	.ascii "add `->` after the pattern: `Pattern -> expr`"
	.byte 0
/* end data */

.data
.balign 8
_str184:
	.ascii "invalid function name"
	.byte 0
/* end data */

.data
.balign 8
_str185:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str187:
	.ascii "` starts with an uppercase letter"
	.byte 0
/* end data */

.data
.balign 8
_str189:
	.ascii "function names must start with a lowercase letter"
	.byte 0
/* end data */

.data
.balign 8
_str202:
	.ascii "invalid type name"
	.byte 0
/* end data */

.data
.balign 8
_str203:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str205:
	.ascii "` starts with a lowercase letter"
	.byte 0
/* end data */

.data
.balign 8
_str207:
	.ascii "type names must start with an uppercase letter"
	.byte 0
/* end data */

.data
.balign 8
_str222:
	.ascii "type mismatch"
	.byte 0
/* end data */

.data
.balign 8
_str223:
	.ascii "expected `"
	.byte 0
/* end data */

.data
.balign 8
_str225:
	.ascii "`, found `"
	.byte 0
/* end data */

.data
.balign 8
_str228:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str230:
	.ascii "check that the types match or update the annotation"
	.byte 0
/* end data */

.data
.balign 8
_str243:
	.ascii "undefined variable"
	.byte 0
/* end data */

.data
.balign 8
_str244:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str246:
	.ascii "` is not defined in this scope"
	.byte 0
/* end data */

.data
.balign 8
_str248:
	.ascii "check the spelling or add a `let` binding above"
	.byte 0
/* end data */

.data
.balign 8
_str261:
	.ascii "undefined module"
	.byte 0
/* end data */

.data
.balign 8
_str262:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str264:
	.ascii "` has not been imported"
	.byte 0
/* end data */

.data
.balign 8
_str266:
	.ascii "add the missing import at the top of the file"
	.byte 0
/* end data */

.data
.balign 8
_str281:
	.ascii "wrong number of arguments"
	.byte 0
/* end data */

.data
.balign 8
_str282:
	.ascii "expected "
	.byte 0
/* end data */

.data
.balign 8
_str285:
	.ascii " argument(s), found "
	.byte 0
/* end data */

.data
.balign 8
_str289:
	.ascii "check the function signature and adjust the number of arguments"
	.byte 0
/* end data */

.data
.balign 8
_str302:
	.ascii "not a function"
	.byte 0
/* end data */

.data
.balign 8
_str303:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str305:
	.ascii "` is not a function and cannot be called"
	.byte 0
/* end data */

.data
.balign 8
_str307:
	.ascii "check that you are calling the right name"
	.byte 0
/* end data */

.data
.balign 8
_str320:
	.ascii "duplicate function"
	.byte 0
/* end data */

.data
.balign 8
_str321:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str323:
	.ascii "` is already defined in this module"
	.byte 0
/* end data */

.data
.balign 8
_str325:
	.ascii "rename one of the two definitions"
	.byte 0
/* end data */

.data
.balign 8
_str336:
	.ascii "invalid return type"
	.byte 0
/* end data */

.data
.balign 8
_str337:
	.ascii "function returns `"
	.byte 0
/* end data */

.data
.balign 8
_str339:
	.ascii "`, declared as `"
	.byte 0
/* end data */

.data
.balign 8
_str342:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str344:
	.ascii "change the return type annotation to `"
	.byte 0
/* end data */

.data
.balign 8
_str346:
	.ascii "` or fix the function body"
	.byte 0
/* end data */

.data
.balign 8
_str355:
	.ascii "function name"
	.byte 0
/* end data */

.data
.balign 8
_str360:
	.ascii "function names must start with a lowercase letter"
	.byte 0
/* end data */

.data
.balign 8
_str361:
	.ascii "constant name"
	.byte 0
/* end data */

.data
.balign 8
_str366:
	.ascii "constant names must start with a lowercase letter"
	.byte 0
/* end data */

.data
.balign 8
_str367:
	.ascii "parameter name"
	.byte 0
/* end data */

.data
.balign 8
_str372:
	.ascii "parameter names must start with a lowercase letter"
	.byte 0
/* end data */

.data
.balign 8
_str373:
	.ascii "constructor name"
	.byte 0
/* end data */

.data
.balign 8
_str378:
	.ascii "constructor names must start with an uppercase letter"
	.byte 0
/* end data */

.data
.balign 8
_str379:
	.ascii "constructor"
	.byte 0
/* end data */

.data
.balign 8
_str384:
	.ascii "constructor names must start with an uppercase letter"
	.byte 0
/* end data */

.data
.balign 8
_str385:
	.ascii "type name"
	.byte 0
/* end data */

.data
.balign 8
_str390:
	.ascii "type names must start with an uppercase letter"
	.byte 0
/* end data */

.data
.balign 8
_str391:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
_str396:
	.ascii "type names must start with an uppercase letter"
	.byte 0
/* end data */

.data
.balign 8
_str397:
	.ascii "module name"
	.byte 0
/* end data */

.data
.balign 8
_str402:
	.ascii "module path segments must be lowercase, e.g. `import donna/string`"
	.byte 0
/* end data */

.data
.balign 8
_str403:
	.ascii "name or _"
	.byte 0
/* end data */

.data
.balign 8
_str408:
	.ascii "use a name to bind the value or `_` to discard it"
	.byte 0
/* end data */

.data
.balign 8
_str409:
	.ascii "spread variable"
	.byte 0
/* end data */

.data
.balign 8
_str414:
	.ascii "use `..rest` to bind the tail, or `..` to discard it"
	.byte 0
/* end data */

.data
.balign 8
_str415:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str420:
	.ascii "add `:` at the end of the line to open a block"
	.byte 0
/* end data */

.data
.balign 8
_str421:
	.ascii "= or :"
	.byte 0
/* end data */

.data
.balign 8
_str426:
	.ascii "use `=` to assign a value or `:` to open a block"
	.byte 0
/* end data */

.data
.balign 8
_str427:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str432:
	.ascii "use `=` to bind a value"
	.byte 0
/* end data */

.data
.balign 8
_str433:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
_str438:
	.ascii "use `->` to separate a pattern from its result"
	.byte 0
/* end data */

.data
.balign 8
_str439:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str444:
	.ascii "expected an opening `(` here"
	.byte 0
/* end data */

.data
.balign 8
_str445:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
_str450:
	.ascii "check for a missing `)` or extra token in the list"
	.byte 0
/* end data */

.data
.balign 8
_str451:
	.ascii ", ] or .."
	.byte 0
/* end data */

.data
.balign 8
_str456:
	.ascii "close the list with `]`, add `,` before the next element, or use `..` for a spread"
	.byte 0
/* end data */

.data
.balign 8
_str457:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str462:
	.ascii "close the list with `]`"
	.byte 0
/* end data */

.data
.balign 8
_str463:
	.ascii "indented block"
	.byte 0
/* end data */

.data
.balign 8
_str468:
	.ascii "indent the block body 2 spaces deeper than this line"
	.byte 0
/* end data */

.data
.balign 8
_str469:
	.ascii "indented constructor block"
	.byte 0
/* end data */

.data
.balign 8
_str474:
	.ascii "indent each constructor 2 spaces below the `type` header"
	.byte 0
/* end data */

.data
.balign 8
_str475:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
_str480:
	.ascii "use `fn name(params) -> RetType:` to start a function"
	.byte 0
/* end data */

.data
.balign 8
_str481:
	.ascii "import"
	.byte 0
/* end data */

.data
.balign 8
_str486:
	.ascii "use `import module/path` to import a module"
	.byte 0
/* end data */

.data
.balign 8
_str487:
	.ascii "import, const, type, fn, or @external"
	.byte 0
/* end data */

.data
.balign 8
_str492:
	.ascii "only imports, constants, type definitions, and functions are allowed at the top level"
	.byte 0
/* end data */

.data
.balign 8
_str493:
	.ascii "case arm pattern"
	.byte 0
/* end data */

.data
.balign 8
_str498:
	.ascii "each `case` arm must start with a pattern followed by `->` and its result"
	.byte 0
/* end data */

.data
.balign 8
_str499:
	.ascii "pattern"
	.byte 0
/* end data */

.data
.balign 8
_str504:
	.ascii "valid patterns are: names, literals, tuples `#(a, b)`, lists `[a, ..rest]`, and constructors"
	.byte 0
/* end data */

.data
.balign 8
_str505:
	.ascii "@"
	.byte 0
/* end data */

.data
.balign 8
_str510:
	.ascii "external declarations have the form `@external("
	.byte 34
	.ascii "lang"
	.byte 34
	.ascii ", "
	.byte 34
	.ascii "symbol"
	.byte 34
	.ascii ")`"
	.byte 0
/* end data */

.data
.balign 8
_str511:
	.ascii "external"
	.byte 0
/* end data */

.data
.balign 8
_str516:
	.ascii "external declarations have the form `@external("
	.byte 34
	.ascii "lang"
	.byte 34
	.ascii ", "
	.byte 34
	.ascii "symbol"
	.byte 34
	.ascii ")`"
	.byte 0
/* end data */

.data
.balign 8
_str517:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str529:
	.ascii "unused variable"
	.byte 0
/* end data */

.data
.balign 8
_str530:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str532:
	.ascii "` is assigned but never used"
	.byte 0
/* end data */

.data
.balign 8
_str534:
	.ascii "prefix with `_` to suppress this warning: `_"
	.byte 0
/* end data */

.data
.balign 8
_str536:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str552:
	.ascii "unused parameter"
	.byte 0
/* end data */

.data
.balign 8
_str553:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str555:
	.ascii "` in `"
	.byte 0
/* end data */

.data
.balign 8
_str558:
	.ascii "` is never used"
	.byte 0
/* end data */

.data
.balign 8
_str560:
	.ascii "prefix with `_` to suppress this warning: `_"
	.byte 0
/* end data */

.data
.balign 8
_str562:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str576:
	.ascii "unused function"
	.byte 0
/* end data */

.data
.balign 8
_str577:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str579:
	.ascii "` is defined but never called"
	.byte 0
/* end data */

.data
.balign 8
_str581:
	.ascii "remove the function or make it `pub` if it is part of the module's public API"
	.byte 0
/* end data */

.data
.balign 8
_str594:
	.ascii "unused import"
	.byte 0
/* end data */

.data
.balign 8
_str595:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str597:
	.ascii "` is imported but never used"
	.byte 0
/* end data */

.data
.balign 8
_str599:
	.ascii "remove the import or use something from it"
	.byte 0
/* end data */

.data
.balign 8
_str610:
	.ascii "unreachable code"
	.byte 0
/* end data */

.data
.balign 8
_str611:
	.ascii "this code can never be reached"
	.byte 0
/* end data */

.data
.balign 8
_str612:
	.ascii "remove the unreachable code or fix the logic above it"
	.byte 0
/* end data */

.data
.balign 8
_str619:
	.ascii "unimplemented placeholder"
	.byte 0
/* end data */

.data
.balign 8
_str620:
	.ascii "`todo` will abort at runtime"
	.byte 0
/* end data */

.data
.balign 8
_str621:
	.ascii "replace `todo` with a real implementation before shipping"
	.byte 0
/* end data */

.text
.balign 16
.globl _errors_messages_error_message
_errors_messages_error_message:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb38
	cmpq $1, %rax
	jz Lbb37
	cmpq $2, %rax
	jz Lbb36
	cmpq $3, %rax
	jz Lbb35
	cmpq $4, %rax
	jz Lbb34
	cmpq $5, %rax
	jz Lbb33
	cmpq $6, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb32
	cmpq $7, %rax
	jz Lbb31
	cmpq $8, %rax
	jz Lbb30
	cmpq $9, %rax
	jz Lbb29
	cmpq $10, %rax
	jz Lbb28
	cmpq $11, %rax
	jz Lbb27
	cmpq $12, %rax
	jz Lbb26
	cmpq $13, %rax
	jz Lbb25
	cmpq $14, %rax
	jz Lbb24
	cmpq $15, %rax
	jz Lbb23
	cmpq $16, %rax
	jz Lbb22
	cmpq $17, %rax
	jz Lbb21
	cmpq $18, %rax
	jz Lbb20
	movq 8(%rdi), %rsi
	movq 16(%rdi), %rbx
	movq %rsi, %r12
	movq %rbx, %rsi
	leaq _str337(%rip), %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str339(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str342(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %r12
	leaq _str344(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str346(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str336(%rip), %rcx
	movq %rcx, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb39
Lbb20:
	movq 8(%rdi), %rsi
	leaq _str321(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str323(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str320(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str325(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb21:
	movq 8(%rdi), %rsi
	leaq _str303(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str305(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str302(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str307(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb22:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq _donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq _str282(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str285(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str281(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str289(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb23:
	movq 8(%rdi), %rsi
	leaq _str262(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str264(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str261(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str266(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb24:
	movq 8(%rdi), %rsi
	leaq _str244(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str246(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str243(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str248(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb25:
	movq 8(%rdi), %rsi
	movq 16(%rdi), %rbx
	leaq _str223(%rip), %rdi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str225(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str228(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str222(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str230(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb26:
	movq 8(%rdi), %rsi
	leaq _str203(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str205(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str202(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str207(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb27:
	movq 8(%rdi), %rsi
	leaq _str185(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str187(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str184(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str189(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb28:
	movl $24, %edi
	callq _malloc
	leaq _str169(%rip), %rcx
	movq %rcx, (%rax)
	leaq _str170(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _str171(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb29:
	movl $24, %edi
	callq _malloc
	leaq _str156(%rip), %rcx
	movq %rcx, (%rax)
	leaq _str157(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _str158(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb30:
	movl $24, %edi
	callq _malloc
	leaq _str143(%rip), %rcx
	movq %rcx, (%rax)
	leaq _str144(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _str145(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb31:
	movq 8(%rdi), %rsi
	leaq _str128(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str130(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str127(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str132(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb32:
	movq 8(%rdi), %rsi
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	leaq _str109(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str111(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	movq %rbx, %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %r12
	callq _errors_messages_hint_for_unexpected
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str108(%rip), %rcx
	movq %rcx, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb39
Lbb33:
	movq 8(%rdi), %rsi
	movq %rsi, %rbx
	leaq _str86(%rip), %rdi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str88(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %r12
	leaq _str90(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str92(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str85(%rip), %rcx
	movq %rcx, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb39
Lbb34:
	movl $24, %edi
	callq _malloc
	leaq _str70(%rip), %rcx
	movq %rcx, (%rax)
	leaq _str71(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _str72(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb35:
	movl $24, %edi
	callq _malloc
	leaq _str57(%rip), %rcx
	movq %rcx, (%rax)
	leaq _str58(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _str59(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb36:
	movq 8(%rdi), %rsi
	leaq _str42(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str44(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str41(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str46(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb37:
	movl $24, %edi
	callq _malloc
	leaq _str26(%rip), %rcx
	movq %rcx, (%rax)
	leaq _str27(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _str28(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb39
Lbb38:
	movq 8(%rdi), %rsi
	leaq _str11(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str13(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str10(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str15(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb39:
	popq %r12
	popq %rbx
	leave
	ret
/* end function errors_messages_error_message */

.text
.balign 16
_errors_messages_hint_for_unexpected:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq _str355(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb94
	leaq _str361(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb93
	leaq _str367(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb92
	leaq _str373(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb91
	leaq _str379(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb90
	leaq _str385(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb89
	leaq _str391(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb88
	leaq _str397(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb87
	leaq _str403(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb86
	leaq _str409(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb85
	leaq _str415(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb84
	leaq _str421(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb83
	leaq _str427(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb82
	leaq _str433(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb81
	leaq _str439(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb80
	leaq _str445(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb79
	leaq _str451(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb78
	leaq _str457(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb77
	leaq _str463(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb76
	leaq _str469(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb75
	leaq _str475(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb74
	leaq _str481(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb73
	leaq _str487(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb72
	leaq _str493(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb71
	leaq _str499(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb70
	leaq _str505(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb69
	leaq _str511(%rip), %rsi
	callq _strcmp
	cmpq $0, %rax
	jz Lbb68
	leaq _str517(%rip), %rax
	jmp Lbb95
Lbb68:
	leaq _str516(%rip), %rax
	jmp Lbb95
Lbb69:
	leaq _str510(%rip), %rax
	jmp Lbb95
Lbb70:
	leaq _str504(%rip), %rax
	jmp Lbb95
Lbb71:
	leaq _str498(%rip), %rax
	jmp Lbb95
Lbb72:
	leaq _str492(%rip), %rax
	jmp Lbb95
Lbb73:
	leaq _str486(%rip), %rax
	jmp Lbb95
Lbb74:
	leaq _str480(%rip), %rax
	jmp Lbb95
Lbb75:
	leaq _str474(%rip), %rax
	jmp Lbb95
Lbb76:
	leaq _str468(%rip), %rax
	jmp Lbb95
Lbb77:
	leaq _str462(%rip), %rax
	jmp Lbb95
Lbb78:
	leaq _str456(%rip), %rax
	jmp Lbb95
Lbb79:
	leaq _str450(%rip), %rax
	jmp Lbb95
Lbb80:
	leaq _str444(%rip), %rax
	jmp Lbb95
Lbb81:
	leaq _str438(%rip), %rax
	jmp Lbb95
Lbb82:
	leaq _str432(%rip), %rax
	jmp Lbb95
Lbb83:
	leaq _str426(%rip), %rax
	jmp Lbb95
Lbb84:
	leaq _str420(%rip), %rax
	jmp Lbb95
Lbb85:
	leaq _str414(%rip), %rax
	jmp Lbb95
Lbb86:
	leaq _str408(%rip), %rax
	jmp Lbb95
Lbb87:
	leaq _str402(%rip), %rax
	jmp Lbb95
Lbb88:
	leaq _str396(%rip), %rax
	jmp Lbb95
Lbb89:
	leaq _str390(%rip), %rax
	jmp Lbb95
Lbb90:
	leaq _str384(%rip), %rax
	jmp Lbb95
Lbb91:
	leaq _str378(%rip), %rax
	jmp Lbb95
Lbb92:
	leaq _str372(%rip), %rax
	jmp Lbb95
Lbb93:
	leaq _str366(%rip), %rax
	jmp Lbb95
Lbb94:
	leaq _str360(%rip), %rax
Lbb95:
	popq %rbx
	leave
	ret
/* end function errors_messages_hint_for_unexpected */

.text
.balign 16
.globl _errors_messages_warning_message
_errors_messages_warning_message:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb106
	cmpq $1, %rax
	jz Lbb105
	cmpq $2, %rax
	jz Lbb104
	cmpq $3, %rax
	jz Lbb103
	cmpq $4, %rax
	jz Lbb102
	movl $24, %edi
	callq _malloc
	leaq _str619(%rip), %rcx
	movq %rcx, (%rax)
	leaq _str620(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _str621(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb107
Lbb102:
	movl $24, %edi
	callq _malloc
	leaq _str610(%rip), %rcx
	movq %rcx, (%rax)
	leaq _str611(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _str612(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb107
Lbb103:
	movq 8(%rdi), %rsi
	leaq _str595(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str597(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str594(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str599(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb107
Lbb104:
	movq 8(%rdi), %rsi
	leaq _str577(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str579(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str576(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq _str581(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb107
Lbb105:
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rsi
	movq %rsi, %r12
	movq %rbx, %rsi
	leaq _str553(%rip), %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str555(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str558(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %r12
	leaq _str560(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str562(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str552(%rip), %rcx
	movq %rcx, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb107
Lbb106:
	movq 8(%rdi), %rsi
	movq %rsi, %rbx
	leaq _str530(%rip), %rdi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str532(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %r12
	leaq _str534(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str536(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	leaq _str529(%rip), %rcx
	movq %rcx, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
Lbb107:
	popq %r12
	popq %rbx
	leave
	ret
/* end function errors_messages_warning_message */

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

