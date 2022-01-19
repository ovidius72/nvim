lua <<EOF
require'hop'.setup {
  case_insensitive = false
}
-- place this in one of your configuration file(s)
-- vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
-- vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
-- vim.api.nvim_set_keymap('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
-- vim.api.nvim_set_keymap('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
-- vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
-- vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
EOF

" nmap ( :HopChar1<cr>
" nmap ) :HopPattern<cr>
nmap <leader>j1 :HopChar1<cr>
nmap <leader>j2 :HopChar2<cr>
nmap <M-i> :HopChar1<cr>
nmap <leader>ja :HopChar1<cr>
nmap <leader>jl :HopLine<cr>
nmap <leader>jw :HopWord<cr>
nmap <M-w> :HopWord<cr>
nmap <C-p> :HopChar2<cr>
nmap <leader>ja :HopChar2<cr>
nmap <leader>k :HopChar2<cr>
nmap <leader>jj :HopWordAC<cr>
nmap <leader>jk :HopWordBC<cr>
nmap <leader>jp :HopPattern<cr>
