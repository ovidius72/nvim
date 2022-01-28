local themeName = 'kanagawa'

function SetTransapentBackground()
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

function ReloadLualine()
  require('plenary.reload').reload_module('lualine')
  require('lualine-config')
  -- require('lualine').setup({ options = { theme = themeName } })
end

function ChangeRosePineTheme()
  require('rose-pine').toggle()
  -- ReloadLualine()
  -- setTransapentBackground()
end

function SetRosePineVariant(variant)
  require('rose-pine').set(variant)
  -- ReloadLualine()
end

function SetColorscheme(colorscheme)
  vim.cmd('colorscheme ' .. colorscheme)
  ReloadLualine()
end


local catppuccin = require("catppuccin")

---------------------------------------------------
-- CATPUCCINO
-- ---------------------------------------------------
-- configure it
catppuccin.setup(
    {
		transparent_background = false,
		term_colors = true,
		styles = {
			comments = "italic",
			functions = "bold,italic",
			keywords = "bold",
			strings = "NONE",
			variables = "bold",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = false,
				virtual_text = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic",
				},
				underlines = {
					errors = "underline",
					hints = "underline",
					warnings = "underline",
					information = "underline",
				},
			},
			lsp_trouble = false,
			lsp_saga = false,
			gitgutter = false,
			gitsigns = false,
			telescope = true,
			nvimtree = {
				enabled = true,
				show_root = true,
			},
			which_key = true,
			indent_blankline = {
				enabled = true,
				colored_indent_levels = true,
			},
			dashboard = false,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			bufferline = true,
			markdown = false,
			lightspeed = false,
			ts_rainbow = false,
			hop = true,
		},
	}
)
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
vim.g.rose_pine_bold_vertical_split_line = true
vim.g.rose_pine_inactive_background = false


----------------------------------------------------------------------
--                             Zenbones                             --
----------------------------------------------------------------------
vim.g.zenbones_solid_vert_split = false
vim.g.zenbones_dim_noncurrent_window = true
vim.g.zenbones_lightness = "" -- null(default) | 'bright' | 'dim'

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

-- ╔════════════════════════════════════════════════════════════════════╗
-- ║                              Kanagawa                              ║
-- ╚════════════════════════════════════════════════════════════════════╝
require('kanagawa').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = "italic",
    functionStyle = "bold",
    keywordStyle = "italic",
    statementStyle = "italic",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic,bold",
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords 
    transparent = false,        -- do not set background color
    dimInactive = true,        -- dim inactive window `:h hl-NormalNC`
    colors = {},
    overrides = {},
})

  ----------------------------------------------------------------------
  --                              embark                              --
  ----------------------------------------------------------------------
vim.g.embark_terminal_italics = true


  ----------------------------------------------------------------------
  --                              nightfox                              --
  ----------------------------------------------------------------------
local nightfox = require('nightfox')

-- This function set the configuration of nightfox. If a value is not passed in the setup function
-- it will be taken from the default configuration above
nightfox.setup({
	fox = "nightfox", -- Which fox style should be applied
  transparent = false, -- Disable setting the background color
  alt_nc = false, -- Non current window bg to alt color see `hl-NormalNC`
  terminal_colors = true, -- Configure the colors used when opening :terminal
  styles = {
    comments = "italic", -- Style that is applied to comments: see `highlight-args` for options
    functions = "italic,bold", -- Style that is applied to functions: see `highlight-args` for options
    keywords = "bold", -- Style that is applied to keywords: see `highlight-args` for options
    strings = "NONE", -- Style that is applied to strings: see `highlight-args` for options
    variables = "bold", -- Style that is applied to variables: see `highlight-args` for options
  },
  inverse = {
    match_paren = true, -- Enable/Disable inverse highlighting for match parens
    visual = false, -- Enable/Disable inverse highlighting for visual selection
    search = false, -- Enable/Disable inverse highlights for search highlights
  },
  colors = {}, -- Override default colors
  hlgroups = {}, -- Override highlight groups
})

-- Load the configuration set above and apply the colorscheme
nightfox.load()

----------------------------------------------------------------------
--                           Catppuccino                            --
----------------------------------------------------------------------
-- local catppuccino = require('catppuccino');
-- local cp_api = require('catppuccino.api.colors')
-- local _, colors = cp_api.get_colors('neon_latte')
-- local util = require("catppuccino.utils.util")

