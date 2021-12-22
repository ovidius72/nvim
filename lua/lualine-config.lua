local gps = require('nvim-gps')

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

local function vim_icon()
  return ''
end

local function short_mode(mode)
  return mode:sub(1,1)
end

-- local function getGPS()
--   local res = gps.get_location()
--   print(res)
--   return "G: " .. res
-- end


require'lualine'.setup {
  options = {
    -- theme= 'nebulous',
    theme= 'auto',
    -- theme= 'github',
    icons_enabled = true,
    -- component_separators = {'', ''},
    -- section_separators = {'', ''},
    -- section_separators = {'', ''},
    -- component_separators = {'', ''},
    section_separators = '',
    component_separators = '',
    disabled_filetypes = {},
    always_divide_miggle = true,
  },
  sections = {
    lualine_a = {
      {'mode', fmt=short_mode},
    },
    lualine_b = {
      { 'filetype', colored = true, icon_only = true },
      {'filename', file_status = true, path = 1 }
    },
    lualine_c = {
      {
        'diagnostics',
        sources = { 'coc' },
        -- displays diagnostics from defined severity
        sections = {'error', 'warn', 'info', 'hint'},
        -- all colors are in format #rrggbb
        color_error = '#ff8080', -- changes diagnostic's error foreground color
        color_warn = '#ffe9aa', -- changes diagnostic's warn foreground color
        color_hint = '#63f2f1', -- Changes diagnostic's info foreground color
        color_info = '#95ffa4', -- Changes diagnostic's hint foreground color
        symbols = { error = ' ', warn = ' ', info = ' ', hint = ' '}
      },
      { gps.get_location, condition = gps.is_available },
    },
    lualine_x = {
      { "g:coc_status" },
      {
        'branch',
        icon = "",
        color = 'BufferLineInfoDiagnosticSelected',
      },
    },
    -- lualine_y = {'progress'},
    lualine_y = {
      {
        'diff',
        colored = true, -- displays diff status in color if set to true
        diff_color = {
          added = 'DiffAdd', -- changes diff's added foreground color
          modified = 'DiffChange', -- changes diff's modified foreground color
          removed = 'DiffDelete', -- changes diff's removed foreground color
        },
        symbols = {added = '+', modified = '~', removed = '-'} -- changes diff symbols
      }
    },
    lualine_z = {
      { line_progress, color = 'DiffAdd' },
      { condition = is_test_file, testFileIcon, color = 'DiffChange' },
      { condition = is_test_file, colored = true, test_stats, color = 'DiffChange' },
    }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {'filename'},
    lualine_c = {
      {
        'diagnostics',
        sources = { 'coc' },
        -- displays diagnostics from defined severity
        sections = {'error', 'warn', 'info', 'hint'},
        -- all colors are in format #rrggbb
        color_error = '#ff8080', -- changes diagnostic's error foreground color
        color_warn = '#ffe9aa', -- changes diagnostic's warn foreground color
        color_hint = '#63f2f1', -- Changes diagnostic's info foreground color
        color_info = '#95ffa4', -- Changes diagnostic's hint foreground color
        symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '}
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
