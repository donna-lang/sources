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
	.ascii "      - name: Checkout Donna tools"
	.byte 10
	.ascii "        uses: actions/checkout@v4"
	.byte 10
	.ascii "        with:"
	.byte 10
	.ascii "          repository: donna-lang/donna"
	.byte 10
	.ascii "          path: .donna-tools/compiler"
	.byte 10
	.byte 10
	.ascii "      - name: Install build tools and QBE"
	.byte 10
	.ascii "        shell: bash"
	.byte 10
	.ascii "        run: |"
	.byte 10
	.ascii "          set -euo pipefail"
	.byte 10
	.ascii "          sudo apt-get update"
	.byte 10
	.ascii "          sudo apt-get install -y build-essential git make"
	.byte 10
	.ascii "          make -C .donna-tools/compiler install-qbe"
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
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq cli_cmd_new_first_positional
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb4
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_files_exists
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb3
	subq $32, %rsp
	callq cli_cmd_new_create_project
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb5
Lbb3:
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str21(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str23(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_path
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str27(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb5
Lbb4:
	subq $32, %rsp
	leaq str8(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str10(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str12(%rip), %rcx
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb5:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_new_run */

.text
.balign 16
cli_cmd_new_create_project:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rcx, %rdi
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_files_basename
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_files_mkdir
	subq $-32, %rsp
	subq $32, %rsp
	leaq str34(%rip), %rdx
	movq %rdi, %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	subq $-32, %rsp
	subq $32, %rsp
	leaq str37(%rip), %rdx
	movq %rdi, %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	subq $-32, %rsp
	subq $32, %rsp
	leaq str40(%rip), %rdx
	movq %rdi, %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	subq $-32, %rsp
	subq $32, %rsp
	leaq str43(%rip), %rdx
	movq %rdi, %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	subq $-32, %rsp
	subq $32, %rsp
	leaq str46(%rip), %rdx
	movq %rdi, %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rsi, %rcx
	callq cli_cmd_new_toml_content
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_write
	subq $-32, %rsp
	subq $32, %rsp
	leaq str50(%rip), %rdx
	movq %rdi, %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str53(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rsi, %rcx
	callq cli_cmd_new_main_content
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_write
	subq $-32, %rsp
	subq $32, %rsp
	leaq str57(%rip), %rdx
	movq %rdi, %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str60(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rsi, %rcx
	callq cli_cmd_new_test_content
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_write
	subq $-32, %rsp
	subq $32, %rsp
	leaq str64(%rip), %rdx
	movq %rdi, %rcx
	callq __rt_str_concat
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_new_workflow_content
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_write
	subq $-32, %rsp
	subq $32, %rsp
	leaq str68(%rip), %rdx
	movq %rdi, %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rsi, %rcx
	callq cli_cmd_new_readme_content
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_write
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str72(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_new_gitignore_content
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_write
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_new_success_message
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_new_create_project */

.text
.balign 16
cli_cmd_new_success_message:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rcx, %rdx
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str77(%rip), %rcx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str79(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str82(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	leaq str85(%rip), %rcx
	callq utilities_colors_dim
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	leaq str87(%rip), %rax
	movq %rax, 8(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r13, 8(%rbx)
	movq %rsi, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	leaq str97(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rsi, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	leaq str81(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rbx, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rdi, 8(%rcx)
	movq %rsi, 16(%rcx)
	subq $32, %rsp
	leaq str107(%rip), %rdx
	callq donna_string_join
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_new_success_message */

.text
.balign 16
cli_cmd_new_toml_content:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq str109(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str111(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	leave
	ret
/* end function cli_cmd_new_toml_content */

.text
.balign 16
cli_cmd_new_main_content:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rdx
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str113(%rip), %rcx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str115(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str118(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function cli_cmd_new_main_content */

.text
.balign 16
cli_cmd_new_test_content:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq str120(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str122(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	leave
	ret
/* end function cli_cmd_new_test_content */

.text
.balign 16
cli_cmd_new_workflow_content:
	endbr64
	leaq str124(%rip), %rax
	ret
/* end function cli_cmd_new_workflow_content */

.text
.balign 16
cli_cmd_new_gitignore_content:
	endbr64
	leaq str125(%rip), %rax
	ret
/* end function cli_cmd_new_gitignore_content */

.text
.balign 16
cli_cmd_new_readme_content:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rdx
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str126(%rip), %rcx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str128(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str131(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str134(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function cli_cmd_new_readme_content */

.text
.balign 16
cli_cmd_new_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb30
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb26
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb27
Lbb26:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str155(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb27:
	cmpl $0, %eax
	jnz Lbb29
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_new_first_positional
	subq $-32, %rsp
	jmp Lbb31
Lbb29:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb31
Lbb30:
	leaq str142(%rip), %rax
Lbb31:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_new_first_positional */

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

