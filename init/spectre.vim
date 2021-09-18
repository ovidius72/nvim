nnoremap <leader>fe :lua require('spectre').open()<CR>

" search current word
vnoremap <leader>fe :lua require('spectre').open_visual()<CR>
nnoremap <leader>fv viw:lua require('spectre').open_visual()<CR>
" search in current file
nnoremap <leader>fv viw:lua require('spectre').open_file_search()<cr>
