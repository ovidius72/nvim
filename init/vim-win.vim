" map <leader>v <plug>WinWin
map , <plug>WinWin
command! Win :call win#Win()
let g:win_resize_height = 3
let g:win_resize_width = 4
let g:win_disable_version_warning = 0
let g:win_ext_command_map = {
      \   'c': 'wincmd c',
      \   'C': 'close!',
      \   'q': 'quit',
      \   'Q': 'quit!',
      \   '!': 'qall!',
      \   'V': 'wincmd v',
      \   'S': 'wincmd s',
      \   'n': 'bnext',
      \   'N': 'bnext!',
      \   'p': 'bprevious',
      \   'P': 'bprevious!',
      \   "\<c-n>": 'tabnext',
      \   "\<c-p>": 'tabprevious',
      \   '=': 'wincmd =',
      \   't': 'tabnew',
      \   ',': 'Win#exit'
      \ }

highlight link WinActive WildMenu 
" highlight WinInactive term=bold ctermfg=12 ctermbg=159 guibg=LingCyan
highlight link WinInactive WhiteSpace
