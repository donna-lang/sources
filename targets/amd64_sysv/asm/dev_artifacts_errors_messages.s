.data
.balign 8
str10:
	.ascii "unexpected character"
	.byte 0
/* end data */

.data
.balign 8
str11:
	.ascii "unexpected `"
	.byte 0
/* end data */

.data
.balign 8
str13:
	.ascii "` here"
	.byte 0
/* end data */

.data
.balign 8
str15:
	.ascii "remove this character or check for a typo"
	.byte 0
/* end data */

.data
.balign 8
str26:
	.ascii "unterminated string"
	.byte 0
/* end data */

.data
.balign 8
str27:
	.ascii "string opened here is never closed"
	.byte 0
/* end data */

.data
.balign 8
str28:
	.ascii "add a closing `"
	.byte 34
	.ascii "` to end the string"
	.byte 0
/* end data */

.data
.balign 8
str41:
	.ascii "invalid escape sequence"
	.byte 0
/* end data */

.data
.balign 8
str42:
	.ascii "unknown escape `"
	.byte 92
	.byte 0
/* end data */

.data
.balign 8
str44:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str46:
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
str57:
	.ascii "invalid hex escape"
	.byte 0
/* end data */

.data
.balign 8
str58:
	.ascii "expected two hex digits after `"
	.byte 92
	.ascii "x`"
	.byte 0
/* end data */

.data
.balign 8
str59:
	.ascii "example: `"
	.byte 92
	.ascii "x41` for `A`"
	.byte 0
/* end data */

.data
.balign 8
str70:
	.ascii "invalid unicode escape"
	.byte 0
/* end data */

.data
.balign 8
str71:
	.ascii "expected hex digits in `"
	.byte 92
	.ascii "u{...}`"
	.byte 0
/* end data */

.data
.balign 8
str72:
	.ascii "example: `"
	.byte 92
	.ascii "u{1F600}` for an emoji"
	.byte 0
/* end data */

.data
.balign 8
str85:
	.ascii "empty number literal"
	.byte 0
/* end data */

.data
.balign 8
str86:
	.ascii "expected digits after `"
	.byte 0
/* end data */

.data
.balign 8
str88:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str90:
	.ascii "add at least one digit, e.g. `"
	.byte 0
/* end data */

.data
.balign 8
str92:
	.ascii "1`"
	.byte 0
/* end data */

.data
.balign 8
str108:
	.ascii "unexpected token"
	.byte 0
/* end data */

.data
.balign 8
str109:
	.ascii "found `"
	.byte 0
/* end data */

.data
.balign 8
str111:
	.ascii "`, expected "
	.byte 0
/* end data */

.data
.balign 8
str127:
	.ascii "unexpected end of file"
	.byte 0
/* end data */

.data
.balign 8
str128:
	.ascii "expected "
	.byte 0
/* end data */

.data
.balign 8
str130:
	.ascii " before end of file"
	.byte 0
/* end data */

.data
.balign 8
str132:
	.ascii "check for a missing closing delimiter or incomplete expression"
	.byte 0
/* end data */

.data
.balign 8
str143:
	.ascii "invalid indentation"
	.byte 0
/* end data */

.data
.balign 8
str144:
	.ascii "indentation does not match any outer block"
	.byte 0
/* end data */

.data
.balign 8
str145:
	.ascii "Donna uses 2-space indentation "
	.byte 226
	.byte 128
	.byte 148
	.ascii " check for mixed tabs and spaces"
	.byte 0
/* end data */

.data
.balign 8
str156:
	.ascii "missing colon"
	.byte 0
/* end data */

.data
.balign 8
str157:
	.ascii "expected `:` to open a block here"
	.byte 0
/* end data */

.data
.balign 8
str158:
	.ascii "add `:` at the end of this line"
	.byte 0
/* end data */

.data
.balign 8
str169:
	.ascii "missing arrow"
	.byte 0
/* end data */

.data
.balign 8
str170:
	.ascii "expected `->` to begin the arm result"
	.byte 0
/* end data */

