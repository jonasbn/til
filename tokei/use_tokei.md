# Use tokei

`tokei` is a _blazing fast_ source code line counter. It supports a lot of different languages.

If I did a count in my TIL repository it would output the following:

```bash
$ tokei
-------------------------------------------------------------------------------
 Language            Files        Lines         Code     Comments       Blanks
-------------------------------------------------------------------------------
 C                       4          142          109            1           32
 Dockerfile              1           16            8            4            4
 Go                      1           22           17            1            4
 JavaScript              1           40           31            0            9
 Markdown              303         7783         7783            0            0
 Plain Text              2          316          316            0            0
 YAML                    1            1            1            0            0
-------------------------------------------------------------------------------
 Total                 313         8320         8265            6           49
-------------------------------------------------------------------------------
```

And to underline the _blazing fast_ part:

```bash
$ time tokei
-------------------------------------------------------------------------------
 Language            Files        Lines         Code     Comments       Blanks
-------------------------------------------------------------------------------
 C                       4          142          109            1           32
 Dockerfile              1           16            8            4            4
 Go                      1           22           17            1            4
 JavaScript              1           40           31            0            9
 Markdown              303         7802         7802            0            0
 Plain Text              2          316          316            0            0
 YAML                    1            1            1            0            0
-------------------------------------------------------------------------------
 Total                 313         8339         8284            6           49
-------------------------------------------------------------------------------

real    0m0.014s
user    0m0.011s
sys     0m0.021s
```

## Supported Languages

The help message (`--help`) indicates that you can get a list of supported languages and their extensions using: `--languages`.

```shell
-l, --languages           Prints out supported languages and their extensions.
```

I however get the following:

```shell
tokei --languages
ABNF
ABAP
ActionScript
Ada
Agda
Alex
Alloy
Arduino C++
AsciiDoc
ASN.1
ASP
ASP.NET
Assembly
GNU Style Assembly
AutoHotKey
Autoconf
Automake
BASH
Batch
Bean
BrightScript
C
C Header
CMake
C#
C Shell
Cabal
Cassius
Ceylon
Clojure
ClojureC
ClojureScript
COBOL
CodeQL
CoffeeScript
Cogent
ColdFusion
ColdFusion CFScript
Coq
C++
C++ Header
Crystal
CSS
D
DAML
Dart
Device Tree
Dhall
Dockerfile
.NET Resource
Dream Maker
Dust.js
Edn
Emacs Lisp
Elixir
Elm
Elvish
Emacs Dev Env
Emojicode
Erlang
FEN
F#
Fish
FlatBuffers Schema
Forth
FORTRAN Legacy
FORTRAN Modern
FreeMarker
F*
Futhark
GDB Script
GDScript
Gherkin (Cucumber)
Gleam
GLSL
Go
Go HTML
GraphQL
Groovy
Gwion
Hamlet
Handlebars
Happy
Haskell
Haxe
HCL
Headache
HEX
HLSL
HolyC
HTML
Idris
INI
Intel HEX
Isabelle
JAI
Java
JavaScript
JSON
Jsonnet
JSX
Julia
Julius
Jupyter Notebooks
K
Kakoune script
Kotlin
LLVM
Lean
LESS
LD Script
Liquid
Lisp
LiveScript
Logtalk
Lua
Lucius
Madlang
Makefile
Markdown
Meson
Mint
Module-Definition
MoonScript
MSBuild
Mustache
Nim
Nix
Not Quite Perl
OCaml
Objective-C
Objective-C++
Odin
OpenType Feature File
Org
Oz
PSL Assertion
Pan
Pascal
Perl
Rakudo
Pest
PHP
Polly
Pony
PostCSS
PowerShell
Processing
Prolog
Protocol Buffers
Pug
PureScript
Python
Q
QCL
QML
R
Rusty Object Notation
RPM Specfile
Racket
Rakefile
Razor
ReStructuredText
Ren'Py
Ruby
Ruby HTML
Rust
SRecode Template
Sass
Scala
Scheme
Scons
Shell
Standard ML (SML)
Solidity
Specman e
Spice Netlist
SQL
Stan
Stratego/XT
Stylus
Svelte
SVG
Swift
SWIG
SystemVerilog
TCL
Tera
TeX
Plain Text
Thrift
TOML
TSX
TTCN-3
Twig
TypeScript
Unreal Markdown
Unreal Plugin
Unreal Project
Unreal Script
Unreal Shader
Unreal Shader Header
Ur/Web
Ur/Web Project
VB6
VBScript
Vala
Apache Velocity
Verilog
Verilog Args File
VHDL
Vim script
Visual Basic
Visual Studio Project
Visual Studio Solution
Vue
WebAssembly
Wolfram
XSL
XAML
Xcode Config
XML
Xtend
YAML
Zig
Zsh
```

So the resource I use to find extensions for `tokey` is the [JSON resource in the GitHub repository](https://github.com/XAMPPRocky/tokei/blob/master/languages.json).

## Resources and References

- [GitHub: tokei](https://github.com/XAMPPRocky/tokei)
