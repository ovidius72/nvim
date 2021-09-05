local themeName = 'moonlight'

function setTransapentBackground()
-- transparent background
  vim.cmd [[ hi Normal guibg=none ctermbg=none ]]
  vim.cmd [[ hi LineNr guibg=none ctermbg=none ]]
  vim.cmd [[ hi Folded guibg=none ctermbg=none ]]
  vim.cmd [[ hi NonText guibg=none ctermbg=none ]]
  vim.cmd [[ hi SpecialKey guibg=none ctermbg=none ]]
  vim.cmd [[ hi VertSplit guibg=none ctermbg=none ]]
  vim.cmd [[ hi SignColumn guibg=none ctermbg=none ]]
  vim.cmd [[ hi EndOfBuffer guibg=none ctermbg=none ]]
end

function change_rose_pine_theme()
  require('rose-pine.functions').toggle_variant()
  require('plenary.reload').reload_module('lualine')
  require('lualine-config')
  -- require('lualine').setup({ options = { theme = themeName } })
  -- setTransapentBackground()
end

function set_rose_pine_variant(variant)
  require('rose-pine.functions').select_variant(variant)
  require('plenary.reload').reload_module('lualine')
  require('lualine-config')
  -- require('lualine').setup({ options = { theme = themeName } })
end

-- Set variant
-- Defaults to 'dawn' if vim background is light
-- @usage 'base' | 'moon' | 'dawn' | 'rose-pine[-moon][-dawn]'
vim.g.rose_pine_variant = 'moon'
-- Disable italics
vim.g.rose_pine_disable_italics = false
-- Use terminal background
vim.g.rose_pine_disable_background = false

-- zenbones config.
vim.g.zenbones_solid_vert_split = false
vim.g.zenbones_dim_noncurrent_window = true
vim.g.zenbones_lightness = null -- null(default) | 'bright' | 'dim'
-- moonlight config
vim.g.moonlight_italic_comments = true
vim.g.moonlight_italic_keywords = true
vim.g.moonlight_italic_functions = true
vim.g.moonlight_italic_variables = false
vim.g.moonlight_contrast = true
vim.g.moonlight_borders = true 
vim.g.moonlight_disable_background = false

-- Set colorscheme after options
-- use either the vim or lua command.
vim.cmd('colorscheme ' .. themeName)
-- require('github-theme').setup({
--   themeStyle = 'light'
-- })

-- remove tilde characters at the end of the buffer.
vim.cmd("let &fcs='eob: '")
-- require(themeName).setup({})

-- Toggle variant
vim.api.nvim_set_keymap('n', '<leader>tm', [[<cmd>lua change_rose_pine_theme()<cr>]], { noremap = true, silent = true })
-- Select each variant
vim.api.nvim_set_keymap('n', '<leader>t1', [[<cmd>lua set_rose_pine_variant('dawn')<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t2', [[<cmd>lua set_rose_pine_variant('moon')<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t3', [[<cmd>lua set_rose_pine_variant('base')<cr>]], { noremap = true, silent = true })

require('plenary.reload').reload_module('lualine')
require('lualine-config')

setTransapentBackground()
