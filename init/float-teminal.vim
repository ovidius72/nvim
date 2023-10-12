let g:floaterm_keymap_toggle = '<M-m>'
" nnoremap <silent> <leader>> :FloatermNew<CR>
nnoremap <silent> <M-m> :FloatermToggle --width=1.0 --height=0.3 --wintype=vsplit --name=t1 --position=bottom --autoclose=0 zsh<CR>
tnoremap <silent> <M-;> <C-\><C-n><C-w><C-w>
tnoremap <silent> <M-i> <C-\><C-n>:FloatermUpdate --height=0.8<cr>
tnoremap <silent> <M-u> <C-\><C-n>:FloatermUpdate --height=0.3<cr>
" tnoremap <silent> <M-[> <C-\><C-n>:FloatermNext<cr>
" tnoremap <silent> <M-]> <C-\><C-n>:FloatermPrev<cr>
" tnoremap <silent> <M-x> <C-\><C-n>:FloatermKill<cr>
tnoremap <silent> <M-x> <C-\><C-n>:FloatermKill<cr>
nnoremap <silent> <leader>- <C-\><C-n>:FloatermToggle<CR>

let g:floaterm_position = "bottom"
let g:floaterm_wintype = "split"
let g:floaterm_height=0.3
let g:floaterm_width=1.0
let g:floaterm_autoclose=0
