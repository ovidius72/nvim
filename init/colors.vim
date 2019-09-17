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
" let g:airline_theme = 'challenger_deep'

" Fault
" colorscheme fault

"
"PaperColor
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
" " let g:airline_theme = 'one'
colorscheme PaperColor
" " set t_Co=256
set background=light
" let g:airline_theme = 'papercolor'
let g:indentLine_color_gui = '#DFE0DF'
let g:lightline.colorscheme = 'PaperColor_light'

nnoremap <S-F9> :call CycleModes()<CR>:colorscheme atomic<CR>
vnoremap <S-F9> :<C-u>call CycleModes()<CR>:colorscheme atomic<CR>gv

" Paper
" set background=light
" set bg=light
" colorscheme paper
" set background=dark
" let g:airline_theme = 'papercolor'


 " One
" colorscheme one
" set background=light
" let g:airline_theme = 'one'

" OneHalf
" colorscheme onehalflight
" set background=light
" let g:airline_theme = 'onehalflight'

" firewatch
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
" let g:airline_theme = 'solarized'

" colorscheme space_vim_theme
" set background=light
" let g:lightline.colorscheme = 'space_vim_light'
" let g:indentLine_color_gui = '#FDF7E7'

" WWDC17
" colorscheme wwdc17
" let g:wwdc17_frame_color = 10
" let g:lightline.colorscheme = 'wwdc17_alter'

"
" Gruvbox
" set background=light
" let g:lightline.colorscheme = "hypsteria_alter"
" let g:gruvbox_italic=1
" let g:gruvbox_contrast_ligth = "soft"
" colorscheme gruvbox8_soft
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
" set bg=dark
" let g:airline_theme = 'night_owl'


" set background=light
" colorscheme ayu
" let ayucolor="light"
" let g:airline_theme = 'ayu_light'


" deus
" colorscheme deus
" let g:dues_termcolors=256
" let g:airline_theme = 'deus'

" cosmic-latte
" set background=dark
" colorscheme cosmic_latte
" let g:airline_theme = 'cosmic_latte_dark'

