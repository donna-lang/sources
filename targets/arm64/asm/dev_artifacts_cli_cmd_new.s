.data
.balign 8
str3:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str8:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str10:
	.ascii ": donna new requires a project name"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str12:
	.ascii "  Usage: donna new <name>"
	.byte 0
/* end data */

.data
.balign 8
str21:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str23:
	.ascii ": directory "
	.byte 0
/* end data */

.data
.balign 8
str27:
	.ascii " already exists"
	.byte 0
/* end data */

.data
.balign 8
str34:
	.ascii "/src"
	.byte 0
/* end data */

.data
.balign 8
str37:
	.ascii "/test"
	.byte 0
/* end data */

.data
.balign 8
str40:
	.ascii "/.github"
	.byte 0
/* end data */

.data
.balign 8
str43:
	.ascii "/.github/workflows"
	.byte 0
/* end data */

.data
.balign 8
str46:
	.ascii "/donna.toml"
	.byte 0
/* end data */

.data
.balign 8
str50:
	.ascii "/src/"
	.byte 0
/* end data */

.data
.balign 8
str53:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str57:
	.ascii "/test/"
	.byte 0
/* end data */

.data
.balign 8
str60:
	.ascii "_test.donna"
	.byte 0
/* end data */

.data
.balign 8
str64:
	.ascii "/.github/workflows/test.yml"
	.byte 0
/* end data */

.data
.balign 8
str68:
	.ascii "/README.md"
	.byte 0
/* end data */

.data
.balign 8
str72:
	.ascii "/.gitignore"
	.byte 0
/* end data */

.data
.balign 8
str77:
	.ascii "Your Donna project "
	.byte 0
/* end data */

.data
.balign 8
str79:
	.ascii " has been successfully created."
	.byte 0
/* end data */

.data
.balign 8
str81:
	.ascii "The project can be compiled and tested by running these commands:"
	.byte 0
/* end data */

.data
.balign 8
str82:
	.byte 9
	.ascii "cd "
	.byte 0
/* end data */

.data
.balign 8
str85:
	.byte 9
	.ascii "donna test"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str87:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str97:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str107:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str109:
	.ascii "name = "
	.byte 34
	.byte 0
/* end data */

.data
.balign 8
str111:
	.byte 34
	.byte 10
	.ascii "version = "
	.byte 34
	.ascii "0.1.0"
	.byte 34
	.byte 10
	.ascii "# description = "
	.byte 34
	.byte 34
	.byte 10
	.ascii "# authors = ["
	.byte 34
	.ascii "Your Name <you@example.com>"
	.byte 34
	.ascii "]"
	.byte 10
	.ascii "# licences = ["
	.byte 34
	.ascii "MIT"
	.byte 34
	.ascii "]"
	.byte 10
	.ascii "# repository = { type = "
	.byte 34
	.ascii "github"
	.byte 34
	.ascii ", user = "
	.byte 34
	.byte 34
	.ascii ", repo = "
	.byte 34
	.byte 34
	.ascii " }"
	.byte 10
	.ascii "# links = [{ title = "
	.byte 34
	.ascii "Website"
	.byte 34
	.ascii ", href = "
	.byte 34
	.byte 34
	.ascii " }]"
	.byte 10
	.byte 10
	.ascii "[dependencies]"
	.byte 10
	.ascii "donna = { git = "
	.byte 34
	.ascii "https://github.com/donna-lang/donna_stdlib"
	.byte 34
	.ascii ", version = "
	.byte 34
	.ascii ">=0.1.0 and <1.0.0"
	.byte 34
	.ascii " }"
	.byte 10
	.byte 10
	.ascii "[dev-dependencies]"
	.byte 10
	.ascii "unittest = { git = "
	.byte 34
	.ascii "https://github.com/donna-lang/unittest"
	.byte 34
	.ascii ", version = "
	.byte 34
	.ascii ">=0.1.0 and <1.0.0"
	.byte 34
	.ascii " }"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str113:
	.ascii "// "
	.byte 0
/* end data */

.data
.balign 8
str115:
	.ascii " entry point"
	.byte 10
	.ascii "pub fn main() -> Nil:"
	.byte 10
	.ascii "  echo "
	.byte 34
	.ascii "Hello from "
	.byte 0
