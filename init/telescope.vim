" nnoremap <leader>i <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fp <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>l <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader><leader>g <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader><leader>d <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
nnoremap <leader><leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader><leader>w <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader><leader>l <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <leader><leader>b <cmd>lua require('telescope.builtin').builtin()<cr>
nnoremap <leader><leader>h <cmd>lua require('telescope.builtin').command_history()<cr>
nnoremap <leader><leader>c <cmd>lua require('telescope.builtin').commands()<cr>
nnoremap <leader><leader>o <cmd>lua require('telescope.builtin').oldfiles()<cr>
