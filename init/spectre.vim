nnoremap <leader>se :lua require('spectre').open()<CR>

" search current word
vnoremap <leader>se :lua require('spectre').open_visual()<CR>
nnoremap <leader>sv viw:lua require('spectre').open_visual()<CR>
nnoremap <leader>sw viw:lua require('spectre').open_visual({select_word=true})<CR>
" search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