.data
.balign 8
str171:
	.ascii "add `->` after the pattern: `Pattern -> expr`"
	.byte 0
/* end data */

.data
.balign 8
str184:
	.ascii "invalid function name"
	.byte 0
/* end data */

.data
.balign 8
str185:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str187:
	.ascii "` starts with an uppercase letter"
	.byte 0
/* end data */

.data
.balign 8
str189:
	.ascii "function names must start with a lowercase letter"
	.byte 0
/* end data */

.data
.balign 8
str202:
	.ascii "invalid type name"
	.byte 0
/* end data */

.data
.balign 8
str203:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str205:
	.ascii "` starts with a lowercase letter"
	.byte 0
/* end data */

.data
.balign 8
str207:
	.ascii "type names must start with an uppercase letter"
	.byte 0
/* end data */

.data
.balign 8
str222:
	.ascii "type mismatch"
	.byte 0
/* end data */

.data
.balign 8
str223:
	.ascii "expected `"
	.byte 0
/* end data */

.data
.balign 8
str225:
	.ascii "`, found `"
	.byte 0
/* end data */

.data
.balign 8
str228:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str230:
	.ascii "check that the types match or update the annotation"
	.byte 0
/* end data */

.data
.balign 8
str243:
	.ascii "undefined variable"
	.byte 0
/* end data */

.data
.balign 8
str244:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str246:
	.ascii "` is not defined in this scope"
	.byte 0
/* end data */

.data
.balign 8
str248:
	.ascii "check the spelling or add a `let` binding above"
	.byte 0
/* end data */

.data
.balign 8
str261:
	.ascii "undefined module"
	.byte 0
/* end data */

.data
.balign 8
str262:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str264:
	.ascii "` has not been imported"
	.byte 0
/* end data */

.data
.balign 8
str266:
	.ascii "add the missing import at the top of the file"
	.byte 0
/* end data */

.data
.balign 8
str281:
	.ascii "wrong number of arguments"
	.byte 0
/* end data */

.data
.balign 8
str282:
	.ascii "expected "
	.byte 0
/* end data */

.data
.balign 8
str285:
	.ascii " argument(s), found "
	.byte 0
/* end data */

.data
.balign 8
str289:
	.ascii "check the function signature and adjust the number of arguments"
	.byte 0
/* end data */

.data
.balign 8
str302:
	.ascii "not a function"
	.byte 0
/* end data */

.data
.balign 8
str303:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str305:
	.ascii "` is not a function and cannot be called"
	.byte 0
/* end data */

.data
.balign 8
str307:
	.ascii "check that you are calling the right name"
	.byte 0
/* end data */

.data
.balign 8
str320:
	.ascii "duplicate function"
	.byte 0
/* end data */

.data
.balign 8
str321:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str323:
	.ascii "` is already defined in this module"
	.byte 0
/* end data */

.data
.balign 8
str325:
	.ascii "rename one of the two definitions"
	.byte 0
/* end data */

.data
.balign 8
str336:
	.ascii "invalid return type"
	.byte 0
/* end data */

.data
.balign 8
str337:
	.ascii "function returns `"
	.byte 0
/* end data */

.data
.balign 8
str339:
	.ascii "`, declared as `"
	.byte 0
/* end data */

.data
.balign 8
str342:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str344:
	.ascii "change the return type annotation to `"
	.byte 0
/* end data */

.data
.balign 8
str346:
	.ascii "` or fix the function body"
	.byte 0
/* end data */

.data
.balign 8
str355:
	.ascii "function name"
	.byte 0
/* end data */

.data
.balign 8
str360:
	.ascii "function names must start with a lowercase letter"
	.byte 0
/* end data */

.data
.balign 8
str361:
	.ascii "constant name"
	.byte 0
/* end data */

.data
.balign 8
str366:
	.ascii "constant names must start with a lowercase letter"
	.byte 0
/* end data */

.data
.balign 8
str367:
	.ascii "parameter name"
	.byte 0
/* end data */

.data
.balign 8
str372:
	.ascii "parameter names must start with a lowercase letter"
	.byte 0
