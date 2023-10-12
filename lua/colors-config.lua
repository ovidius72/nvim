local themeName = 'catppuccin'
vim.g.material_style = "deep ocean"


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

-- MAKE TELESCOPE BORDERSLESS ON TOKYONIGHT
-- require("tokyonight").setup({
--   on_highlights = function(hl, c)
--     local prompt = "#2d3149"
--     hl.TelescopeNormal = {
--       bg = c.bg_dark,
--       fg = c.fg_dark,
--     }
--     hl.TelescopeBorder = {
--       bg = c.bg_dark,
--       fg = c.bg_dark,
--     }
--     hl.TelescopePromptNormal = {
--       bg = prompt,
--     }
--     hl.TelescopePromptBorder = {
--       bg = prompt,
--       fg = prompt,
--     }
--     hl.TelescopePromptTitle = {
--       bg = prompt,
--       fg = prompt,
--     }
--     hl.TelescopePreviewTitle = {
--       bg = c.bg_dark,
--       fg = c.bg_dark,
--     }
--     hl.TelescopeResultsTitle = {
--       bg = c.bg_dark,
--       fg = c.bg_dark,
--     }
--   end,
-- })

-- function ReloadLualine()
--   require('plenary.reload').reload_module('lualine')
--   require('lualine-config')
--   -- require('lualine').setup({ options = { theme = themeName } })
-- end

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
  -- ReloadLualine()
end

require("onedarkpro").setup({
  theme = "onedark_vivid", -- The default dark theme
  caching = false, -- Use caching for the theme?
})

require('material').setup({
  contrast = {
    sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = true, -- Enable contrast for floating windows
    line_numbers = false, -- Enable contrast background for line numbers
    sign_column = false, -- Enable contrast background for the sign column
    cursor_line = true, -- Enable darker background for the cursor line
    non_current_windows = false, -- Enable darker background for non-current windows
    popup_menu = true, -- Enable lighter background for the popup menu
  },
  italics = {
    comments = true, -- Enable italic comments
    keywords = false, -- Enable italic keywords
    functions = true, -- Enable italic functions
    strings = false, -- Enable italic strings
    variables = false -- Enable italic variables
  },
  contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
    "terminal", -- Darker terminal background
    "packer", -- Darker packer background
    "qf" -- Darker qf list background
  },
  high_visibility = {
    lighter = false, -- Enable higher contrast text for lighter style
    darker = false -- Enable higher contrast text for darker style
  },
  disable = {
    colored_cursor = false, -- Disable the colored cursor
    borders = false, -- Disable borders between verticaly split windows
    background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
    term_colors = false, -- Prevent the theme from setting terminal colors
    eob_lines = false -- Hide the end-of-buffer lines
  },
  lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )
  async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
  custom_highlights = {}, -- Overwrite highlights with your own
  plugins = { -- Here, you can disable(set to false) plugins that you don't use or don't want to apply the theme to
    trouble = false,
    nvim_cmp = false,
    neogit = true,
    gitsigns = true,
    git_gutter = true,
    telescope = true,
    nvim_tree = true,
    sidebar_nvim = true,
    lsp_saga = true,
    nvim_dap = true,
    nvim_navic = true,
    which_key = true,
    sneak = true,
    hop = true,
    indent_blankline = true,
    nvim_illuminate = true,
    mini = true,
  }
});

local catppuccin = require("catppuccin")
-----------------------------------------------------
-- CATPUCCINO
-- ---------------------------------------------------
-- configure it
catppuccin.setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = "latte",
    dark = "mocha",
  },
  transparent_background = true,
  compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
  show_end_of_buffer = false,
  term_colors = false,
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  color_overrides = {},
  custom_highlights = {},
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    treesitter = true,
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
})
-- vim.g.catppuccin_flavour = 'macchiato'
----------------------------------------------------------------------
--                            Rose Pine                             --
----------------------------------------------------------------------

-- Set variant
-- Defaults to 'dawn' if vim background is light
-- @usage 'base' | 'moon' | 'dawn' | 'rose-pine[-moon][-dawn]'
vim.g.rose_pine_variant = 'moon'
-- Disable italics
vim.g.disable_italics = false
-- Use terminal background
vim.g.disable_background = false
vim.g.bold_vert_split = true
vim.g.dim_nc_background = true
require('rose-pine').setup({
})

----------------------------------------------------------------------
--                             Zenbones                             --
----------------------------------------------------------------------
-- vim.g.zenbones_solid_vert_split = false
-- vim.g.zenbones_dim_noncurrent_window = true
-- vim.g.zenbones_lightness = "" -- null(default) | 'bright' | 'dim'

----------------------------------------------------------------------
--                            Moonlight                             --
----------------------------------------------------------------------
-- vim.g.moonlight_italic_comments = true
-- vim.g.moonlight_italic_keywords = true
-- vim.g.moonlight_italic_functions = true
-- vim.g.moonlight_italic_variables = false
-- vim.g.moonlight_contrast = true
-- vim.g.moonlight_borders = true
-- vim.g.moonlight_disable_background = false

