
" Sneak
highlight SneakLabel guifg=black guibg=red ctermfg=black ctermbg=red
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow
let g:sneak#label = 1
let g:sneak#target_labels = ";.qwertyuiopasdfg;'.,n[/?0"

nmap <Leader>kj <Plug>Sneak_s
nmap <Leader>sk <Plug>Sneak_S
nmap <Leader>jf <Plug>Sneak_f
nmap <Leader>jF <Plug>Sneak_F
nmap <Leader>jt <Plug>Sneak_t
nmap <Leader>jT <Plug>Sneak_T
