local M = {}
-- require('bubbly')
-- local utils = require('utils')
-- require('gxyline')
-- require('autocommands')
require('keys')
-- require('diffview-config')
-- require('vgit-config')
require('telescope-config')
require('lualine-config')
-- require('feline-config')
-- require('nvim-rev-config')
require('colorizer').setup({ '*', })
-- require('gitsigns-config')
require('bufferline-config')
require('winshift-config')
require('zen-mode-config')
require('indent-blankline-config')
require('iswap-config')
require('todo-comments-config')
require('comment-box-config')
require('treesj-config')
-- require('rest-config')
require('debugprint-config')
require('printer-config')
require('treesitter-context-config')
require('nvim-ts-context-commentstring-config')
-- require('cinnamon-config')
require('scrollbar-config')
-- require('winbar-config')
-- require('ufo-config')
-- require('sniprun-config')
-- require('legendary-config')
-- require('reach-config')
require('hlslens-config')
require('wilder-config')
require('live-command-config')
require('whichkey-config')
require('dressing-config')
require('modicator').setup()
require('search-replace-config')
require("git-conflict-config")
require("ronny-config")
require("package-info-config")
-- require('winsep-config.lua')
-- require('winbar-config')
-- require('pounce-config')
-- require('nvim-tree-lua-config')
-- require('nvim-ts-rainbow-config')
-- require('sidebar-config')
-- require('goto-preview-config') -- Require LSP

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
require('neotest-config')
require('keymaps')
-- require('nvim-treesitter.configs').setup {
--   context_commentstring = {
--     enable = true,
--     enable_autocmd = false,
--   },
-- }
require('Comment').setup {
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}
-- local ft = require('Comment.ft')
-- ft.set('typescriptreact', { '{/*%s*/}', '{/*%s*/}' })
-- ft.set('javascriptreact', { '{/*%s*/}', '{/*%s*/}' })

-- require('hlchunk').setup({})
-- require('nvim-biscuits').setup({
--   default_config = {
--     max_length = 12,
--     min_distance = 5,
--     prefix_string = " 📎 "
--   },
--   language_config = {
--     html = {
--       prefix_string = " 🌐 "
--     },
--     typescript = {
--       max_length = 80
--     },
--     javascript = {
--       max_length = 80
--     },
--     python = {
--       disabled = true
--     }
--   }
-- })

return M
