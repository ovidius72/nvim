-----------------------------------------------
-- COMMON KEYMAPS
-----------------------------------------------



-- starlite
vim.api.nvim_set_keymap('n', '*', [[<cmd>lua require('starlite').star()<CR>]], { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'g*', [[<cmd>lua require('starlite').g_star()<CR>]], { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '#', [[<cmd>lua require('starlite').hash()<CR>]], { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'g#', [[<cmd>lua require('starlite').g_hash()<CR>]], { noremap = true, silent = true });
