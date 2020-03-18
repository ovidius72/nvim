let g:any_jump_disable_default_keybindings = 1
let g:any_jump_grouping_enabled = 0
let g:any_jump_preview_lines_count = 8
" let g:any_jump_ignored_files = ['.tmp', '.temp'] 

nnoremap <leader>jrr :AnyJump<CR>
xnoremap <leader>jrr :AnyJumpVisual<CR>
nnoremap <leader>jrb :AnyJumpBack<CR>
nnoremap <leader>jrl :AnyJumpLastResults<CR>
  