/* end data */

.data
.balign 8
str373:
	.ascii "constructor name"
	.byte 0
/* end data */

.data
.balign 8
str378:
	.ascii "constructor names must start with an uppercase letter"
	.byte 0
/* end data */

.data
.balign 8
str379:
	.ascii "constructor"
	.byte 0
/* end data */

.data
.balign 8
str384:
	.ascii "constructor names must start with an uppercase letter"
	.byte 0
/* end data */

.data
.balign 8
str385:
	.ascii "type name"
	.byte 0
/* end data */

.data
.balign 8
str390:
	.ascii "type names must start with an uppercase letter"
	.byte 0
/* end data */

.data
.balign 8
str391:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str396:
	.ascii "type names must start with an uppercase letter"
	.byte 0
/* end data */

.data
.balign 8
str397:
	.ascii "module name"
	.byte 0
/* end data */

.data
.balign 8
str402:
	.ascii "module path segments must be lowercase, e.g. `import donna/string`"
	.byte 0
/* end data */

.data
.balign 8
str403:
	.ascii "name or _"
	.byte 0
/* end data */

.data
.balign 8
str408:
	.ascii "use a name to bind the value or `_` to discard it"
	.byte 0
/* end data */

.data
.balign 8
str409:
	.ascii "spread variable"
	.byte 0
/* end data */

.data
.balign 8
str414:
	.ascii "use `..rest` to bind the tail, or `..` to discard it"
	.byte 0
/* end data */

.data
.balign 8
str415:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str420:
	.ascii "add `:` at the end of the line to open a block"
	.byte 0
/* end data */

.data
.balign 8
str421:
	.ascii "= or :"
	.byte 0
/* end data */

.data
.balign 8
str426:
	.ascii "use `=` to assign a value or `:` to open a block"
	.byte 0
/* end data */

.data
.balign 8
str427:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str432:
	.ascii "use `=` to bind a value"
	.byte 0
/* end data */

.data
.balign 8
str433:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str438:
	.ascii "use `->` to separate a pattern from its result"
	.byte 0
/* end data */

.data
.balign 8
str439:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str444:
	.ascii "expected an opening `(` here"
	.byte 0
/* end data */

.data
.balign 8
str445:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str450:
	.ascii "check for a missing `)` or extra token in the list"
	.byte 0
/* end data */

.data
.balign 8
str451:
	.ascii ", ] or .."
	.byte 0
/* end data */

.data
.balign 8
str456:
	.ascii "close the list with `]`, add `,` before the next element, or use `..` for a spread"
	.byte 0
/* end data */

.data
.balign 8
str457:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str462:
	.ascii "close the list with `]`"
	.byte 0
/* end data */

.data
.balign 8
str463:
	.ascii "indented block"
	.byte 0
/* end data */

.data
.balign 8
str468:
	.ascii "indent the block body 2 spaces deeper than this line"
	.byte 0
/* end data */

.data
.balign 8
str469:
	.ascii "indented constructor block"
	.byte 0
/* end data */

.data
.balign 8
str474:
	.ascii "indent each constructor 2 spaces below the `type` header"
	.byte 0
/* end data */

.data
.balign 8
str475:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str480:
	.ascii "use `fn name(params) -> RetType:` to start a function"
	.byte 0
/* end data */

.data
.balign 8
str481:
	.ascii "import"
	.byte 0
/* end data */

.data
.balign 8
str486:
	.ascii "use `import module/path` to import a module"
	.byte 0
/* end data */

.data
.balign 8
str487:
	.ascii "import, const, type, fn, or @external"
	.byte 0
/* end data */

.data
.balign 8
str492:
	.ascii "only imports, constants, type definitions, and functions are allowed at the top level"
	.byte 0
/* end data */

.data
.balign 8
str493:
	.ascii "case arm pattern"
	.byte 0
/* end data */

.data
.balign 8
str498:
	.ascii "each `case` arm must start with a pattern followed by `->` and its result"
	.byte 0
/* end data */