/* end data */

.data
.balign 8
str118:
	.byte 34
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str120:
	.ascii "import "
	.byte 0
/* end data */

.data
.balign 8
str122:
	.byte 10
	.ascii "import unittest/should"
	.byte 10
	.byte 10
	.ascii "pub fn smoke_test() -> String:"
	.byte 10
	.ascii "  should.pass()"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str124:
	.ascii "name: Test"
	.byte 10
	.byte 10
	.ascii "on:"
	.byte 10
	.ascii "  push:"
	.byte 10
	.ascii "  pull_request:"
	.byte 10
	.byte 10
	.ascii "jobs:"
	.byte 10
	.ascii "  test:"
	.byte 10
	.ascii "    runs-on: ubuntu-latest"
	.byte 10
	.byte 10
	.ascii "    steps:"
	.byte 10
	.ascii "      - uses: actions/checkout@v4"
	.byte 10
	.byte 10
	.ascii "      - name: Cache QBE"
	.byte 10
	.ascii "        uses: actions/cache@v4"
	.byte 10
	.ascii "        with:"
	.byte 10
	.ascii "          path: ~/.local/bin/qbe"
	.byte 10
	.ascii "          key: qbe-${{ runner.os }}-2026-05-13"
	.byte 10
	.byte 10
	.ascii "      - name: Install QBE"
	.byte 10
	.ascii "        shell: bash"
	.byte 10
	.ascii "        run: |"
	.byte 10
	.ascii "          set -euo pipefail"
	.byte 10
	.ascii "          mkdir -p "
	.byte 34
	.ascii "$HOME/.local/bin"
	.byte 34
	.byte 10
	.ascii "          export PATH="
	.byte 34
	.ascii "$HOME/.local/bin:$PATH"
	.byte 34
	.byte 10
	.ascii "          echo "
	.byte 34
	.ascii "$HOME/.local/bin"
	.byte 34
	.ascii " >> "
	.byte 34
	.ascii "$GITHUB_PATH"
	.byte 34
	.byte 10
	.ascii "          if command -v qbe >/dev/null 2>&1; then"
	.byte 10
	.ascii "            qbe --version || true"
	.byte 10
	.ascii "            exit 0"
	.byte 10
	.ascii "          fi"
	.byte 10
	.ascii "          sudo apt-get update"
	.byte 10
	.ascii "          if apt-cache show qbe >/dev/null 2>&1; then"
	.byte 10
	.ascii "            sudo apt-get install -y qbe"
	.byte 10
	.ascii "          elif [ -x "
	.byte 34
	.ascii "$HOME/.local/bin/qbe"
	.byte 34
	.ascii " ]; then"
	.byte 10
	.ascii "            true"
	.byte 10
	.ascii "          else"
	.byte 10
	.ascii "            sudo apt-get install -y build-essential git make"
	.byte 10
	.ascii "            git clone git://c9x.me/qbe.git "
	.byte 34
	.ascii "$RUNNER_TEMP/qbe"
	.byte 34
	.byte 10
	.ascii "            make -C "
	.byte 34
	.ascii "$RUNNER_TEMP/qbe"
	.byte 34
	.byte 10
	.ascii "            make -C "
	.byte 34
	.ascii "$RUNNER_TEMP/qbe"
	.byte 34
	.ascii " PREFIX="
	.byte 34
	.ascii "$HOME/.local"
	.byte 34
	.ascii " install"
	.byte 10
	.ascii "          fi"
	.byte 10
	.ascii "          qbe --version || true"
	.byte 10
	.byte 10
	.ascii "      - name: Install Donna"
	.byte 10
	.ascii "        shell: bash"
	.byte 10
	.ascii "        run: |"
	.byte 10
	.ascii "          set -euo pipefail"
	.byte 10
	.ascii "          api="
	.byte 34
	.ascii "https://api.github.com/repos/donna-lang/donna/releases/latest"
	.byte 34
	.byte 10
	.ascii "          url=$(curl -fsSL "
	.byte 34
	.ascii "$api"
	.byte 34
	.ascii " | grep browser_download_url | grep -E 'linux.*(x86_64|amd64).*"
	.byte 92
	.ascii ".(tar"
	.byte 92
	.ascii ".gz|tgz|zip)' | head -n 1 | cut -d '"
	.byte 34
	.ascii "' -f 4)"
	.byte 10
	.ascii "          if [ -z "
	.byte 34
	.ascii "$url"
	.byte 34
	.ascii " ]; then"
	.byte 10
	.ascii "            echo "
	.byte 34
	.ascii "Could not find a Linux x86_64 Donna release artifact in donna-lang/donna"
	.byte 34
	.ascii " >&2"
	.byte 10
	.ascii "            exit 1"
	.byte 10
	.ascii "          fi"
	.byte 10
	.ascii "          mkdir -p "
	.byte 34
	.ascii "$HOME/.donna/bin"
	.byte 34
	.ascii " donna-release"
	.byte 10
	.ascii "          curl -fsSL "
	.byte 34
	.ascii "$url"
	.byte 34
	.ascii " -o donna-release/archive"
	.byte 10
	.ascii "          case "
	.byte 34
	.ascii "$url"
	.byte 34
	.ascii " in"
	.byte 10
	.ascii "            *.zip) unzip -q donna-release/archive -d donna-release ;;"
	.byte 10
	.ascii "            *) tar -xzf donna-release/archive -C donna-release ;;"
	.byte 10
	.ascii "          esac"
	.byte 10
	.ascii "          bin=$(find donna-release -type f -name donna -perm -111 | head -n 1)"
	.byte 10
	.ascii "          if [ -z "
	.byte 34
	.ascii "$bin"
	.byte 34
	.ascii " ]; then"
	.byte 10
	.ascii "            echo "
	.byte 34
	.ascii "Donna binary not found in release artifact"
	.byte 34
	.ascii " >&2"
	.byte 10
	.ascii "            exit 1"
	.byte 10
	.ascii "          fi"
	.byte 10
	.ascii "          cp "
	.byte 34
	.ascii "$bin"
	.byte 34
	.ascii " "
	.byte 34
	.ascii "$HOME/.donna/bin/donna"
	.byte 34
	.byte 10
	.ascii "          chmod +x "
	.byte 34
	.ascii "$HOME/.donna/bin/donna"
	.byte 34
	.byte 10
	.ascii "          echo "
	.byte 34
	.ascii "$HOME/.donna/bin"
	.byte 34
	.ascii " >> "
	.byte 34
	.ascii "$GITHUB_PATH"
	.byte 34
	.byte 10
	.byte 10
	.ascii "      - name: Format"
	.byte 10
	.ascii "        run: |"
	.byte 10
	.ascii "          donna format"
	.byte 10
	.ascii "          git diff --exit-code"
	.byte 10
	.byte 10
	.ascii "      - name: Check"
	.byte 10
	.ascii "        run: donna check"
	.byte 10
	.byte 10
	.ascii "      - name: Test"
	.byte 10
	.ascii "        run: donna test"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str125:
	.ascii "build/"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str126:
	.ascii "# "
	.byte 0
