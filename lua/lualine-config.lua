local gps = require('nvim-gps')

require'lualine'.setup {
  options = {
    theme= 'moonlight',
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
    lualine_a = {{'mode', format=function(mode) return mode:sub(1,1) end }},
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
        color_error = '#eb6f92', -- changes diagnostic's error foreground color
        color_warn = '#f6c177', -- changes diagnostic's warn foreground color
        color_hint = '#9ccfd8', -- Changes diagnostic's info foreground color
        color_info = '#31748f', -- Changes diagnostic's hint foreground color
        symbols = { error = ' ', warn = ' ', info = ' ', hint = ' '}
      },
      { gps.get_location, condition = gps.is_available },
      {
        "g:coc_status"
      }
    },
    lualine_x = {'filetype'},
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
    lualine_z = {'location', 'progress'}
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
        color_error = '#eb6f92', -- changes diagnostic's error foreground color
        color_warn = '#f6c177', -- changes diagnostic's warn foreground color
        color_hint = '#9ccfd8', -- Changes diagnostic's info foreground color
        color_info = '#31748f', -- Changes diagnostic's hint foreground color
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
