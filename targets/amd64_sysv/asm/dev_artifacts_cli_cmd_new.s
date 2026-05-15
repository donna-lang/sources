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
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	callq cli_cmd_new_first_positional
	movq %rax, %rdi
	leaq str3(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb4
	movq %rdi, %rbx
	callq donna_files_exists
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb3
	callq cli_cmd_new_create_project
	movq %rax, (%rbx)
	jmp .Lbb5
.Lbb3:
	movq %rdi, %r12
	leaq str21(%rip), %rdi
	callq utilities_colors_red
	movq %rax, %rdi
	leaq str23(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq utilities_colors_path
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str27(%rip), %rsi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb5
.Lbb4:
	leaq str8(%rip), %rdi
	callq utilities_colors_red
	movq %rax, %rdi
	leaq str10(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %rbx
	leaq str12(%rip), %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
.Lbb5:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_new_run, @function
.size cli_cmd_new_run, .-cli_cmd_new_run
/* end function cli_cmd_new_run */

.text
.balign 16
cli_cmd_new_create_project:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %r12
	movq %r12, %rdi
	callq donna_files_basename
	movq %rax, %rbx
	movq %r12, %rdi
	callq donna_files_mkdir
	leaq str34(%rip), %rsi
	movq %r12, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_files_mkdir
	leaq str37(%rip), %rsi
	movq %r12, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_files_mkdir
	leaq str40(%rip), %rsi
	movq %r12, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_files_mkdir
	leaq str43(%rip), %rsi
	movq %r12, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_files_mkdir
	leaq str46(%rip), %rsi
	movq %r12, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq cli_cmd_new_toml_content
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_files_write
	leaq str50(%rip), %rsi
	movq %r12, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rbx, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str53(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq cli_cmd_new_main_content
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_files_write
	leaq str57(%rip), %rsi
	movq %r12, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rbx, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str60(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq cli_cmd_new_test_content
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_files_write
	leaq str64(%rip), %rsi
	movq %r12, %rdi
	callq __rt_str_concat
	movq %rax, %r13
	callq cli_cmd_new_workflow_content
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_files_write
	leaq str68(%rip), %rsi
	movq %r12, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq cli_cmd_new_readme_content
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_files_write
	movq %r12, %rdi
	leaq str72(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %r12
	callq cli_cmd_new_gitignore_content
	movq %r12, %rdi
	movq %rax, %rsi
	callq donna_files_write
	movq %rbx, %rdi
	callq cli_cmd_new_success_message
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_new_create_project, @function
.size cli_cmd_new_create_project, .-cli_cmd_new_create_project
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
	pushq %r14
	pushq %r15
	movq %rdi, %rsi
	movq %rsi, %rbx
	leaq str77(%rip), %rdi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str79(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %r12
	leaq str82(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %rax, %r14
	leaq str85(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, %r15
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str87(%rip), %rax
	movq %rax, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %r13
	movq $1, (%r13)
	movq %r15, 8(%r13)
	movq %rbx, 16(%r13)
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %r14, 8(%rbx)
	movq %r13, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %r13
	movq $1, (%r13)
	leaq str97(%rip), %rax
	movq %rax, 8(%r13)
	movq %rbx, 16(%r13)
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str81(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r13, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	leaq str107(%rip), %rsi
	callq donna_string_join
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_new_success_message, @function
.size cli_cmd_new_success_message, .-cli_cmd_new_success_message
/* end function cli_cmd_new_success_message */

.text
.balign 16
cli_cmd_new_toml_content:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq str109(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str111(%rip), %rsi
	callq __rt_str_concat
	leave
	ret
.type cli_cmd_new_toml_content, @function
.size cli_cmd_new_toml_content, .-cli_cmd_new_toml_content
/* end function cli_cmd_new_toml_content */

.text
.balign 16
cli_cmd_new_main_content:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rsi
	movq %rsi, %rbx
	leaq str113(%rip), %rdi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str115(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str118(%rip), %rsi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type cli_cmd_new_main_content, @function
.size cli_cmd_new_main_content, .-cli_cmd_new_main_content
/* end function cli_cmd_new_main_content */

.text
.balign 16
cli_cmd_new_test_content:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq str120(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str122(%rip), %rsi
	callq __rt_str_concat
	leave
	ret
.type cli_cmd_new_test_content, @function
.size cli_cmd_new_test_content, .-cli_cmd_new_test_content
/* end function cli_cmd_new_test_content */

.text
.balign 16
cli_cmd_new_workflow_content:
	endbr64
	leaq str124(%rip), %rax
	ret
.type cli_cmd_new_workflow_content, @function
.size cli_cmd_new_workflow_content, .-cli_cmd_new_workflow_content
/* end function cli_cmd_new_workflow_content */

.text
.balign 16
cli_cmd_new_gitignore_content:
	endbr64
	leaq str125(%rip), %rax
	ret
.type cli_cmd_new_gitignore_content, @function
.size cli_cmd_new_gitignore_content, .-cli_cmd_new_gitignore_content
/* end function cli_cmd_new_gitignore_content */

.text
.balign 16
cli_cmd_new_readme_content:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rsi
	movq %rsi, %rbx
	leaq str126(%rip), %rdi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str128(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str131(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str134(%rip), %rsi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type cli_cmd_new_readme_content, @function
.size cli_cmd_new_readme_content, .-cli_cmd_new_readme_content
/* end function cli_cmd_new_readme_content */

.text
.balign 16
cli_cmd_new_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb30
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb26
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb27
.Lbb26:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq str155(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb27:
	cmpl $0, %eax
	jnz .Lbb29
	movq 16(%rdi), %rdi
	callq cli_cmd_new_first_positional
	jmp .Lbb31
.Lbb29:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp .Lbb31
.Lbb30:
	leaq str142(%rip), %rax
.Lbb31:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_new_first_positional, @function
.size cli_cmd_new_first_positional, .-cli_cmd_new_first_positional
/* end function cli_cmd_new_first_positional */

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