/* end data */

.data
.balign 8
str128:
	.byte 10
	.byte 10
	.ascii "<a href="
	.byte 34
	.ascii "https://OWNER.github.io/REPO/"
	.byte 34
	.ascii "><img src="
	.byte 34
	.ascii "https://img.shields.io/badge/Docs-Read-2F81F7?style=for-the-badge"
	.byte 34
	.ascii " alt="
	.byte 34
	.ascii "Docs - Read"
	.byte 34
	.ascii "/></a>"
	.byte 10
	.ascii "<img src="
	.byte 34
	.ascii "https://img.shields.io/badge/Donna-"
	.byte 0
/* end data */

.data
.balign 8
str131:
	.ascii "-FF6347?style=for-the-badge"
	.byte 34
	.ascii " alt="
	.byte 34
	.ascii "Donna - "
	.byte 0
/* end data */

.data
.balign 8
str134:
	.byte 34
	.ascii "/>"
	.byte 10
	.ascii "<img src="
	.byte 34
	.ascii "https://img.shields.io/github/actions/workflow/status/OWNER/REPO/test.yml?branch=main&label=Test&style=for-the-badge"
	.byte 34
	.ascii " alt="
	.byte 34
	.ascii "Test status"
	.byte 34
	.ascii "/>"
	.byte 10
	.byte 10
	.ascii "## Quick start"
	.byte 10
	.ascii "Clone the repository and cd into it."
	.byte 10
	.ascii "Run:"
	.byte 10
	.ascii "```sh"
	.byte 10
	.ascii "donna build"
	.byte 10
	.ascii "donna test"
	.byte 10
	.ascii "donna run"
	.byte 10
	.ascii "```"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str142:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str155:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_new_run
