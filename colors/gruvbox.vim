set bg=dark
hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'gruv'

" Base
hi Normal        guifg=#ddddcd guibg=default
hi NormalFloat   guifg=#ddddcd guibg=default
hi NonText       guifg=#666666
hi Comment       guifg=#666666
hi TSComment     guifg=#666666

" Code Structure
hi Statement     guifg=#ea6962 gui=none
hi Constant      guifg=#e2cca9 gui=none
hi @variable     guifg=#e2cca9 gui=none
hi @property     guifg=#e2cca9 gui=none
hi Identifier    guifg=#e2cca9 gui=none
hi Function      guifg=#7daea3 gui=none
hi PreProc       guifg=#7daea3 gui=none
hi Delimiter     guifg=#e2cca9 gui=none
hi Operator      guifg=#e78a4e gui=none 
hi Type          guifg=#d8a657 gui=none
hi Structure     guifg=#d8a657 gui=none
hi Special       guifg=#d8a657 gui=none
hi SpecialChar   guifg=#d8a657 gui=none
hi String        guifg=#a9b665 gui=none
hi Number        guifg=#e2cca9 gui=none
hi Boolean       guifg=#e2cca9 gui=none

"Rust
hi @punctuation.delimiter.double guifg=#ea6962
hi @lsp.type.macro.rust          guifg=#d3869b
hi @lsp.type.lifetime.rust       guifg=#d8a657
hi @lsp.type.selfKeyword.rust    guifg=#d3869b
hi @lsp.type.typeParameter.rust  guifg=#d3869b

" JSX / React
hi @tag.tsx       guifg=#7daea3 gui=none
hi @tag.delimiter guifg=#e2cca9
hi @tag.attribute guifg=#e2cca9 gui=none

" Ui
hi Search        guibg=#666666
hi CurSearch     guibg=#a9b665
hi IncSearch     guibg=default
hi Pmenu         guifg=#BFBBBA guibg=#1D2021
hi PmenuSel      guifg=#BFBBBA guibg=#1D2021
hi ColorColumn   guifg=default guibg=#1D2021

hi PmenuSbar     guibg=default
hi PmenuThumb    guibg=#262626 gui=reverse
hi LineNr        guifg=#d6d2c8
hi LineNrAbove   guifg=#888888
hi LineNrBelow   guifg=#888888
hi WinSeparator  guibg=#111111 guifg=#888888
hi StatusLine    guifg=#d4be98 guibg=default
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
