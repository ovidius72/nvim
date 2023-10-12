require 'git-conflict'.setup {
  default_mappings = false,
  -- default_mappings = {
  --   ours = 'o',
  --   theirs = 't',
  --   none = '0',
  --   both = 'b',
  --   next = 'n',
  --   prev = 'p',
  -- },

}
vim.keymap.set('n', '<leader>gho', '<Plug>(git-conflict-ours)')
vim.keymap.set('n', '<leader>ght', '<Plug>(git-conflict-theirs)')
vim.keymap.set('n', '<leader>ghn', '<Plug>(git-conflict-both)')
vim.keymap.set('n', '<leader>ghb', '<Plug>(git-conflict-none)')
vim.keymap.set('n', ']x', '<Plug>(git-conflict-prev-conflict)')
vim.keymap.set('n', '[x', '<Plug>(git-conflict-next-conflict)')


-- vim.api.nvim_create_autocommand('User', {
--   pattern = 'GitConflictDetected',
--   callback = function()
--     vim.notify('Conflict detected in ' .. vim.fn.expand('<afile>'))
--     vim.keymap.set('n', 'cww', function()
--       engage.conflict_buster()
--       create_buffer_local_mappings()
--     end)
--   end
-- })