.data
.balign 8
str499:
	.ascii "pattern"
	.byte 0
/* end data */

.data
.balign 8
str504:
	.ascii "valid patterns are: names, literals, tuples `#(a, b)`, lists `[a, ..rest]`, and constructors"
	.byte 0
/* end data */

.data
.balign 8
str505:
	.ascii "@"
	.byte 0
/* end data */

.data
.balign 8
str510:
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
str511:
	.ascii "external"
	.byte 0
/* end data */

.data
.balign 8
str516:
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
str517:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str529:
	.ascii "unused variable"
	.byte 0
/* end data */

.data
.balign 8
str530:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str532:
	.ascii "` is assigned but never used"
	.byte 0
/* end data */

.data
.balign 8
str534:
	.ascii "prefix with `_` to suppress this warning: `_"
	.byte 0
/* end data */

.data
.balign 8
str536:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str552:
	.ascii "unused parameter"
	.byte 0
/* end data */

.data
.balign 8
str553:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str555:
	.ascii "` in `"
	.byte 0
/* end data */

.data
.balign 8
str558:
	.ascii "` is never used"
	.byte 0
/* end data */

.data
.balign 8
str560:
	.ascii "prefix with `_` to suppress this warning: `_"
	.byte 0
/* end data */

.data
.balign 8
str562:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str576:
	.ascii "unused function"
	.byte 0
/* end data */

.data
.balign 8
str577:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str579:
	.ascii "` is defined but never called"
	.byte 0
/* end data */

.data
.balign 8
str581:
	.ascii "remove the function or make it `pub` if it is part of the module's public API"
	.byte 0
/* end data */

.data
.balign 8
str594:
	.ascii "unused import"
	.byte 0
/* end data */

.data
.balign 8
str595:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str597:
	.ascii "` is imported but never used"
	.byte 0
/* end data */

.data
.balign 8
str599:
	.ascii "remove the import or use something from it"
	.byte 0
/* end data */

.data
.balign 8
str610:
	.ascii "unreachable code"
	.byte 0
/* end data */

.data
.balign 8
str611:
	.ascii "this code can never be reached"
	.byte 0
/* end data */

.data
.balign 8
str612:
	.ascii "remove the unreachable code or fix the logic above it"
	.byte 0
/* end data */

.data
.balign 8
str619:
	.ascii "unimplemented placeholder"
	.byte 0
/* end data */

.data
.balign 8
str620:
	.ascii "`todo` will abort at runtime"
	.byte 0
/* end data */

.data
.balign 8
str621:
	.ascii "replace `todo` with a real implementation before shipping"
	.byte 0
/* end data */