cli_cmd_new_run:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	bl	cli_cmd_new_first_positional
	adrp	x1, str3
	add	x1, x1, #:lo12:str3
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L4
	mov	x19, x0
	bl	donna_files_exists
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L3
	bl	cli_cmd_new_create_project
	str	x0, [x19]
	b	.L5
.L3:
	mov	x20, x0
	adrp	x0, str21
	add	x0, x0, #:lo12:str21
	bl	utilities_colors_red
	adrp	x1, str23
	add	x1, x1, #:lo12:str23
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	adrp	x1, str27
	add	x1, x1, #:lo12:str27
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L5
.L4:
	adrp	x0, str8
	add	x0, x0, #:lo12:str8
	bl	utilities_colors_red
	adrp	x1, str10
	add	x1, x1, #:lo12:str10
	bl	__rt_str_concat
	mov	x19, x0
	adrp	x0, str12
	add	x0, x0, #:lo12:str12
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
.L5:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_new_run, @function
.size cli_cmd_new_run, .-cli_cmd_new_run
/* end function cli_cmd_new_run */

.text
.balign 16
cli_cmd_new_create_project:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x0
	mov	x0, x20
	bl	donna_files_basename
	mov	x19, x0
	mov	x0, x20
	bl	donna_files_mkdir
	adrp	x1, str34
	add	x1, x1, #:lo12:str34
	mov	x0, x20
	bl	__rt_str_concat
	bl	donna_files_mkdir
	adrp	x1, str37
	add	x1, x1, #:lo12:str37
	mov	x0, x20
	bl	__rt_str_concat
	bl	donna_files_mkdir
	adrp	x1, str40
	add	x1, x1, #:lo12:str40
	mov	x0, x20
	bl	__rt_str_concat
	bl	donna_files_mkdir
	adrp	x1, str43
	add	x1, x1, #:lo12:str43
	mov	x0, x20
	bl	__rt_str_concat
	bl	donna_files_mkdir
	adrp	x1, str46
	add	x1, x1, #:lo12:str46
	mov	x0, x20
	bl	__rt_str_concat
	mov	x21, x0
	mov	x0, x19
	bl	cli_cmd_new_toml_content
	mov	x1, x0
	mov	x0, x21
	bl	donna_files_write
	adrp	x1, str50
	add	x1, x1, #:lo12:str50
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	adrp	x1, str53
	add	x1, x1, #:lo12:str53
	bl	__rt_str_concat
	mov	x21, x0
	mov	x0, x19
	bl	cli_cmd_new_main_content
	mov	x1, x0
	mov	x0, x21
	bl	donna_files_write
	adrp	x1, str57
	add	x1, x1, #:lo12:str57
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	adrp	x1, str60
	add	x1, x1, #:lo12:str60
	bl	__rt_str_concat
	mov	x21, x0
	mov	x0, x19
	bl	cli_cmd_new_test_content
	mov	x1, x0
	mov	x0, x21
	bl	donna_files_write
	adrp	x1, str64
	add	x1, x1, #:lo12:str64
	mov	x0, x20
	bl	__rt_str_concat
	mov	x21, x0
	bl	cli_cmd_new_workflow_content
	mov	x1, x0
	mov	x0, x21
	bl	donna_files_write
	adrp	x1, str68
	add	x1, x1, #:lo12:str68
	mov	x0, x20
	bl	__rt_str_concat
	mov	x21, x0
	mov	x0, x19
	bl	cli_cmd_new_readme_content
	mov	x1, x0
	mov	x0, x21
	bl	donna_files_write
	mov	x0, x20
	adrp	x1, str72
	add	x1, x1, #:lo12:str72
	bl	__rt_str_concat
	mov	x20, x0
	bl	cli_cmd_new_gitignore_content
	mov	x1, x0
	mov	x0, x20
	bl	donna_files_write
	mov	x0, x19
	bl	cli_cmd_new_success_message
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_new_create_project, @function
.size cli_cmd_new_create_project, .-cli_cmd_new_create_project
/* end function cli_cmd_new_create_project */

