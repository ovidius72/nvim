-- local gps = require('nvim-gps')

local function is_test_file()
  return vim.fn['ultest#is_test_file']('%') > 0
end

local function testFileIcon()
  return is_test_file() and '' or ''
end

local function line_progress()
  return '%3p%%'
end

local function test_stats()
  local stats = vim.fn['ultest#status']()
  return is_test_file() and ('🚦' .. stats.tests .. ' - 🎉' .. stats.passed .. ' - 🚫' .. stats.failed .. ' - 🏃' .. stats.running) or ''
end

-- local function vim_icon()
--   return ''
-- end

local function short_mode(mode)
  return mode:sub(1,1)
end

-- local function getGPS()
--   local is_available = gps.is_available()
--   local res = gps.get_location()
--   if is_available and res ~= "Error" and res ~= nil then
--     return res
--   else
--     return ''
--   end
-- end


require'lualine'.setup {
  options = {
    theme= 'auto',
    -- theme= 'github',
    icons_enabled = true,
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    -- section_separators = {left = '', right = ''},
    -- component_separators = {left = '', right = ''},
    section_separators = '',
    component_separators = '',
    disabled_filetypes = {},
    always_divide_miggle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {
      {'mode',  color = { gui='italic,bold' } },
      {
        "tabs",
        mode = 0,
        tabs_color = {
          -- active = {bg = '#464f7f', fg = '#c991e1', gui='italic,bold'},
          -- inactive = { bg = 'none', fg = '#e1e1e1', gui='italic,bold'},
        },
      }
      -- {
      --   'buffers',
      --   show_filename_only = true, -- shows shortened relative path when false
      --   show_modified_status = true, -- shows indicator then buffer is modified
      --   mode = 0, -- 0 shows buffer name
      --             -- 1 buffer index (bufnr)
      --             -- 2 shows buffer name + buffer index (bufnr)
      --   max_length = vim.o.columns * 2 / 3, -- maximum width of buffers component
      --                                       -- can also be a function that returns value of max_length dynamicaly
      --   filetype_names = {
      --     TelescopePrompt = 'Telescope',
      --     dashboard = 'Dashboard',
      --     packer = 'Packer',
      --     fzf = 'FZF',
      --     alpha = 'Alpha'
      --   }, -- shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )
      --   buffers_color = {
      --     -- Same values like general color option can be used here.
      --     active = 'lualine_{section}_normal', -- color for active buffer
      --     inactive = 'lualine_{section}_inactive', -- color for inactive buffer
      --   },
      -- }
    },
    lualine_b = {
      -- { 'filetype', colored = true, icon_only = true },
      {
        'diagnostics',
        sources = { 'coc' },
        -- displays diagnostics from defined severity
        sections = {'error', 'warn', 'info', 'hint'},
        -- all colors are in format #rrggbb
        diagnostics_color = {
          -- all colors are in format #rrggbb
          error = { fg = '#ff8080', bg = 'NONE' }, -- changes diagnostic's error foreground color
          warn =  { fg = '#c991e1', bg = 'NONE' }, -- changes diagnostic's warn foreground color
          info =  { fg = '#ffe37e', bg = 'NONE' }, -- Changes diagnostic's hint foreground color
          hint =  { fg = '#63f2f1', bg = 'NONE' }, -- Changes diagnostic's info foreground color
        },
        symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
        update_in_insert = false,
        colored = true,
      },
      {
        'filename', file_status = true, path = 1, shoting_target = 80,
        color =  { gui='italic,bold' },
        symbols = {
          modified = '[+]',      -- Text to show when the file is modified.
          readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
          unnamed = '[No Name]', -- Text to show for unnamed buffers.
        }
      }
    },
    lualine_c = {
      -- {
      --   getGPS,
      --   condition = gps.is_available,
      -- },
       -- {
      -- 'windows',
      -- show_filename_only = true,   -- Shows shortened relative path when set to false.
      -- show_modified_status = true, -- Shows indicator when the window is modified.

      -- mode = 0, -- 0: Shows window name
       --          -- 1: Shows window index
       --          -- 2: Shows window name + window index

      -- max_length = vim.o.columns * 2 / 3, -- Maximum width of windows component,
       --                                    -- it can also be a function that returns
       --                                    -- the value of `max_length` dynamically.
      -- filetype_names = {
       --  TelescopePrompt = 'Telescope',
       --  dashboard = 'Dashboard',
       --  packer = 'Packer',
       --  fzf = 'FZF',
       --  alpha = 'Alpha'
      -- }, -- Shows specific window name for that filetype ( { `filetype` = `window_name`, ... } )

      -- disabled_buftypes = { 'quickfix', 'prompt' }, -- Hide a window if its buffer's type is disabled

      -- windows_color = {
       --  -- Same values as the general color option can be used here.
       --  active = 'lualine_{section}_normal',     -- Color for active window.
       --  inactive = 'lualine_{section}_inactive', -- Color for inactive window.
      -- },
    -- },
      -- {
      --   'buffers',
      --   show_filename_only = true,   -- Shows shortened relative path when set to false.
      --   hide_filename_extension = false,   -- Hide filename extension when set to true.
      --   show_modified_status = true, -- Shows indicator when the buffer is modified.

      --   mode = 0, -- 0: Shows buffer name
      --   -- 1: Shows buffer index
      --   -- 2: Shows buffer name + buffer index
      --   -- 3: Shows buffer number
      --   -- 4: Shows buffer name + buffer number

      --   max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
      --   -- it can also be a function that returns
      --   -- the value of `max_length` dynamically.
      --   filetype_names = {
      --     TelescopePrompt = 'Telescope',
      --     dashboard = 'Dashboard',
      --     packer = 'Packer',
      --     fzf = 'FZF',
      --     alpha = 'Alpha'
      --   }, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )

      --   buffers_color = {
      --     -- Same values as the general color option can be used here.
      --     active = 'lualine_{section}_normal',     -- Color for active buffer.
      --     inactive = 'lualine_{section}_inactive', -- Color for inactive buffer.
      --   },

      --   symbols = {
      --     modified = ' ●',      -- Text to show when the buffer is modified
      --     alternate_file = '#', -- Text to show to indify the alternate file
      --     directory =  '',     -- Text to show when the buffer is a directory
      --   },
      -- }
    },
    lualine_x = {
      { "g:coc_status" },
      {
        'branch',
        icon = "",
        color = { fg = '#ff8080', bg = 'None', gui='italic,bold' },
      },
    },
    -- lualine_y = {'progress'},
    lualine_y = {
      {
        'diff',
        colored = true, -- displays diff status in color if set to true
        padding = 1,
        diff_color = {
          added = 'DiffAdd', -- changes diff's added foreground color
          modified = 'DiffChange', -- changes diff's modified foreground color
          removed = 'DiffDelete', -- changes diff's removed foreground color
        },
        symbols = {added = '+', modified = '~', removed = '-'} -- changes diff symbols
      }
    },
    lualine_z = {
      { line_progress, padding = 0 },
      { condition = is_test_file, testFileIcon, color = 'DiffChange' },
      { condition = is_test_file, colored = true, test_stats, color = 'DiffChange' },
    }
  },
  inactive_sections = {
    lualine_a = {
      {
        "tabs",
        mode = 0,
        padding = 1,
        tabs_color = {
          -- active = {bg = '#464f7f', fg = '#c991e1', gui='italic,bold'},
          -- inactive = { bg = 'none', fg = '#e1e1e1', gui='italic,bold'},
        },
      }
    },
    lualine_b = {'filename'},
    lualine_c = {
      {
        'diagnostics',
        sources = { 'coc' },
        -- displays diagnostics from defined severity
        sections = {'error', 'warn', 'info', 'hint'},
        diagnostics_color = {
          -- all colors are in format #rrggbb
          error = { fg = '#ff8080' }, -- changes diagnostic's error foreground color
          warn =  { fg = '#c991e1' }, -- changes diagnostic's warn foreground color
          info =  { fg = '#95ffa4' }, -- Changes diagnostic's hint foreground color
          hint =  { fg = '#63f2f1' }, -- Changes diagnostic's info foreground color
        },
        symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
        update_in_insert = false,
        colored = true,
      }
    },
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {
    'quickfix', 'fzf', 'fugitive', 'fern'
  }
}
