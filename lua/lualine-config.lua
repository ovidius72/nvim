local gps = require('nvim-gps')

local function line_progress()
  return '%3p%%'
end

local function vim_icon()
  return ''
end

local function short_mode(mode)
  return mode:sub(1,1) 
end


require'lualine'.setup {
  options = {
    theme= 'catppuccino',
    icons_enabled = true,
    -- component_separators = {'', ''},
    -- section_separators = {'', ''},
    -- section_separators = {'', ''},
    -- component_separators = {'', ''},
    section_separators = '',
    component_separators = '|',
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {
      {vim_icon},
      {'mode', format=short_mode}
  },
    lualine_b = {
      {'filename', { file_status = true, path = 1  }}
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
      {
        "g:coc_status"
      }
    },
    lualine_x = {{ 'filetype', { colored = true } }},
    -- lualine_y = {'progress'},
    lualine_y = {
      'branch',
      {
        'diff',
        colored = true, -- displays diff status in color if set to true
        -- all colors are in format #rrggbb
        color_added = nil, -- changes diff's added foreground color
        color_modified = nil, -- changes diff's modified foreground color
        color_removed = nil, -- changes diff's removed foreground color
        symbols = {added = '+', modified = '~', removed = '-'} -- changes diff symbols
      }
    },
    lualine_z = {'location', line_progress}
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
    'quickfix', 'fzf', 'fugitive'
  }
}
