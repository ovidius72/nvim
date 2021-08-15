set termguicolors
" set t_Co=256
" Alduin
" colorscheme alduin

" set background=dark
" let g:edge_style = 'neon'
" colorscheme edge
" let g:lightline.colorscheme = 'edge'

" Dogrun"
" colorscheme dogrun
" set bg=dark
" let g:lightline.colorscheme = 'dogrun'

" EQUINUSOCIO
" source ~/.config/nvim/plugged/equinusocio-material.vim/autoload/equinusocio_material.vim
" colorscheme equinusocio_material
" let g:equinusocio_material_style = 'darker'
" let g:lightline.colorscheme = 'equinusocio_material'
" let g:lightline.colorscheme = 'mychallenger_deep'

" XCodeDark
" colorscheme xcodedarkhc
" set bg=dark
" let g:xcodedarkhc_green_comments = 0
" let g:xcodedarkhc_emph_types = 1
" let g:xcodedarkhc_emph_funcs = 1
" let g:xcodedarkhc_emph_idents = 1
" let g:xcodedarkhc_match_paren_style = 0
" let g:xcodedarkhc_dim_punctuation = 0
" hi! link xmlError None
" let g:lightline.colorscheme = 'xcodedarkhc'
" let g:lightline.colorscheme = 'mychallenger_deep'
" augroup vim-colors-xcode
"     autocmd!
" augroup END
" autocmd vim-colors-xcode ColorScheme * hi Comment        cterm=italic gui=italic
" autocmd vim-colors-xcode ColorScheme * hi SpecialComment cterm=italic gui=italic

"Space vim dark colorscheme
" colorscheme space-vim-dark
" set background=dark
" hi Normal     ctermbg=NONE guibg=NONE
" hi LineNr     ctermbg=NONE guibg=NONE
" hi SignColumn ctermbg=NONE guibg=NONE
" hi LineNr ctermbg=NONE guibg=NONE
" let g:airline_theme = 'base16_spacemacs'
" let g:space_vim_dark_background = 234
" color space-vim-dark


" Challenge Deep
" colorscheme challenger_deep
" let g:lightline.colorscheme = 'challenger_deep'
" let g:challenger_deep_terminal_italics = 1

" Challenge Deep
" colorscheme challenger_deep
" let g:lightline.colorscheme = 'mychallenger_deep'
" let g:mychallenger_deep_terminal_italics = 1
" let g:mychallenger_deep_underlined_cursor_line = 0 
" hi CocFloating guibg=#292c3f ctermbg=60
" hi WhichKey           guibg=#1b192c guifg=#95ffa4
" hi WhichKeySeparator  guibg=#1b192c guifg=#aaffe4
" hi WhichKeyGroup      guibg=#1b192c guifg=#906cff
" hi WhichKeyDesc       guibg=#1b192c guifg=#91ddff
" hi WhichKeyFloating   guibg=#1b192c

" Toast
" set background=light
" colorscheme toast
" Photon
" colorscheme photon
" let g:lightline.colorscheme = 'icebergDark'

" MyPhoton
" colorscheme myphoton

" Miramare
" the configuration options should be placed before `colorscheme miramare`
" let g:miramare_enable_italic = 1
" let g:miramare_disable_italic_comment = 1

" colorscheme miramare
" let g:lightline.colorscheme = 'miramare_lightline'

" focuspoint
" colorscheme focuspoint
" let g:lightline.colorscheme = 'focuspoint'

" Jellybeans
" colorscheme jellybeans
" let g:jellybeans_use_term_italics = 1
" let g:lightline.colorscheme = 'jellybeans'


" SpaceCamp
" colorscheme spacecamp

"
" Sweet 
" colorscheme sweet
" let g:lightline.colorscheme = 'challenger_deep'
" let g:sweet_terminal_italics = 1

" Fault
" colorscheme fault

"
" PaperColor
 " let g:PaperColor_Theme_Options = {
 "       \ 'language': {
 "       \    'typescript': {
 "       \         'highlight_builtins': 1
 "       \    },
 "       \    'typescriptreact': {
 "       \         'highlight_builtins': 1
 "       \    }
 "       \}
 "     \}
 " let g:airline_theme = 'one'
 " colorscheme PaperColor
 " set background=dark
" let g:lightline.colorscheme = 'PaperColor_dark'
" let g:airline_theme = 'papercolor'
" let g:indentLine_color_gui = '#DFE0DF'
" let g:lightline.colorscheme = 'PaperColor_light'

" nnoremap <S-F9> :call CycleModes()<CR>:colorscheme atomic<CR>
" vnoremap <S-F9> :<C-u>call CycleModes()<CR>:colorscheme atomic<CR>gv

" Paper
" set background=light
" set bg=light
" colorscheme paper
" set background=dark
" let g:airline_theme = 'papercolor'


 " One
