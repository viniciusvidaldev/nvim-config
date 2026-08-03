hi clear
set bg=dark
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'tso'

" Base
hi Normal        guifg=#ddddcd guibg=default
hi NormalFloat   guifg=#ddddcd guibg=#282828
hi NonText       guifg=#666666
hi Comment       guifg=#666666
hi TSComment     guifg=#666666

" Code Structure
hi Statement     guifg=#eed333 gui=none
hi Constant      guifg=#dfddcd gui=none
hi @variable     guifg=#dfddcd gui=none
hi @property     guifg=#dfddcd gui=none
hi Identifier    guifg=#dfddcd gui=none
hi Function      guifg=#a99aac gui=none
hi PreProc       guifg=#a99aac gui=none
hi Delimiter     guifg=#dfddcd gui=none
hi Operator      guifg=#dfddcd gui=none 
hi Type          guifg=#95af9f gui=none
hi Structure     guifg=#95af9f gui=none
hi Special       guifg=#95af9f gui=none
hi SpecialChar   guifg=#95af9f gui=none
hi String        guifg=#a0ba46 gui=none
hi Number        guifg=#dfddcd gui=none
hi Boolean       guifg=#dfddcd gui=none

"Rust
hi @punctuation.delimiter.double guifg=#eed333
hi @lsp.type.macro.rust          guifg=#95af9f
hi @lsp.type.selfKeyword.rust    guifg=#95af9f
hi @lsp.type.lifetime.rust       guifg=#95af9f

" html / tsx
hi @tag.tsx       guifg=#a99aac gui=none
hi @tag.delimiter guifg=#dfddcd
hi @tag.attribute guifg=#dfddcd gui=none
hi htmlTagName    guifg=#eed333

" plugin groups
hi OilFile        guifg=#dfddcd
hi OilFileHidden  guifg=#999999
hi OilDirHidden   guifg=#999999
hi BufferLineFill guibg=default

" Ui
hi Search        guibg=#666666
hi CurSearch     guibg=#a0ba46
hi IncSearch     guibg=default
hi Pmenu         guifg=#BFBBBA guibg=#1D2021
hi PmenuSel      guifg=#BFBBBA guibg=#1D2021
hi ColorColumn   guifg=default guibg=#1D2021

hi PmenuSbar     guibg=default
hi PmenuThumb    guibg=#1D2021 gui=reverse
hi LineNr        guifg=#d6d2c8
hi LineNrAbove   guifg=#888888
hi LineNrBelow   guifg=#888888
hi WinSeparator  guibg=#111111 guifg=#888888
hi StatusLine    guifg=#e2cca9 guibg=default
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
hi DiagnosticUnderlineHint  gui=none
hi DiagnosticUnderlineError gui=underline
hi Question       guifg=#d4be98
hi MoreMsg        guifg=#d4be98   


" Misc
hi MatchParen    gui=none
hi Title         guifg=#CCCCCC 
hi Todo          guifg=#8B9698 
hi Directory     guifg=#ddddcd
hi Substitute    guifg=#1A1A1A guibg=#87a5a5