-- -- deep challenger color scheme.
-- catppuccino.remap(
--     {
--     black = "#212121",
--     subtle_black = "#303030",
--     asphalt_medium = "#141228",
--     asphalt_subtle = "#100e23",
--     steal = '#464f7f',
--     bg = '#1e1c31',
--     bg_statusline = '#1d142b',
--     blue = '#c991e1',
--     blue_br= '#906cff',
--     green = '#ffe9aa',
--     green_br= '#ffe37e',
--     magenta_br = '#ff8080',
--     magenta = '#ff8080',
--     yellow = '#95ffa4',
--     yellow_br = '#62d196',
--     cyan = '#aaffe4',
--     cyan_br = '#63f2f1',
--     red_br = '#91ddff',
--     red= '#65b2ff',
--     fg='#f3f3f3',
--     white='#f3f3f3',
--     fg_alt='#f3f3f3',
--   },
--     {
--       CocUnusedHighlight = { fg = util.brighten(colors.fg_gutter, 0.4), style='undercurl'},
--       CocHighlightText = { bg = '#464f7f', style='none'},
--       Search = { bg = '#464f7f', style='none'},
--       -- CocFadeOut = { fg = colors.red, style='undercurl' }
--       NvimTreeNormal = { bg = util.darken(colors.bg, 0.30) },
--       FernRoot = { bg = util.darken(colors.bg, 0.30) },
--       Visual = { bg = '#ffe9aa', fg = colors.black },
--     }
--   )

-- catppuccino.setup({
--     colorscheme = "neon_latte",
--     transparency = false,
-- 		styles = {
-- 			comments = "italic",
-- 			functions = "none",
-- 			keywords = "bold",
-- 			strings = "NONE",
-- 			variables = "bold",
-- 		},
--     term_colors = true,
--     integration = {
--       native_lsp = { enabled = false },
--       bufferline = true,
--       telescope = true,
--       which_key = true,
--       barbar = false,
--       hop = true,
--       neogit = true,
--       gitgutter = true,
--       gitsings = true,
--       indent_blankline = {
--         enabled = true,
--         color_indent_levels = true
--       },
--     }
-- })
----------------------------------------------------------------------
--                             Nebulous                             --
----------------------------------------------------------------------

-- require("nebulous").setup {
--   -- fullmoon midnight twilight night
--   variant = "midnight",
--   disable = {
--     background = false,
--     endOfBuffer = false,
--   },
--   italic = {
--     comments   = false,
--     keywords   = true,
--     functions  = false,
--     variables  = true,
--   },
--   custom_colors = { -- this table can hold any group of colors with their respective values
--     -- LineNr = { fg = "#5BBBDA", bg = "NONE", style = "NONE" },
--     -- CursorLineNr = { fg = "#E1CD6C", bg = "NONE", style = "NONE" },

--     -- it is possible to specify only the element to be changed
--     -- TelescopePreviewBorder = { fg = "#A13413" },
--     -- LspDiagnosticsDefaultError = { bg = "#E11313" },
--     -- TSTagDelimiter = { style = "bold,italic" },
--   }
-- }

-- Set colorscheme after options
-- use either the vim or lua command.
vim.cmd('colorscheme ' .. themeName)
vim.cmd("let &fcs='eob: '")
-- require('github-theme').setup({
--   theme_style = 'dark_default'
-- })

-- remove tilde characters at the end of the buffer.
vim.cmd("let &fcs='eob: '")
-- require(themeName).setup({})

-- Toggle catppuccino variant
vim.api.nvim_set_keymap('n', '<leader>tcl', [[<cmd>lua SetColorscheme('light_melya')<CR>]], { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<leader>tcd', [[<cmd>lua SetColorscheme('dark_catppuccino')<CR>]], { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<leader>tcn', [[<cmd>lua SetColorscheme('neon_latte')<CR>]], { noremap = true, silent = true });

-- Select each variant
vim.api.nvim_set_keymap('n', '<leader>t1', [[<cmd>lua SetRosePineVariant('dawn')<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t2', [[<cmd>lua SetRosePineVariant('moon')<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t3', [[<cmd>lua SetRosePineVariant('base')<cr>]], { noremap = true, silent = true })

require('plenary.reload').reload_module('lualine')
require('lualine-config')

-- vim.cmd[[highlight IndentBlanklineChar guifg=#313131]]

-- setTransapentBackground()
-- vim.cmd [[
-- augroup my-glyph-palette
--   autocmd! *
--   autocmd FileType fern call glyph_palette#apply()
--   autocmd FileType nerdtree,startify call glyph_palette#apply()
-- augroup END
-- ]]
vim.cmd [[ highlight default link WhichKeySeperator NONE ]]