" colorscheme base16-onedark
" set background=dark
" let g:lightline.colorscheme = 'one'
" let g:one_allow_italics = 1
" let g:airline_theme = 'one'

" highlight Normal guibg=#21242a
" highlight MatchParen guifg=#C678DD guibg=#504066
" highlight LineNr    guifg=#151822
" highlight CursorLineNr guifg=#56B6C2
" highlight Error guifg=#f57373 guibg=#804040
" highlight vimError guifg=#f57373 guibg=#804040

" hi IndentGuidesEven guibg=#21242a guifg=#1f1f28
" hi IndentGuidesOdd guibg=#262a36 guifg=#1f1f28
" hi Comment cterm=italic guifg=#4a5158
" hi String guifg=#98C379 guibg=#2a2e34

"" browns
" " function params: numbers and constants
" hi Statement guifg=#907161
" hi Conditional guifg=#907161
" hi Keyword guifg=#56B6C2
" hi Function guifg=#56B6C2

" " Yellows
" hi Number guifg=#E5C07B
" hi Special guifg=#E5C07B
" hi Boolean guifg=#E5C07B

" " purple
" hi CtrlPMatch guifg=#ba9ef7
" hi Visual guibg=#364652

" " medium red: if else operators
" hi Preproc guifg=#e86868
" hi Type guifg=#e86868



" "vim-jsx ONLY
" hi Identifier cterm=italic

" Blues
" light blues
" hi xmlTagName guifg=#59ACE5
" hi xmlTag guifg=#59ACE5

" " dark blues
" hi xmlEndTag guifg=#2974a1
" hi jsxCloseString guifg=#2974a1
" hi htmlTag guifg=#2974a1
" hi htmlEndTag guifg=#2974a1
" hi htmlTagName guifg=#59ACE5
" hi jsxAttrib guifg=#1BD1C1

" " cyan
" hi Constant guifg=#56B6C2
" hi typescriptBraces guifg=#56B6C2
" hi typescriptEndColons guifg=#56B6C2
" hi typescriptRef guifg=#56B6C2
" hi typescriptPropietaryMethods guifg=#56B6C2
" hi typescriptEventListenerMethods guifg=#56B6C2
" hi typescriptFunction guifg=#56B6C2
" hi typescriptVars guifg=#56B6C2
" hi typescriptParen guifg=#56B6C2
" hi typescriptDotNotation guifg=#56B6C2
" hi typescriptBracket guifg=#56B6C2
" hi typescriptBlock guifg=#56B6C2
" hi typescriptJFunctions guifg=#56B6C2
" hi typescriptSFunctions guifg=#56B6C2
" hi typescriptInterpolationDelimiter guifg=#56B6C2
" hi typescriptIdentifier guifg=#907161 cterm=italic

" " javascript
" hi jsParens guifg=#56B6C2
" hi jsObjectBraces guifg=#C678DD
" hi jsFuncBraces guifg=#56B6C2
" hi jsObjectFuncName guifg=#D19A66
" hi jsObjectKey guifg=#56B6C2

" OneHalf
" colorscheme onehalfdark
" set bg=dark
" let g:lightline.colorscheme = 'onehalfdark'
" let g:airline_theme = 'onehalflight'

" Sonokai
" colorscheme sonokai
" let g:sonokai_enable_italics = 1
" " firewatch
" set background=light
" let g:two_firewatch_italics=1
" colo two-firewatch
" let g:lightline.colorscheme = 'tfw_light'
" let g:airline_theme = 'twofirewatch'

" Base16 colorschemes
" let base16colorspace=256  " Access colors present in 256 colorspace
" colorscheme base16-solarized-light
" set bg=light
" let g:airline_theme = 'solarized'

" Solarized8
" colorscheme solarized8
" set background=light
" let g:lightline.colorscheme = 'solarized'
" let g:indentLine_color_gui = '#DFE0DF'
" " let g:airline_theme = 'solarized'

" colorscheme space_vim_theme
" set background=light
" let g:lightline.colorscheme = 'space_vim_light'
" " let g:indentLine_color_gui = '#FDF7E7'
" let g:space_vim_italic = 1
" let g:space_vim_italicize_strings = 1

" colorscheme shirotelin
" set background=light
" let g:lightline.colorscheme = 'wwdc17_alter'
" WWDC17
" colorscheme wwdc17
" let g:wwdc17_frame_color = 10
" let g:lightline.colorscheme = 'wwdc17_alter'

"
" Gruvbox
" set background=dark
" let g:lightline.colorscheme = "hypsteria_alter"
" let g:gruvbox_italic=1
" let g:gruvbox_contrast_dark = "hard"
" colorscheme gruvy
" set bg=dark
" let g:airline_theme = 'gruvbox'

