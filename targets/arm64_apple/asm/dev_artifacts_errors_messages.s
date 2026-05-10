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
.balign 4
.globl _errors_messages_error_message
_errors_messages_error_message:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L38
	cmp	x1, #1
	beq	L37
	cmp	x1, #2
	beq	L36
	cmp	x1, #3
	beq	L35
	cmp	x1, #4
	beq	L34
	cmp	x1, #5
	beq	L33
	cmp	x1, #6
	beq	L32
	cmp	x1, #7
	beq	L31
	cmp	x1, #8
	beq	L30
	cmp	x1, #9
	beq	L29
	cmp	x1, #10
	beq	L28
	cmp	x1, #11
	beq	L27
	cmp	x1, #12
	beq	L26
	cmp	x1, #13
	beq	L25
	cmp	x1, #14
	beq	L24
	cmp	x1, #15
	beq	L23
	cmp	x1, #16
	beq	L22
	cmp	x1, #17
	beq	L21
	cmp	x1, #18
	beq	L20
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	mov	x20, x1
	mov	x1, x19
	adrp	x0, _str337@page
	add	x0, x0, _str337@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str339@page
	add	x1, x1, _str339@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	___rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str342@page
	add	x1, x1, _str342@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	mov	x20, x0
	adrp	x0, _str344@page
	add	x0, x0, _str344@pageoff
	bl	___rt_str_concat
	adrp	x1, _str346@page
	add	x1, x1, _str346@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str336@page
	add	x1, x1, _str336@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L39
L20:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str321@page
	add	x0, x0, _str321@pageoff
	bl	___rt_str_concat
	adrp	x1, _str323@page
	add	x1, x1, _str323@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str320@page
	add	x1, x1, _str320@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str325@page
	add	x1, x1, _str325@pageoff
	str	x1, [x2]
	b	L39
L21:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str303@page
	add	x0, x0, _str303@pageoff
	bl	___rt_str_concat
	adrp	x1, _str305@page
	add	x1, x1, _str305@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str302@page
	add	x1, x1, _str302@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str307@page
	add	x1, x1, _str307@pageoff
	str	x1, [x2]
	b	L39
L22:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, _str282@page
	add	x0, x0, _str282@pageoff
	bl	___rt_str_concat
	adrp	x1, _str285@page
	add	x1, x1, _str285@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str281@page
	add	x1, x1, _str281@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str289@page
	add	x1, x1, _str289@pageoff
	str	x1, [x2]
	b	L39
L23:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str262@page
	add	x0, x0, _str262@pageoff
	bl	___rt_str_concat
	adrp	x1, _str264@page
	add	x1, x1, _str264@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str261@page
	add	x1, x1, _str261@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str266@page
	add	x1, x1, _str266@pageoff
	str	x1, [x2]
	b	L39
L24:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str244@page
	add	x0, x0, _str244@pageoff
	bl	___rt_str_concat
	adrp	x1, _str246@page
	add	x1, x1, _str246@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str243@page
	add	x1, x1, _str243@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str248@page
	add	x1, x1, _str248@pageoff
	str	x1, [x2]
	b	L39
L25:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	adrp	x0, _str223@page
	add	x0, x0, _str223@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str225@page
	add	x1, x1, _str225@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	adrp	x1, _str228@page
	add	x1, x1, _str228@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str222@page
	add	x1, x1, _str222@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str230@page
	add	x1, x1, _str230@pageoff
	str	x1, [x2]
	b	L39
L26:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str203@page
	add	x0, x0, _str203@pageoff
	bl	___rt_str_concat
	adrp	x1, _str205@page
	add	x1, x1, _str205@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str202@page
	add	x1, x1, _str202@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str207@page
	add	x1, x1, _str207@pageoff
	str	x1, [x2]
	b	L39
L27:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str185@page
	add	x0, x0, _str185@pageoff
	bl	___rt_str_concat
	adrp	x1, _str187@page
	add	x1, x1, _str187@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str184@page
	add	x1, x1, _str184@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str189@page
	add	x1, x1, _str189@pageoff
	str	x1, [x2]
	b	L39
L28:
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str169@page
	add	x1, x1, _str169@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str170@page
	add	x1, x1, _str170@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str171@page
	add	x1, x1, _str171@pageoff
	str	x1, [x2]
	b	L39
L29:
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str156@page
	add	x1, x1, _str156@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str157@page
	add	x1, x1, _str157@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str158@page
	add	x1, x1, _str158@pageoff
	str	x1, [x2]
	b	L39
L30:
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str143@page
	add	x1, x1, _str143@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str144@page
	add	x1, x1, _str144@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str145@page
	add	x1, x1, _str145@pageoff
	str	x1, [x2]
	b	L39
L31:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str128@page
	add	x0, x0, _str128@pageoff
	bl	___rt_str_concat
	adrp	x1, _str130@page
	add	x1, x1, _str130@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str127@page
	add	x1, x1, _str127@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str132@page
	add	x1, x1, _str132@pageoff
	str	x1, [x2]
	b	L39
