-- Statusline for Neovim

vim.g.bubbly_palette = {
   background = "#1f1f24",
   foreground = "#c5cdd9",
   black = "#3e4249",
   red = "#ff8a7a",
   pink = "#ff85b8",
   orange = "#ffa14f",
   green = "#83c8bc",
   green2 = "#8bdf67",
   yellow = "#d9c668",
   blue = "#4ec4e6",
   lightblue = "#6bdfff",
   purple = "#cda1ff",
   cyan = "#6bdfff",
   white = "#ffffff",
   lightgrey = "#838991",
   darkgrey = "#43454b",
}
vim.g.bubbly_statusline = {
   'mode',
   'path',
   'test',
   'truncate',
   -- {{ data = 'string', color = {foreground = 'red', background= 'darkgrey' }, style= bold, left = '/', right = '/' }},
   'signify',
   'coc',
   'divisor',
   'total_buffer_number',
   -- 'filetype',
   'branch',
   'progress'
}
vim.g.bubbly_tabline = 1
vim.g.bubbly_width = {
  default = 0,
  progress = {
    rowandcol = 4
  }
}
-- blacklists bubbly
vim.g.bubbly_filter = {
  branch = {
    'fern',
  },
  total_buffer_number = {
    'fern',
  },
  coc = {
     'fern'
  },
  path = {
    'fern',
  },
  filetype = {
    'fern',
  },
  mode = {
    'fern',
  },
  progress = {
    'fern',
  }
}

vim.g.bubbly_characters = {
  -- Bubble delimiters
  left = '',
  right = '',
  -- Close character for the tabline
  close = 'x',
  -- Bubble separators
  bubble_separator = ' ',
}

vim.g.bubbly_symbols = {
  default = '!!',

  path = {
    readonly = 'RO',
    unmodifiable = '',
    modified = '+',
  },
  signify = {
    added = '+%s', -- requires 1 '%s'
    modified = '~%s', -- requires 1 '%s'
    removed = '-%s', -- requires 1 '%s'
  },
  coc = {
    error = ' %s', -- requires 1 '%s'
    warning = ' %s', -- requires 1 '%s'
  },
  builtinlsp = {
    diagnostic_count = {
      error = 'E%s', -- requires 1 '%s'
      warning = 'W%s', --requires 1 '%s'
    },
  },
  branch = ' %s', -- requires 1 '%s'
  total_buffer_number = '﬘ %s', --requires 1 '%d'
  lsp_status = {
    diagnostics = {
      error = 'E%d',
      warning = 'W%d',
      hint = 'H%d',
      info = 'I%d',
    },
  },
}

vim.g.bubbly_tags = {
  default = 'H',

  mode = {
    normal = 'NORMAL',
    insert = 'INSERT',
    visual = 'VISUAL',
    visualblock = 'V-BLOCK',
    command = 'COMMANDJ',
    terminal = 'TERMINAL',
    replace = 'REPLACE',
    default = 'U',
  },
  paste = 'P',
  filetype = {
    noft = 'no ft',
  },
}

vim.g.bubbly_colors = {
  default = 'red',

  mode = {
    normal = 'lightblue', -- uses by default 'background' as the foreground color.
    insert = 'red',
    visual = 'yellow',
    visualblock = 'yellow',
    command = 'cyan',
    terminal = 'darkgrey',
    replace = 'red',
    default = 'white'
  },
  path = {
    readonly = { background = 'darkgrey', foreground = 'foreground' },
    unmodifiable = { background = 'darkgrey', foreground = 'foreground' },
    path = { background = 'darkgrey', foreground = 'lightblue' },
    modified = { background = 'lightgrey', foreground = 'foreground' },
  },
  branch = { foreground = 'purple', background = 'background' },
  signify = {
    added = 'green',
    modified = 'yellow',
    removed = 'red',
  },
  paste = 'red',
  coc = {
    error = 'red',
    warning = 'yellow',
    status = { background = 'darkgrey', foreground = 'foreground' },
  },
  builtinlsp = {
    diagnostic_count = {
      error = 'red',
      warning = 'yellow',
    },
    current_function = 'purple',
  },
  filetype = 'blue',
  progress = {
    rowandcol = { background = 'darkgrey', foreground = 'foreground' },
    percentage = { background = 'darkgrey', foreground = 'foreground' },
  },
  tabline = {
    active = 'blue',
    inactive = 'white',
    close = 'darkgrey',
  },
  total_buffer_number = { background = 'darkgrey', foreground = 'pink' },
  lsp_status = {
    messages = 'white',
    diagnostics = {
      error = 'red',
      warning = 'yellow',
      hint = 'white',
      info = 'blue',
    },
  },
}

vim.g.bubbly_inactive_color = { background = 'background', foreground = 'lightgrey'  }
