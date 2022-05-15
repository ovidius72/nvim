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
--[[ -- operations ]]
-- line
vim.api.nvim_set_keymap('o', 'l', "<cmd>lua require'hop'.hint_char1({ direction = nil, current_line_only = true, inclusive_jump = false })<cr>", {})
-- char
vim.api.nvim_set_keymap('o', 'o', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, inclusive_jump = false })<cr>", {})
vim.api.nvim_set_keymap('o', 'O', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, inclusive_jump = true })<cr>", {})
vim.api.nvim_set_keymap('o', 'u', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, inclusive_jump = false })<cr>", {})
vim.api.nvim_set_keymap('o', 'U', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, inclusive_jump = true })<cr>", {})

--[[ -- visual ]]
-- line
vim.api.nvim_set_keymap('v', 'l', "<cmd>lua require'hop'.hint_char1({ direction = nil, current_line_only = true, inclusive_jump = false })<cr>", {})
-- char
vim.api.nvim_set_keymap('v', 'o', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, inclusive_jump = false })<cr>", {})
vim.api.nvim_set_keymap('v', 'O', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, inclusive_jump = true })<cr>", {})
vim.api.nvim_set_keymap('v', 'u', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, inclusive_jump = false })<cr>", {})
vim.api.nvim_set_keymap('v', 'U', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, inclusive_jump = true })<cr>", {})

EOF

" nmap ( :HopChar1<cr>
" nmap ) :HopPattern<cr>
nmap <leader>j1 :HopChar1MW<cr>
nmap <leader>j2 :HopChar2MW<cr>
nmap <M-i> :HopChar1<cr>
nmap <leader>ja :HopChar1<cr>
nmap <leader>jl :HopChar1CurrentLine<cr>
nmap <leader>jw :HopWord<cr>
nmap <M-w> :HopWord<cr>
nmap <C-s> :HopWord<cr>
nmap <C-p> :HopChar2MW<cr>
nmap <leader>ja :HopChar2<cr>
nmap <leader>k :HopChar2MW<cr>
nmap <leader>jj :HopWordAC<cr>
nmap <leader>jk :HopWordBC<cr>
nmap <leader>jp :HopPattern<cr>
nmap <leader>jm :HopPatternMW<cr>
nmap <leader>je :HopAnywhere<cr>
