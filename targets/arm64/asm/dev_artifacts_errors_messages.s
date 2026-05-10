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
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L38
	cmp	x1, #1
	beq	.L37
	cmp	x1, #2
	beq	.L36
	cmp	x1, #3
	beq	.L35
	cmp	x1, #4
	beq	.L34
	cmp	x1, #5
	beq	.L33
	cmp	x1, #6
	beq	.L32
	cmp	x1, #7
	beq	.L31
	cmp	x1, #8
	beq	.L30
	cmp	x1, #9
	beq	.L29
	cmp	x1, #10
	beq	.L28
	cmp	x1, #11
	beq	.L27
	cmp	x1, #12
	beq	.L26
	cmp	x1, #13
	beq	.L25
	cmp	x1, #14
	beq	.L24
	cmp	x1, #15
	beq	.L23
	cmp	x1, #16
	beq	.L22
	cmp	x1, #17
	beq	.L21
	cmp	x1, #18
	beq	.L20
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	mov	x20, x1
	mov	x1, x19
	adrp	x0, str337
	add	x0, x0, #:lo12:str337
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str339
	add	x1, x1, #:lo12:str339
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str342
	add	x1, x1, #:lo12:str342
	bl	__rt_str_concat
	mov	x1, x19
	mov	x20, x0
	adrp	x0, str344
	add	x0, x0, #:lo12:str344
	bl	__rt_str_concat
	adrp	x1, str346
	add	x1, x1, #:lo12:str346
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str336
	add	x1, x1, #:lo12:str336
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	.L39
.L20:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str321
	add	x0, x0, #:lo12:str321
	bl	__rt_str_concat
	adrp	x1, str323
	add	x1, x1, #:lo12:str323
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str320
	add	x1, x1, #:lo12:str320
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str325
	add	x1, x1, #:lo12:str325
	str	x1, [x2]
	b	.L39
.L21:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str303
	add	x0, x0, #:lo12:str303
	bl	__rt_str_concat
	adrp	x1, str305
	add	x1, x1, #:lo12:str305
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str302
	add	x1, x1, #:lo12:str302
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str307
	add	x1, x1, #:lo12:str307
	str	x1, [x2]
	b	.L39
.L22:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str282
	add	x0, x0, #:lo12:str282
	bl	__rt_str_concat
	adrp	x1, str285
	add	x1, x1, #:lo12:str285
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str281
	add	x1, x1, #:lo12:str281
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str289
	add	x1, x1, #:lo12:str289
	str	x1, [x2]
	b	.L39
.L23:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str262
	add	x0, x0, #:lo12:str262
	bl	__rt_str_concat
	adrp	x1, str264
	add	x1, x1, #:lo12:str264
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str261
	add	x1, x1, #:lo12:str261
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str266
	add	x1, x1, #:lo12:str266
	str	x1, [x2]
	b	.L39
.L24:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str244
	add	x0, x0, #:lo12:str244
	bl	__rt_str_concat
	adrp	x1, str246
	add	x1, x1, #:lo12:str246
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str243
	add	x1, x1, #:lo12:str243
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str248
	add	x1, x1, #:lo12:str248
	str	x1, [x2]
	b	.L39
.L25:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	adrp	x0, str223
	add	x0, x0, #:lo12:str223
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str225
	add	x1, x1, #:lo12:str225
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	adrp	x1, str228
	add	x1, x1, #:lo12:str228
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str222
	add	x1, x1, #:lo12:str222
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str230
	add	x1, x1, #:lo12:str230
	str	x1, [x2]
	b	.L39
.L26:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str203
	add	x0, x0, #:lo12:str203
	bl	__rt_str_concat
	adrp	x1, str205
	add	x1, x1, #:lo12:str205
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str202
	add	x1, x1, #:lo12:str202
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str207
	add	x1, x1, #:lo12:str207
	str	x1, [x2]
	b	.L39