-- ╔════════════════════════════════════════════════════════════════════╗
-- ║                              Kanagawa                              ║
-- ╚════════════════════════════════════════════════════════════════════╝
require('kanagawa').setup({
  undercurl = true, -- enable undercurls
  globalstatus = true,
  commentStyle = { italic = true },
  functionStyle = { bold = true },
  keywordStyle = { italic = true },
  statementStyle = { italic = true },
  typeStyle = {},
  variablebuiltinStyle = { italic = true, bold = true },
  specialReturn = true, -- special highlight for the return keyword
  specialException = true, -- special highlight for exception handling keywords
  transparent = true, -- do not set background color
  dimInactive = false, -- dim inactive window `:h hl-NormalNC`
  terminalColors = true,
  -- theme = {},
  -- colors = {},
  -- overrides = {},
  -- theme = "lotus"
  background = {
    dark = "wave",
    light = "lotus",
  }
})

----------------------------------------------------------------------
--                              embark                              --
----------------------------------------------------------------------
vim.g.embark_terminal_italics = true


----------------------------------------------------------------------
--                              nightfox                              --
----------------------------------------------------------------------
-- local nightfox = require('nightfox')

-- -- This function set the configuration of nightfox. If a value is not passed in the setup function
-- -- it will be taken from the default configuration above
-- nightfox.setup({
-- 	-- fox = "nightfox", -- Which fox style should be applied
--   transparent = false, -- Disable setting the background color
--   alt_nc = false, -- Non current window bg to alt color see `hl-NormalNC`
-- 	options = {
-- 		terminal_colors = true, -- Configure the colors used when opening :terminal
-- 		styles = {
-- 			comments = "italic", -- Style that is applied to comments: see `highlight-args` for options
-- 			functions = "italic,bold", -- Style that is applied to functions: see `highlight-args` for options
-- 			keywords = "bold", -- Style that is applied to keywords: see `highlight-args` for options
-- 			strings = "NONE", -- Style that is applied to strings: see `highlight-args` for options
-- 			variables = "bold", -- Style that is applied to variables: see `highlight-args` for options
-- 		},
-- 		inverse = {
-- 			match_paren = true, -- Enable/Disable inverse highlighting for match parens
-- 			visual = true, -- Enable/Disable inverse highlighting for visual selection
-- 			search = false, -- Enable/Disable inverse highlights for search highlights
-- 		},
-- 		colors = {}, -- Override default colors
-- 		hlgroups = {}, -- Override highlight groups
-- 	},
-- })


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
-- require('github-theme').setup({
--   theme_style = 'dark_default'
-- })

-- remove tilde characters at the end of the buffer.
-- require(themeName).setup({})

-- Toggle catppuccino variant
-- vim.api.nvim_set_keymap('n', '<leader>tcl', [[<cmd>lua SetColorscheme('light_melya')<CR>]], { noremap = true, silent = true });
-- vim.api.nvim_set_keymap('n', '<leader>tcd', [[<cmd>lua SetColorscheme('dark_catppuccino')<CR>]], { noremap = true, silent = true });
-- vim.api.nvim_set_keymap('n', '<leader>tcn', [[<cmd>lua SetColorscheme('neon_latte')<CR>]], { noremap = true, silent = true });

-- Select each variant
-- vim.api.nvim_set_keymap('n', '<leader>t1', [[<cmd>lua SetRosePineVariant('dawn')<cr>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>t2', [[<cmd>lua SetRosePineVariant('moon')<cr>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>t3', [[<cmd>lua SetRosePineVariant('base')<cr>]], { noremap = true, silent = true })

-- require('plenary.reload').reload_module('lualine')
-- require('lualine-config')
vim.cmd('colorscheme ' .. themeName)
-- require('onedark').setup {
--     style = 'cool'
-- }
-- require('onedark').load()
-- vim.cmd[[highlight IndentBlanklineChar guifg=#313131]]
-- vim.cmd[[highlight WinBar guibg=#282639]]

-- setTransapentBackground()
-- vim.cmd [[
-- augroup my-glyph-palette
--   autocmd! *
--   autocmd FileType fern call glyph_palette#apply()
--   autocmd FileType nerdtree,startify call glyph_palette#apply()
-- augroup END
-- ]]
-- vim.cmd [[ highlight default link WhichKeySeperator NONE ]]

-- -- global statusline
vim.cmd("let &fcs='eob: '")
-- vim.opt.laststatus = 3
vim.opt.fillchars = {
  horiz     = '━',
  horizup   = '┻',
  horizdown = '┳',
  vert      = '┃',
  vertleft  = '┫',
  vertright = '┣',
  verthoriz = '╋',
}
vim.api.nvim_create_autocmd("ColorScheme", {
  desc = "Add nvim-coverage highlight",
  callback = function()
    vim.cmd([[
        hi CoverageCovered guifg=#339900
        hi CoverageUncovered guifg=#ff5468
        hi CoveragePartial guifg=#ffcc00
        hi CoverageSummaryHeader gui=bold,underline guisp=fg
        hi! link CoverageSummaryBorder FloatBorder
        hi! link CoverageSummaryNormal NormalFloat
        hi! link CoverageSummaryCursorLine CursorLine
        hi! link CoverageSummaryPass CoverageCovered
        hi! link CoverageSummaryFail CoverageUncovered
      ]])
    vim.cmd("let &fcs='eob: '")
  end,
})
-- SetTransapentBackground()