" Iceberg
" colorscheme iceberg
" let g:airline_theme = 'iceberg'

"Oceanic-next
" colorscheme OceanicNext
" let g:airline_theme = 'oceanicnext'
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1

"
" colorscheme night-owl
" set background=dark
" " let g:airline_theme = 'papercolor'
" let g:airline_theme = 'one'

" Horizon
" colorscheme horizon
" set background=dark
" let g:lightline.colorscheme = 'horizon'

" set bg=dark
" let g:airline_theme = 'night_owl'


" set background=light
" colorscheme ayu
" let ayucolor="dark"
" let g:airline_theme = 'ayu_light'
" let lightline.colorscheme = 'ayu'


" deus
" colorscheme deus
" let g:dues_termcolors=256
" let g:airline_theme = 'deus'

" cosmic-latte
" colorscheme cosmic_latte
" let g:airline_theme = 'cosmic_latte_dark'
"" dark
" set background=dark
" let g:lightline.colorscheme = 'cosmic_latte_dark'
" let g:airline_theme = 'cosmic_latte_dark'

"" light
" set background=light
" let g:lightline.colorscheme = 'cosmic_latte_light'

" Nord
" colorscheme nord
" set background=dark
" let g:nord_contrast = 1
" let g:nord_borders = 1
" let g:lightline.colorscheme = 'nord'
" let g:nord_cursor_line_number_background = 1
" let g:nord_uniform_satus_lines = 1
" let g:nord_bold_vertical_split = 1
" let g:nord_uniform_diff_background = 1
" let g:nord_italic = 1
" let g:nord_italic_comments = 1
" let g:nord_underline = 1
" MEH
" colorscheme meh


"lighthaus
" colorscheme lighthaus
" let g:lightline.colorscheme = 'lighthaus'
" let g:lighthaus_vsplit_line_light = 1

" augroup nord-theme-overrides
"   autocmd!
"   " Use 'nord7' as foreground color for Vim comment titles.
"   autocmd ColorScheme nord highlight vimCommentTitle ctermfg=14 guifg=#8FBCBB
" augroup END

" setlocal cursorcolumn

" hi tsxAttrib guifg=#f8bd7f gui=italic cterm=italic
" " highlight tsxAttrib gui=italic cterm=italic
" hi jsxAttrib guifg=#f8bd7f gui=italic cterm=italic
" " highlight jsxAttrib gui=italic cterm=italic
" hi typescriptVariableDeclaration guifg=#f8bd7f gui=italic cterm=italic
" hi typescriptIdentifierName guifg=#f8bd7f gui=italic cterm=italic
" hi link typescriptMember Label
" " highlight typescriptMember gui=italic cterm=italic
" hi link typescriptIdentifierName TypescriptSpecial
" hi link typescriptObjectLiteral TypescriptSpecial
" hi link typescriptFuncCallArg TypescriptSpecial
" highlight Comment cterm=italic
" hi link jsxCloseString Label
" hi link jsxOpenPunct jsxPunct
" colorscheme night-owl
" let g:lightline = { 'colorscheme': 'nightowl' }

" if exists('+termguicolors')
"   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"   set termguicolors
" endif

" colorscheme spaceduck
" let g:lightline = { 'colorscheme': 'spaceduck' }

" colorscheme zephyr
" let g:lightline = { 'colorscheme': 'spaceduck' }

" colorscheme deus
" let g:lightline = { 'colorscheme': 'deus' }
"
" colorscheme aurora
" colorscheme mychallenger_deep
" let g:lightline = { 'colorscheme': 'mychallenger_deep' }

" let g:tokyonight_style = "storm"
" colorscheme tokyonight

" colorscheme ghdark
" let g:gh_color = 'soft'
" colorscheme moonlight
" colorscheme bogster
" colorscheme hivacruz
" colorscheme github-colors
" colorscheme kosmikoa
" colorscheme nvim-hybrid

" make background transparent.
" hi Normal guibg=none ctermbg=none
" hi LineNr guibg=none ctermbg=none
" hi Folded guibg=none ctermbg=none
" hi NonText guibg=none ctermbg=none
" hi SpecialKey guibg=none ctermbg=none
" hi VertSplit guibg=none ctermbg=none
" hi SignColumn guibg=none ctermbg=none
" hi EndOfBuffer guibg=none ctermbg=none

" remove tilde chars at the end of buffer.
let &fcs='eob: '

lua << EOF
--  require("github-theme").setup({
--      themeStyle = "dimmed",
--      functionStyle = "none",
--      sidebars = {"qf", "vista_kind", "terminal" },
--      darkFloat = false
--  })
EOF

let g:rose_pine_variant = 'moon'
let g:rose_pine_enable_italics = v:false
let g:rose_pine_disable_background = v:false
colorscheme rose-pine
