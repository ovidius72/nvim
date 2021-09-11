local themeName = 'dark_catppuccino'

local function setTransapentBackground()
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

local function reloadLualine() 
  require('plenary.reload').reload_module('lualine')
  require('lualine-config')
  -- require('lualine').setup({ options = { theme = themeName } })
end

local function change_rose_pine_theme()
  require('rose-pine.functions').toggle_variant()
  reloadLualine()
  -- setTransapentBackground()
end

local function set_rose_pine_variant(variant)
  require('rose-pine.functions').select_variant(variant)
  reloadLualine()
end

function SetColorscheme(colorscheme)
  vim.cmd('colorscheme ' .. colorscheme)
  reloadLualine()
end

----------------------------------------------------------------------
--                            Rose Pine                             --
----------------------------------------------------------------------

-- Set variant
-- Defaults to 'dawn' if vim background is light
-- @usage 'base' | 'moon' | 'dawn' | 'rose-pine[-moon][-dawn]'
vim.g.rose_pine_variant = 'moon'
-- Disable italics
vim.g.rose_pine_disable_italics = false
-- Use terminal background
vim.g.rose_pine_disable_background = false

----------------------------------------------------------------------
--                             Zenbones                             --
----------------------------------------------------------------------
vim.g.zenbones_solid_vert_split = false
vim.g.zenbones_dim_noncurrent_window = true
vim.g.zenbones_lightness = null -- null(default) | 'bright' | 'dim'

----------------------------------------------------------------------
--                            Moonlight                             --
----------------------------------------------------------------------
vim.g.moonlight_italic_comments = true
vim.g.moonlight_italic_keywords = true
vim.g.moonlight_italic_functions = true
vim.g.moonlight_italic_variables = false
vim.g.moonlight_contrast = true
vim.g.moonlight_borders = true 
vim.g.moonlight_disable_background = false

  ----------------------------------------------------------------------
  --                              embark                              --
  ----------------------------------------------------------------------
vim.g.embark_terminal_italics = true

----------------------------------------------------------------------
--                           Catppuccino                            --
----------------------------------------------------------------------
local catppuccino = require('catppuccino');
local cp_api = require('catppuccino.api.colors')
local err, colors = cp_api.get_colors('neon_latte')
local util = require("catppuccino.utils.util")

catppuccino.remap(
    {
    -- bg = '#221733',
    -- bg_statusline = '#1d142b',
    -- magenta_br = '#c991e1',
    -- magenta= '#906cff',
    -- yellow_br = '#ffe9aa',
    -- yellow= '#ffe37e',
    -- red_br = '#ff8080',
    -- red = '#ff5458',
    -- green= '#95ffa4',
    -- green_br = '#62d196',
    -- cyan = '#aaffe4',
    -- cyan_br = '#63f2f1',
    -- blu_br = '#91ddff',
    -- blu= '#65b2ff',
  },
    {
      CocUnusedHighlight = { fg = util.brighten(colors.fg_gutter, 0.2), style='undercurl' },
      -- CocFadeOut = { fg = colors.red, style='undercurl' }
    }
  )

catppuccino.setup({
    colorscheme = "dark_catppuccino",
    transparency = false,
		styles = {
			comments = "italic",
			functions = "NONE",
			keywords = "NONE",
			strings = "NONE",
			variables = "bold",
		},
    term_colors = true,
    integration = {
      native_lsp = { enabled = false },
      bufferline = true,
      telescope = true,
      which_key = true,
      barbar = false,
      hop = true,
      neogit = true,
      gitsings = true,
      indent_blankline = {
        enabled = true,
        color_indent_levels = true
      },
    }
})

-- Set colorscheme after options
-- use either the vim or lua command.
vim.cmd('colorscheme ' .. themeName)
-- require('github-theme').setup({
--   themeStyle = 'light'
-- })

-- remove tilde characters at the end of the buffer.
vim.cmd("let &fcs='eob: '")
-- require(themeName).setup({})

-- Toggle catppuccino variant
vim.api.nvim_set_keymap('n', '<leader>tcl', [[<cmd>lua setColorscheme('light_melya')<CR>]], { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<leader>tcd', [[<cmd>lua setColorscheme('dark_catppuccino')<CR>]], { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<leader>tcn', [[<cmd>lua setColorscheme('neon_latte')<CR>]], { noremap = true, silent = true });

vim.api.nvim_set_keymap('n', '<leader>tcr', [[<cmd>lua change_rose_pine_theme()<cr>]], { noremap = true, silent = true })
-- Toggle rose-pine variant
vim.api.nvim_set_keymap('n', '<leader>tcm', [[<cmd>lua change_rose_pine_theme()<cr>]], { noremap = true, silent = true })
-- Select each variant
vim.api.nvim_set_keymap('n', '<leader>t1', [[<cmd>lua set_rose_pine_variant('dawn')<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t2', [[<cmd>lua set_rose_pine_variant('moon')<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t3', [[<cmd>lua set_rose_pine_variant('base')<cr>]], { noremap = true, silent = true })

require('plenary.reload').reload_module('lualine')
require('lualine-config')

-- setTransapentBackground()