.L27:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str185
	add	x0, x0, #:lo12:str185
	bl	__rt_str_concat
	adrp	x1, str187
	add	x1, x1, #:lo12:str187
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str184
	add	x1, x1, #:lo12:str184
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str189
	add	x1, x1, #:lo12:str189
	str	x1, [x2]
	b	.L39
.L28:
	mov	x0, #24
	bl	malloc
	adrp	x1, str169
	add	x1, x1, #:lo12:str169
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str170
	add	x1, x1, #:lo12:str170
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str171
	add	x1, x1, #:lo12:str171
	str	x1, [x2]
	b	.L39
.L29:
	mov	x0, #24
	bl	malloc
	adrp	x1, str156
	add	x1, x1, #:lo12:str156
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str157
	add	x1, x1, #:lo12:str157
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str158
	add	x1, x1, #:lo12:str158
	str	x1, [x2]
	b	.L39
.L30:
	mov	x0, #24
	bl	malloc
	adrp	x1, str143
	add	x1, x1, #:lo12:str143
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str144
	add	x1, x1, #:lo12:str144
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str145
	add	x1, x1, #:lo12:str145
	str	x1, [x2]
	b	.L39
.L31:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str128
	add	x0, x0, #:lo12:str128
	bl	__rt_str_concat
	adrp	x1, str130
	add	x1, x1, #:lo12:str130
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str127
	add	x1, x1, #:lo12:str127
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str132
	add	x1, x1, #:lo12:str132
	str	x1, [x2]
	b	.L39
.L32:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x19, x0
	adrp	x0, str109
	add	x0, x0, #:lo12:str109
	bl	__rt_str_concat
	adrp	x1, str111
	add	x1, x1, #:lo12:str111
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, x19
	bl	errors_messages_hint_for_unexpected
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str108
	add	x1, x1, #:lo12:str108
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	.L39
.L33:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x19, x1
	adrp	x0, str86
	add	x0, x0, #:lo12:str86
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str88
	add	x1, x1, #:lo12:str88
	bl	__rt_str_concat
	mov	x1, x19
	mov	x20, x0
	adrp	x0, str90
	add	x0, x0, #:lo12:str90
	bl	__rt_str_concat
	adrp	x1, str92
	add	x1, x1, #:lo12:str92
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str85
	add	x1, x1, #:lo12:str85
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	.L39
.L34:
	mov	x0, #24
	bl	malloc
	adrp	x1, str70
	add	x1, x1, #:lo12:str70
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str71
	add	x1, x1, #:lo12:str71
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str72
	add	x1, x1, #:lo12:str72
	str	x1, [x2]
	b	.L39
.L35:
	mov	x0, #24
	bl	malloc
	adrp	x1, str57
	add	x1, x1, #:lo12:str57
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str58
	add	x1, x1, #:lo12:str58
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str59
	add	x1, x1, #:lo12:str59
	str	x1, [x2]
	b	.L39
.L36:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str42
	add	x0, x0, #:lo12:str42
	bl	__rt_str_concat
	adrp	x1, str44
	add	x1, x1, #:lo12:str44
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str41
	add	x1, x1, #:lo12:str41
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str46
	add	x1, x1, #:lo12:str46
	str	x1, [x2]
	b	.L39
.L37:
	mov	x0, #24
	bl	malloc
	adrp	x1, str26
	add	x1, x1, #:lo12:str26
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str27
	add	x1, x1, #:lo12:str27
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str28
	add	x1, x1, #:lo12:str28
	str	x1, [x2]
	b	.L39
.L38:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str11
	add	x0, x0, #:lo12:str11
	bl	__rt_str_concat
	adrp	x1, str13
	add	x1, x1, #:lo12:str13
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str10
	add	x1, x1, #:lo12:str10
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str15
	add	x1, x1, #:lo12:str15
	str	x1, [x2]
.L39:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type errors_messages_error_message, @function
.size errors_messages_error_message, .-errors_messages_error_message
/* end function errors_messages_error_message */

