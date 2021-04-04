nnoremap <leader>S :lua require('spectre').open()<CR>

" search current word
vnoremap <leader>S :lua require('spectre').open_visual()<CR>
nnoremap <leader>sj viw:lua require('spectre').open_visual()<CR>
" search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