.text
.balign 16
.globl errors_messages_error_message
errors_messages_error_message:
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
	jnz .Lbb38
	cmpq $1, %rax
	jz .Lbb37
	cmpq $2, %rax
	jz .Lbb36
	cmpq $3, %rax
	jz .Lbb35
	cmpq $4, %rax
	jz .Lbb34
	cmpq $5, %rax
	jz .Lbb33
	cmpq $6, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb32
	cmpq $7, %rax
	jz .Lbb31
	cmpq $8, %rax
	jz .Lbb30
	cmpq $9, %rax
	jz .Lbb29
	cmpq $10, %rax
	jz .Lbb28
	cmpq $11, %rax
	jz .Lbb27
	cmpq $12, %rax
	jz .Lbb26
	cmpq $13, %rax
	jz .Lbb25
	cmpq $14, %rax
	jz .Lbb24
	cmpq $15, %rax
	jz .Lbb23
	cmpq $16, %rax
	jz .Lbb22
	cmpq $17, %rax
	jz .Lbb21
	cmpq $18, %rax
	jz .Lbb20
	movq 8(%rdi), %rsi
	movq 16(%rdi), %rbx
	movq %rsi, %r12
	movq %rbx, %rsi
	leaq str337(%rip), %rdi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq str339(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str342(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %r12
	leaq str344(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str346(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str336(%rip), %rcx
	movq %rcx, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb39
.Lbb20:
	movq 8(%rdi), %rsi
	leaq str321(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str323(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str320(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str325(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb21:
	movq 8(%rdi), %rsi
	leaq str303(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str305(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str302(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str307(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb22:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq str282(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str285(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str281(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str289(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb23:
	movq 8(%rdi), %rsi
	leaq str262(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str264(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str261(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str266(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb24:
	movq 8(%rdi), %rsi
	leaq str244(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str246(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str243(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str248(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb25:
	movq 8(%rdi), %rsi
	movq 16(%rdi), %rbx
	leaq str223(%rip), %rdi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str225(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str228(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str222(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str230(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb26:
	movq 8(%rdi), %rsi
	leaq str203(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str205(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str202(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str207(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb27:
	movq 8(%rdi), %rsi
	leaq str185(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str187(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str184(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str189(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb28:
	movl $24, %edi
	callq malloc
	leaq str169(%rip), %rcx
	movq %rcx, (%rax)
	leaq str170(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq str171(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb29:
	movl $24, %edi
	callq malloc
	leaq str156(%rip), %rcx
	movq %rcx, (%rax)
	leaq str157(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq str158(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb30:
	movl $24, %edi
	callq malloc
	leaq str143(%rip), %rcx
	movq %rcx, (%rax)
	leaq str144(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq str145(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb31:
	movq 8(%rdi), %rsi
	leaq str128(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str130(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str127(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str132(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb32:
	movq 8(%rdi), %rsi
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	leaq str109(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str111(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rbx, %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %r12
	callq errors_messages_hint_for_unexpected
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str108(%rip), %rcx
	movq %rcx, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb39
.Lbb33:
	movq 8(%rdi), %rsi
	movq %rsi, %rbx
	leaq str86(%rip), %rdi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str88(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %r12
	leaq str90(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str92(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str85(%rip), %rcx
	movq %rcx, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb39
.Lbb34:
	movl $24, %edi
	callq malloc
	leaq str70(%rip), %rcx
	movq %rcx, (%rax)
	leaq str71(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq str72(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb35:
	movl $24, %edi
	callq malloc
	leaq str57(%rip), %rcx
	movq %rcx, (%rax)
	leaq str58(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq str59(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb36:
	movq 8(%rdi), %rsi
	leaq str42(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str44(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str41(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str46(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb37:
	movl $24, %edi
	callq malloc
	leaq str26(%rip), %rcx
	movq %rcx, (%rax)
	leaq str27(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq str28(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb39
.Lbb38:
	movq 8(%rdi), %rsi
	leaq str11(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str13(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str10(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str15(%rip), %rcx
	movq %rcx, 16(%rax)
.Lbb39:
	popq %r12
	popq %rbx
	leave
	ret
.type errors_messages_error_message, @function
.size errors_messages_error_message, .-errors_messages_error_message
/* end function errors_messages_error_message */

.text
.balign 16
errors_messages_hint_for_unexpected:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq str355(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb94
	leaq str361(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb93
	leaq str367(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb92
	leaq str373(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb91
	leaq str379(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb90
	leaq str385(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb89
	leaq str391(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb88
	leaq str397(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb87
	leaq str403(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb86
	leaq str409(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb85
	leaq str415(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb84
	leaq str421(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb83
	leaq str427(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb82
	leaq str433(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb81
	leaq str439(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb80
	leaq str445(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb79
	leaq str451(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb78
	leaq str457(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb77
	leaq str463(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb76
	leaq str469(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb75
	leaq str475(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb74
	leaq str481(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb73
	leaq str487(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb72
	leaq str493(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb71
	leaq str499(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb70
	leaq str505(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb69
	leaq str511(%rip), %rsi
	callq strcmp
	cmpq $0, %rax
	jz .Lbb68
	leaq str517(%rip), %rax
	jmp .Lbb95
.Lbb68:
	leaq str516(%rip), %rax
	jmp .Lbb95
.Lbb69:
	leaq str510(%rip), %rax
	jmp .Lbb95
.Lbb70:
	leaq str504(%rip), %rax
	jmp .Lbb95
.Lbb71:
	leaq str498(%rip), %rax
	jmp .Lbb95
.Lbb72:
	leaq str492(%rip), %rax
	jmp .Lbb95
.Lbb73:
	leaq str486(%rip), %rax
	jmp .Lbb95
.Lbb74:
	leaq str480(%rip), %rax
	jmp .Lbb95
.Lbb75:
	leaq str474(%rip), %rax
	jmp .Lbb95
.Lbb76:
	leaq str468(%rip), %rax
	jmp .Lbb95
.Lbb77:
	leaq str462(%rip), %rax
	jmp .Lbb95
.Lbb78:
	leaq str456(%rip), %rax
	jmp .Lbb95
.Lbb79:
	leaq str450(%rip), %rax
	jmp .Lbb95
.Lbb80:
	leaq str444(%rip), %rax
	jmp .Lbb95
.Lbb81:
	leaq str438(%rip), %rax
	jmp .Lbb95
.Lbb82:
	leaq str432(%rip), %rax
	jmp .Lbb95
.Lbb83:
	leaq str426(%rip), %rax
	jmp .Lbb95
.Lbb84:
	leaq str420(%rip), %rax
	jmp .Lbb95
.Lbb85:
	leaq str414(%rip), %rax
	jmp .Lbb95
.Lbb86:
	leaq str408(%rip), %rax
	jmp .Lbb95
.Lbb87:
	leaq str402(%rip), %rax
	jmp .Lbb95
.Lbb88:
	leaq str396(%rip), %rax
	jmp .Lbb95
.Lbb89:
	leaq str390(%rip), %rax
	jmp .Lbb95
.Lbb90:
	leaq str384(%rip), %rax
	jmp .Lbb95
.Lbb91:
	leaq str378(%rip), %rax
	jmp .Lbb95
.Lbb92:
	leaq str372(%rip), %rax
	jmp .Lbb95
.Lbb93:
	leaq str366(%rip), %rax
	jmp .Lbb95
.Lbb94:
	leaq str360(%rip), %rax
.Lbb95:
	popq %rbx
	leave
	ret
.type errors_messages_hint_for_unexpected, @function
.size errors_messages_hint_for_unexpected, .-errors_messages_hint_for_unexpected
/* end function errors_messages_hint_for_unexpected */

.text
.balign 16
.globl errors_messages_warning_message
errors_messages_warning_message:
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
	jnz .Lbb106
	cmpq $1, %rax
	jz .Lbb105
	cmpq $2, %rax
	jz .Lbb104
	cmpq $3, %rax
	jz .Lbb103
	cmpq $4, %rax
	jz .Lbb102
	movl $24, %edi
	callq malloc
	leaq str619(%rip), %rcx
	movq %rcx, (%rax)
	leaq str620(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq str621(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb107
.Lbb102:
	movl $24, %edi
	callq malloc
	leaq str610(%rip), %rcx
	movq %rcx, (%rax)
	leaq str611(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq str612(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb107
.Lbb103:
	movq 8(%rdi), %rsi
	leaq str595(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str597(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str594(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str599(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb107
.Lbb104:
	movq 8(%rdi), %rsi
	leaq str577(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str579(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str576(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	leaq str581(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb107
.Lbb105:
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rsi
	movq %rsi, %r12
	movq %rbx, %rsi
	leaq str553(%rip), %rdi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq str555(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str558(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %r12
	leaq str560(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str562(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str552(%rip), %rcx
	movq %rcx, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb107
.Lbb106:
	movq 8(%rdi), %rsi
	movq %rsi, %rbx
	leaq str530(%rip), %rdi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str532(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %r12
	leaq str534(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str536(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	leaq str529(%rip), %rcx
	movq %rcx, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
.Lbb107:
	popq %r12
	popq %rbx
	leave
	ret
.type errors_messages_warning_message, @function
.size errors_messages_warning_message, .-errors_messages_warning_message
/* end function errors_messages_warning_message */

.text
.balign 16
__rt_str_concat:
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
	callq strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