.text
.balign 16
errors_messages_hint_for_unexpected:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, str355
	add	x1, x1, #:lo12:str355
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L94
	adrp	x1, str361
	add	x1, x1, #:lo12:str361
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L93
	adrp	x1, str367
	add	x1, x1, #:lo12:str367
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L92
	adrp	x1, str373
	add	x1, x1, #:lo12:str373
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L91
	adrp	x1, str379
	add	x1, x1, #:lo12:str379
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L90
	adrp	x1, str385
	add	x1, x1, #:lo12:str385
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L89
	adrp	x1, str391
	add	x1, x1, #:lo12:str391
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L88
	adrp	x1, str397
	add	x1, x1, #:lo12:str397
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L87
	adrp	x1, str403
	add	x1, x1, #:lo12:str403
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L86
	adrp	x1, str409
	add	x1, x1, #:lo12:str409
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L85
	adrp	x1, str415
	add	x1, x1, #:lo12:str415
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L84
	adrp	x1, str421
	add	x1, x1, #:lo12:str421
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L83
	adrp	x1, str427
	add	x1, x1, #:lo12:str427
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L82
	adrp	x1, str433
	add	x1, x1, #:lo12:str433
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L81
	adrp	x1, str439
	add	x1, x1, #:lo12:str439
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L80
	adrp	x1, str445
	add	x1, x1, #:lo12:str445
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L79
	adrp	x1, str451
	add	x1, x1, #:lo12:str451
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L78
	adrp	x1, str457
	add	x1, x1, #:lo12:str457
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L77
	adrp	x1, str463
	add	x1, x1, #:lo12:str463
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L76
	adrp	x1, str469
	add	x1, x1, #:lo12:str469
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L75
	adrp	x1, str475
	add	x1, x1, #:lo12:str475
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L74
	adrp	x1, str481
	add	x1, x1, #:lo12:str481
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L73
	adrp	x1, str487
	add	x1, x1, #:lo12:str487
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L72
	adrp	x1, str493
	add	x1, x1, #:lo12:str493
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L71
	adrp	x1, str499
	add	x1, x1, #:lo12:str499
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L70
	adrp	x1, str505
	add	x1, x1, #:lo12:str505
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L69
	adrp	x1, str511
	add	x1, x1, #:lo12:str511
	bl	strcmp
	cmp	x0, #0
	beq	.L68
	adrp	x0, str517
	add	x0, x0, #:lo12:str517
	b	.L95
.L68:
	adrp	x0, str516
	add	x0, x0, #:lo12:str516
	b	.L95
.L69:
	adrp	x0, str510
	add	x0, x0, #:lo12:str510
	b	.L95
.L70:
	adrp	x0, str504
	add	x0, x0, #:lo12:str504
	b	.L95
.L71:
	adrp	x0, str498
	add	x0, x0, #:lo12:str498
	b	.L95
.L72:
	adrp	x0, str492
	add	x0, x0, #:lo12:str492
	b	.L95
.L73:
	adrp	x0, str486
	add	x0, x0, #:lo12:str486
	b	.L95
.L74:
	adrp	x0, str480
	add	x0, x0, #:lo12:str480
	b	.L95
.L75:
	adrp	x0, str474
	add	x0, x0, #:lo12:str474
	b	.L95
.L76:
	adrp	x0, str468
	add	x0, x0, #:lo12:str468
	b	.L95
.L77:
	adrp	x0, str462
	add	x0, x0, #:lo12:str462
	b	.L95
.L78:
	adrp	x0, str456
	add	x0, x0, #:lo12:str456
	b	.L95
.L79:
	adrp	x0, str450
	add	x0, x0, #:lo12:str450
	b	.L95
.L80:
	adrp	x0, str444
	add	x0, x0, #:lo12:str444
	b	.L95
.L81:
	adrp	x0, str438
	add	x0, x0, #:lo12:str438
	b	.L95
.L82:
	adrp	x0, str432
	add	x0, x0, #:lo12:str432
	b	.L95
.L83:
	adrp	x0, str426
	add	x0, x0, #:lo12:str426
	b	.L95
.L84:
	adrp	x0, str420
	add	x0, x0, #:lo12:str420
	b	.L95