L32:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x19, x0
	adrp	x0, _str109@page
	add	x0, x0, _str109@pageoff
	bl	___rt_str_concat
	adrp	x1, _str111@page
	add	x1, x1, _str111@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	mov	x20, x0
	mov	x0, x19
	bl	_errors_messages_hint_for_unexpected
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str108@page
	add	x1, x1, _str108@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L39
L33:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x19, x1
	adrp	x0, _str86@page
	add	x0, x0, _str86@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str88@page
	add	x1, x1, _str88@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	mov	x20, x0
	adrp	x0, _str90@page
	add	x0, x0, _str90@pageoff
	bl	___rt_str_concat
	adrp	x1, _str92@page
	add	x1, x1, _str92@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str85@page
	add	x1, x1, _str85@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L39
L34:
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str70@page
	add	x1, x1, _str70@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str71@page
	add	x1, x1, _str71@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str72@page
	add	x1, x1, _str72@pageoff
	str	x1, [x2]
	b	L39
L35:
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str57@page
	add	x1, x1, _str57@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str58@page
	add	x1, x1, _str58@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str59@page
	add	x1, x1, _str59@pageoff
	str	x1, [x2]
	b	L39
L36:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str42@page
	add	x0, x0, _str42@pageoff
	bl	___rt_str_concat
	adrp	x1, _str44@page
	add	x1, x1, _str44@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str41@page
	add	x1, x1, _str41@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str46@page
	add	x1, x1, _str46@pageoff
	str	x1, [x2]
	b	L39
L37:
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str26@page
	add	x1, x1, _str26@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str27@page
	add	x1, x1, _str27@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str28@page
	add	x1, x1, _str28@pageoff
	str	x1, [x2]
	b	L39
L38:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str11@page
	add	x0, x0, _str11@pageoff
	bl	___rt_str_concat
	adrp	x1, _str13@page
	add	x1, x1, _str13@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str10@page
	add	x1, x1, _str10@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str15@page
	add	x1, x1, _str15@pageoff
	str	x1, [x2]
L39:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_messages_error_message */

.text
.balign 4
_errors_messages_hint_for_unexpected:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, _str355@page
	add	x1, x1, _str355@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L94
	adrp	x1, _str361@page
	add	x1, x1, _str361@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L93
	adrp	x1, _str367@page
	add	x1, x1, _str367@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L92
	adrp	x1, _str373@page
	add	x1, x1, _str373@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L91
	adrp	x1, _str379@page
	add	x1, x1, _str379@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L90
	adrp	x1, _str385@page
	add	x1, x1, _str385@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L89
	adrp	x1, _str391@page
	add	x1, x1, _str391@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L88
	adrp	x1, _str397@page
	add	x1, x1, _str397@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L87
	adrp	x1, _str403@page
	add	x1, x1, _str403@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L86
	adrp	x1, _str409@page
	add	x1, x1, _str409@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L85
	adrp	x1, _str415@page
	add	x1, x1, _str415@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L84
	adrp	x1, _str421@page
	add	x1, x1, _str421@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L83
	adrp	x1, _str427@page
	add	x1, x1, _str427@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L82
	adrp	x1, _str433@page
	add	x1, x1, _str433@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L81
	adrp	x1, _str439@page
	add	x1, x1, _str439@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L80
	adrp	x1, _str445@page
	add	x1, x1, _str445@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L79
	adrp	x1, _str451@page
	add	x1, x1, _str451@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L78
	adrp	x1, _str457@page
	add	x1, x1, _str457@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L77
	adrp	x1, _str463@page
	add	x1, x1, _str463@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L76
	adrp	x1, _str469@page
	add	x1, x1, _str469@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L75
	adrp	x1, _str475@page
	add	x1, x1, _str475@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L74
	adrp	x1, _str481@page
	add	x1, x1, _str481@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L73
	adrp	x1, _str487@page
	add	x1, x1, _str487@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L72
	adrp	x1, _str493@page
	add	x1, x1, _str493@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L71
	adrp	x1, _str499@page
	add	x1, x1, _str499@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L70
	adrp	x1, _str505@page
	add	x1, x1, _str505@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L69
	adrp	x1, _str511@page
	add	x1, x1, _str511@pageoff
	bl	_strcmp
	cmp	x0, #0
	beq	L68
	adrp	x0, _str517@page
	add	x0, x0, _str517@pageoff
	b	L95
L68:
	adrp	x0, _str516@page
	add	x0, x0, _str516@pageoff
	b	L95
L69:
	adrp	x0, _str510@page
	add	x0, x0, _str510@pageoff
	b	L95
L70:
	adrp	x0, _str504@page
	add	x0, x0, _str504@pageoff
	b	L95
