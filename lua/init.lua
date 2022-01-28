local M = {}
-- require('bubbly')
-- local utils = require('utils')
-- require('gxyline')
require('keys')
require('diffview-config')
-- require('vgit-config')
require('telescope-config')
require('lualine-config')
require('nvim-rev-config')
require('nvim-gps-config')
require('colorizer').setup({ '*'; });
-- require('gitsigns-config')
require('bufferline-config')
require('winshift-config')
require('zen-mode-config')
require('indent-blankline-config')
require('iswap-config')
require('todo-comments-config')
require('comment-box-config')
-- require('hlslens-config')
-- require('pounce-config')
-- require('nvim-tree-lua-config')
-- require('nvim-ts-rainbow-config')
-- require('sidebar-config')
-- require('goto-preview-config') Require LSP

-- require('fzf_lua-config')
-- local highlight = require 'vim.highlight'
-- require('telescope.lua')
-- local sl = require('statusline')
function M.setup()
  -- utils.load('plugins')
end

require("bufjump").setup({
    forward = "]a",
    backward = "[a",
    on_success = nil
})
require('colors-config')

return M