.text
.balign 16
cli_cmd_new_success_message:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x1, x0
	mov	x19, x1
	adrp	x0, str77
	add	x0, x0, #:lo12:str77
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str79
	add	x1, x1, #:lo12:str79
	bl	__rt_str_concat
	mov	x1, x19
	mov	x20, x0
	adrp	x0, str82
	add	x0, x0, #:lo12:str82
	bl	__rt_str_concat
	bl	utilities_colors_dim
	mov	x22, x0
	adrp	x0, str85
	add	x0, x0, #:lo12:str85
	bl	utilities_colors_dim
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, str87
	add	x0, x0, #:lo12:str87
	str	x0, [x1]
	mov	x0, #16
	add	x1, x19, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x19, [x0]
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #24
	bl	malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, str97
	add	x0, x0, #:lo12:str97
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x19, [x0]
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, str81
	add	x0, x0, #:lo12:str81
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	adrp	x1, str107
	add	x1, x1, #:lo12:str107
	bl	donna_string_join
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
.type cli_cmd_new_success_message, @function
.size cli_cmd_new_success_message, .-cli_cmd_new_success_message
/* end function cli_cmd_new_success_message */

.text
.balign 16
cli_cmd_new_toml_content:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, str109
	add	x0, x0, #:lo12:str109
	bl	__rt_str_concat
	adrp	x1, str111
	add	x1, x1, #:lo12:str111
	bl	__rt_str_concat
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_new_toml_content, @function
.size cli_cmd_new_toml_content, .-cli_cmd_new_toml_content
/* end function cli_cmd_new_toml_content */

.text
.balign 16
cli_cmd_new_main_content:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	mov	x19, x1
	adrp	x0, str113
	add	x0, x0, #:lo12:str113
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str115
	add	x1, x1, #:lo12:str115
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	adrp	x1, str118
	add	x1, x1, #:lo12:str118
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_new_main_content, @function
.size cli_cmd_new_main_content, .-cli_cmd_new_main_content
/* end function cli_cmd_new_main_content */

.text
.balign 16
cli_cmd_new_test_content:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, str120
	add	x0, x0, #:lo12:str120
	bl	__rt_str_concat
	adrp	x1, str122
	add	x1, x1, #:lo12:str122
	bl	__rt_str_concat
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_new_test_content, @function
.size cli_cmd_new_test_content, .-cli_cmd_new_test_content
/* end function cli_cmd_new_test_content */

.text
.balign 16
cli_cmd_new_workflow_content:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, str124
	add	x0, x0, #:lo12:str124
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_new_workflow_content, @function
.size cli_cmd_new_workflow_content, .-cli_cmd_new_workflow_content
/* end function cli_cmd_new_workflow_content */

.text
.balign 16
cli_cmd_new_gitignore_content:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, str125
	add	x0, x0, #:lo12:str125
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_new_gitignore_content, @function
.size cli_cmd_new_gitignore_content, .-cli_cmd_new_gitignore_content
/* end function cli_cmd_new_gitignore_content */

.text
.balign 16
cli_cmd_new_readme_content:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	mov	x19, x1
	adrp	x0, str126
	add	x0, x0, #:lo12:str126
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str128
	add	x1, x1, #:lo12:str128
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str131
	add	x1, x1, #:lo12:str131
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	adrp	x1, str134
	add	x1, x1, #:lo12:str134
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_new_readme_content, @function
.size cli_cmd_new_readme_content, .-cli_cmd_new_readme_content
/* end function cli_cmd_new_readme_content */

.text
.balign 16
cli_cmd_new_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L30
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L26
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L27
.L26:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str155
	add	x1, x1, #:lo12:str155
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L27:
	cmp	w1, #0
	bne	.L29
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_new_first_positional
	b	.L31
.L29:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L31
.L30:
	adrp	x0, str142
	add	x0, x0, #:lo12:str142
.L31:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_new_first_positional, @function
.size cli_cmd_new_first_positional, .-cli_cmd_new_first_positional
/* end function cli_cmd_new_first_positional */

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