L71:
	adrp	x0, _str498@page
	add	x0, x0, _str498@pageoff
	b	L95
L72:
	adrp	x0, _str492@page
	add	x0, x0, _str492@pageoff
	b	L95
L73:
	adrp	x0, _str486@page
	add	x0, x0, _str486@pageoff
	b	L95
L74:
	adrp	x0, _str480@page
	add	x0, x0, _str480@pageoff
	b	L95
L75:
	adrp	x0, _str474@page
	add	x0, x0, _str474@pageoff
	b	L95
L76:
	adrp	x0, _str468@page
	add	x0, x0, _str468@pageoff
	b	L95
L77:
	adrp	x0, _str462@page
	add	x0, x0, _str462@pageoff
	b	L95
L78:
	adrp	x0, _str456@page
	add	x0, x0, _str456@pageoff
	b	L95
L79:
	adrp	x0, _str450@page
	add	x0, x0, _str450@pageoff
	b	L95
L80:
	adrp	x0, _str444@page
	add	x0, x0, _str444@pageoff
	b	L95
L81:
	adrp	x0, _str438@page
	add	x0, x0, _str438@pageoff
	b	L95
L82:
	adrp	x0, _str432@page
	add	x0, x0, _str432@pageoff
	b	L95
L83:
	adrp	x0, _str426@page
	add	x0, x0, _str426@pageoff
	b	L95
L84:
	adrp	x0, _str420@page
	add	x0, x0, _str420@pageoff
	b	L95
L85:
	adrp	x0, _str414@page
	add	x0, x0, _str414@pageoff
	b	L95
L86:
	adrp	x0, _str408@page
	add	x0, x0, _str408@pageoff
	b	L95
L87:
	adrp	x0, _str402@page
	add	x0, x0, _str402@pageoff
	b	L95
L88:
	adrp	x0, _str396@page
	add	x0, x0, _str396@pageoff
	b	L95
L89:
	adrp	x0, _str390@page
	add	x0, x0, _str390@pageoff
	b	L95
L90:
	adrp	x0, _str384@page
	add	x0, x0, _str384@pageoff
	b	L95
L91:
	adrp	x0, _str378@page
	add	x0, x0, _str378@pageoff
	b	L95
L92:
	adrp	x0, _str372@page
	add	x0, x0, _str372@pageoff
	b	L95
L93:
	adrp	x0, _str366@page
	add	x0, x0, _str366@pageoff
	b	L95
L94:
	adrp	x0, _str360@page
	add	x0, x0, _str360@pageoff
L95:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_messages_hint_for_unexpected */

.text
.balign 4
.globl _errors_messages_warning_message
_errors_messages_warning_message:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L107
	cmp	x1, #1
	beq	L106
	cmp	x1, #2
	beq	L105
	cmp	x1, #3
	beq	L104
	mov	x0, x1
	cmp	x0, #4
	beq	L103
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str619@page
	add	x1, x1, _str619@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str620@page
	add	x1, x1, _str620@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str621@page
	add	x1, x1, _str621@pageoff
	str	x1, [x2]
	b	L108
L103:
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str610@page
	add	x1, x1, _str610@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str611@page
	add	x1, x1, _str611@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str612@page
	add	x1, x1, _str612@pageoff
	str	x1, [x2]
	b	L108
L104:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str595@page
	add	x0, x0, _str595@pageoff
	bl	___rt_str_concat
	adrp	x1, _str597@page
	add	x1, x1, _str597@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str594@page
	add	x1, x1, _str594@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str599@page
	add	x1, x1, _str599@pageoff
	str	x1, [x2]
	b	L108
L105:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str577@page
	add	x0, x0, _str577@pageoff
	bl	___rt_str_concat
	adrp	x1, _str579@page
	add	x1, x1, _str579@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str576@page
	add	x1, x1, _str576@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _str581@page
	add	x1, x1, _str581@pageoff
	str	x1, [x2]
	b	L108
L106:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x20, x1
	mov	x1, x19
	adrp	x0, _str553@page
	add	x0, x0, _str553@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str555@page
	add	x1, x1, _str555@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	___rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str558@page
	add	x1, x1, _str558@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	mov	x20, x0
	adrp	x0, _str560@page
	add	x0, x0, _str560@pageoff
	bl	___rt_str_concat
	adrp	x1, _str562@page
	add	x1, x1, _str562@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str552@page
	add	x1, x1, _str552@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L108
L107:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x19, x1
	adrp	x0, _str530@page
	add	x0, x0, _str530@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str532@page
	add	x1, x1, _str532@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	mov	x20, x0
	adrp	x0, _str534@page
	add	x0, x0, _str534@pageoff
	bl	___rt_str_concat
	adrp	x1, _str536@page
	add	x1, x1, _str536@pageoff
	bl	___rt_str_concat
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	adrp	x1, _str529@page
	add	x1, x1, _str529@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
L108:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_messages_warning_message */

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

