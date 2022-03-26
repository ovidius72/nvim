" nnoremap <leader>i <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fp <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>l <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader><leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader><leader>gs <cmd>lua require('telescope.builtin').git_status()<cr>
nnoremap <leader><leader>gS <cmd>lua require('telescope.builtin').git_stash()<cr>
nnoremap <leader><leader>gc <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader><leader>gC <cmd>lua require('telescope.builtin').git_bcommits()<cr>

nnoremap <leader><leader>/ <cmd>lua require('telescope.builtin').search_history()<cr>
nnoremap <leader><leader>: <cmd>lua require('telescope.builtin').command_history()<cr>
nnoremap <leader><leader>p <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader><leader>a <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap <leader><leader>d <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
nnoremap <leader><leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader><leader>s <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader><leader>S <cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For> ")})<cr>
nnoremap <leader><leader>w <cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand("<cword>")})<cr>
nnoremap <leader><leader>l <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader><leader>B <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <leader><leader>b <cmd>lua require('telescope.builtin').builtin()<cr>
nnoremap <leader><leader>c <cmd>lua require('telescope.builtin').commands()<cr>
nnoremap <leader><leader>o <cmd>lua require('telescope.builtin').oldfiles({cwd_only = true })<cr>
nnoremap <leader><leader>r <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap <leader><leader>P <cmd>lua require('telescope.builtin').spell_suggest()<cr>
nnoremap <leader><leader>j <cmd>lua require('telescope.builtin').jumplist()<cr>
nnoremap <leader><leader>m <cmd>lua require('telescope.builtin').marks()<cr>
nnoremap <leader><leader>E <cmd>lua require('telescope.builtin').symbols()<cr>
nnoremap <leader><leader>t <cmd>TodoTelescope<cr>

" Custom
nnoremap <leader><leader>e <cmd>lua require('telescope-config').search_vim_files()<cr>
nnoremap <leader><leader>e <cmd>lua require('telescope-config').search_vim_files()<cr>
" nnoremap <leader><leader>n <cmd>:VGit actions<cr>
