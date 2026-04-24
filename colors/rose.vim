set bg=dark
hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'rose'

" Base
hi Normal        guifg=#ddddcd guibg=default
hi NormalFloat   guifg=#ddddcd guibg=default
hi NonText       guifg=#666666
hi Comment       guifg=#666666
hi TSComment     guifg=#666666

" Code Structure
hi Statement     guifg=#60849c gui=none
hi Constant      guifg=#cdcdcd gui=none
hi @variable     guifg=#cdcdcd gui=none
hi @property     guifg=#cdcdcd gui=none
hi Identifier    guifg=#cdcdcd gui=none
hi Function      guifg=#cf9c8b gui=none
hi PreProc       guifg=#cf9c8b gui=none
hi Delimiter     guifg=#cdcdcd gui=none
hi Operator      guifg=#A0AAAA gui=none 
hi Type          guifg=#A0BDB8 gui=none
hi Structure     guifg=#A0BDB8 gui=none
hi Special       guifg=#A0BDB8 gui=none
hi SpecialChar   guifg=#A0BDB8 gui=none
hi String        guifg=#C9AA95 gui=none
hi Number        guifg=#C9AA95 gui=none
hi Boolean       guifg=#cdcdcd gui=none

"Rust
hi @punctuation.delimiter.double guifg=#A0AAAA
hi @lsp.type.macro.rust          guifg=#cf9c8b
hi @lsp.type.lifetime.rust       guifg=#A0BDB8
hi @lsp.type.selfKeyword.rust    guifg=#A0BDB8

" JSX / React
hi @tag.tsx       guifg=#cf9c8b gui=none
hi @tag.delimiter guifg=#cdcdcd
hi @tag.attribute guifg=#cdcdcd gui=none

" Ui
hi Search        guibg=#666666
hi CurSearch     guibg=#a9b665
hi IncSearch     guibg=#666666
hi Pmenu         guifg=#BFBBBA guibg=#1D2021
hi PmenuSel      guifg=#BFBBBA guibg=#1D2021
hi ColorColumn   guifg=default guibg=#1D2021

hi PmenuSbar     guibg=#1D2021
hi PmenuThumb    guibg=#1D2021 gui=reverse
hi LineNr        guifg=#d6d2c8
hi LineNrAbove   guifg=#888888
hi LineNrBelow   guifg=#888888
hi WinSeparator  guibg=#111111 guifg=#888888
hi StatusLine    guifg=#d4be98 guibg=#34383C
hi VertSplit     guifg=#303030
hi Visual        guibg=#444444

" Diff / Diagnostics
hi DiffAdd       guifg=#d4be98 guibg=#282828
hi DiffChange    guifg=#d4be98 guibg=#262636
hi DiffDelete    guifg=#C34143 guibg=#42242B
hi DiffText      guifg=#d4be98 guibg=#282828
hi Error         guifg=#C34143 gui=underline
hi ErrorMsg      guifg=#c0908f
hi WarningMsg    guifg=#c0908f
hi DiagnosticInfo guifg=#d4be98
hi DiagnosticHint guifg=#8daea3
hi DiagnosticWarn guifg=#d4be98
hi DiagnosticError guifg=#ca6962
hi DiagnosticUnderlineHint    gui=none
hi DiagnosticUnderlineError   gui=underline
hi Question       guifg=#d4be98
hi MoreMsg        guifg=#d4be98   


" Misc
hi MatchParen    gui=none
hi Title         guifg=#CCCCCC 
hi Todo          guifg=#8B9698 
hi Directory     guifg=#ddddcd
hi Substitute    guifg=#1A1A1A guibg=#87a5a5
hi SnacksPickerFile guifg=#ddddcd
hi SnacksPickerDirectory guifg=#45707a