.L85:
	adrp	x0, str414
	add	x0, x0, #:lo12:str414
	b	.L95
.L86:
	adrp	x0, str408
	add	x0, x0, #:lo12:str408
	b	.L95
.L87:
	adrp	x0, str402
	add	x0, x0, #:lo12:str402
	b	.L95
.L88:
	adrp	x0, str396
	add	x0, x0, #:lo12:str396
	b	.L95
.L89:
	adrp	x0, str390
	add	x0, x0, #:lo12:str390
	b	.L95
.L90:
	adrp	x0, str384
	add	x0, x0, #:lo12:str384
	b	.L95
.L91:
	adrp	x0, str378
	add	x0, x0, #:lo12:str378
	b	.L95
.L92:
	adrp	x0, str372
	add	x0, x0, #:lo12:str372
	b	.L95
.L93:
	adrp	x0, str366
	add	x0, x0, #:lo12:str366
	b	.L95
.L94:
	adrp	x0, str360
	add	x0, x0, #:lo12:str360
.L95:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type errors_messages_hint_for_unexpected, @function
.size errors_messages_hint_for_unexpected, .-errors_messages_hint_for_unexpected
/* end function errors_messages_hint_for_unexpected */

.text
.balign 16
.globl errors_messages_warning_message
errors_messages_warning_message:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L107
	cmp	x1, #1
	beq	.L106
	cmp	x1, #2
	beq	.L105
	cmp	x1, #3
	beq	.L104
	mov	x0, x1
	cmp	x0, #4
	beq	.L103
	mov	x0, #24
	bl	malloc
	adrp	x1, str619
	add	x1, x1, #:lo12:str619
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str620
	add	x1, x1, #:lo12:str620
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str621
	add	x1, x1, #:lo12:str621
	str	x1, [x2]
	b	.L108
.L103:
	mov	x0, #24
	bl	malloc
	adrp	x1, str610
	add	x1, x1, #:lo12:str610
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str611
	add	x1, x1, #:lo12:str611
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str612
	add	x1, x1, #:lo12:str612
	str	x1, [x2]
	b	.L108
.L104:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str595
	add	x0, x0, #:lo12:str595
	bl	__rt_str_concat
	adrp	x1, str597
	add	x1, x1, #:lo12:str597
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str594
	add	x1, x1, #:lo12:str594
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str599
	add	x1, x1, #:lo12:str599
	str	x1, [x2]
	b	.L108
.L105:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str577
	add	x0, x0, #:lo12:str577
	bl	__rt_str_concat
	adrp	x1, str579
	add	x1, x1, #:lo12:str579
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str576
	add	x1, x1, #:lo12:str576
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str581
	add	x1, x1, #:lo12:str581
	str	x1, [x2]
	b	.L108
.L106:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x20, x1
	mov	x1, x19
	adrp	x0, str553
	add	x0, x0, #:lo12:str553
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str555
	add	x1, x1, #:lo12:str555
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str558
	add	x1, x1, #:lo12:str558
	bl	__rt_str_concat
	mov	x1, x19
	mov	x20, x0
	adrp	x0, str560
	add	x0, x0, #:lo12:str560
	bl	__rt_str_concat
	adrp	x1, str562
	add	x1, x1, #:lo12:str562
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str552
	add	x1, x1, #:lo12:str552
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	.L108
.L107:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x19, x1
	adrp	x0, str530
	add	x0, x0, #:lo12:str530
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str532
	add	x1, x1, #:lo12:str532
	bl	__rt_str_concat
	mov	x1, x19
	mov	x20, x0
	adrp	x0, str534
	add	x0, x0, #:lo12:str534
	bl	__rt_str_concat
	adrp	x1, str536
	add	x1, x1, #:lo12:str536
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	adrp	x1, str529
	add	x1, x1, #:lo12:str529
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
.L108:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type errors_messages_warning_message, @function
.size errors_messages_warning_message, .-errors_messages_warning_message
/* end function errors_messages_warning_message */

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
