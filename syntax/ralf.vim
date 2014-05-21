" Vim syntax file
" Language:     Mentor Graphics Synopsys RAL file
" Author:       Amal Khailtash <amal.khailtash@gmail.com>
" Maintainer:   Amal Khailtash <amal.khailtash@gmail.com>
" Last Change:  Mon Apr 28 14:47:56 EDT 2014
" Version:      1.0
" Revision Comments:
"   Amal Khailtash <amal.khailtash@gmail.com> - Mon Apr 28 14:47:56 EDT 2014
"     1.0 - Initial revision (based on VMM Register Abstraction Layer User Guide)

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Read the TCL syntax to start with
"runtime! syntax/tcl.vim

" ----------------------------------------------------------------------------------------------------------------------
" Comments
" ----------------------------------------------------------------------------------------------------------------------
syntax region  ralfComment       start="/\*" end="\*/"
syntax match   ralfComment       "//.*"

" ----------------------------------------------------------------------------------------------------------------------
" Commands
" ----------------------------------------------------------------------------------------------------------------------
syntax keyword ralfKeyword       access rw ro wo w1 ru w1c rc a1 a0 other unused user0 user1 user2 user3 dc
syntax keyword ralfKeyword       attributes bits bins block bytes constraint
syntax match   ralfKeyword       "cover\s\+\(\(+\|-\)\(a\|b\|f\)\)\+"
syntax keyword ralfKeyword       coverpoint cross default description doc domain
syntax match   ralfKeyword       "endian\s\+\(little\|big\|fifo_ls\|fifo_ms\)"
syntax keyword ralfKeyword       enum field
syntax keyword ralfKeyword       hard_reset hdl_path initial label lang left_to_right name memory noise read
syntax keyword ralfKeyword       regfile register reset reset_value shared size soft_reset SV system
syntax match   ralfKeyword       "virtual\s\+register"
syntax match   ralfKeyword       "virtual\s\+write"
syntax keyword ralfKeyword       user_code write

" ----------------------------------------------------------------------------------------------------------------------
" Numbers
" ----------------------------------------------------------------------------------------------------------------------
syntax match   ralfNumber        "\(\<\d\+\|\)'[sS]\?[bB]\s*[0-1_xXzZ?]\+\>"
syntax match   ralfNumber        "\(\<\d\+\|\)'[sS]\?[oO]\s*[0-7_xXzZ?]\+\>"
syntax match   ralfNumber        "\(\<\d\+\|\)'[sS]\?[dD]\s*[0-9_xXzZ?]\+\>"
syntax match   ralfNumber        "\(\<\d\+\|\)'[sS]\?[hH]\s*[0-9a-fA-F_xXzZ?]\+\>"

" ----------------------------------------------------------------------------------------------------------------------
" Operators
" ----------------------------------------------------------------------------------------------------------------------
syntax match   ralfOperator      "[@=;}{\[\])(.]"

" ----------------------------------------------------------------------------------------------------------------------
" Command Flags
" ----------------------------------------------------------------------------------------------------------------------
"syntax match   ralfFlag         "[[:space:]]-[[:alpha:]]*\>"

" ----------------------------------------------------------------------------------------------------------------------
" Define the default highlighting.
" ----------------------------------------------------------------------------------------------------------------------
highlight default link ralfComment      Comment
highlight default link ralfKeyword      Keyword
highlight default link ralfNumber       Number
highlight default link ralfOperator     Type
"Special
"Operator
"highlight default link ralfUnsupported  WarningMsg
"highlight default link ralfConstant     Constant
"highlight default link ralfProperty     Type
"highlight default link ralfFlags        Special

let b:current_syntax = "ralf"

" vim: fileformat=unix tabstop=2 shiftwidth=2 expandtab
