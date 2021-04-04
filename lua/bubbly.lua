-- Statusline for Neovim

vim.g.bubbly_palette = {
   background = "NONE",
   foreground = "#c5cdd9",
   black = "#3e4249",
   red = "#ff8a7a",
   green = "#83c8bc",
   yellow = "#d9c668",
   blue = "#4ec4e6",
   purple = "#cda1ff",
   cyan = "#6bdfff",
   white = "#ffffff",
   lightgrey = "#838991",
   darkgrey = "#43454b",
}
vim.g.bubbly_statusline = {
   'mode',
   'truncate',
   'path',
   'signify',
   'coc',
   'divisor',
   -- 'filetype',
   'total_buffer_number',
   'branch',
   'progress'
}
vim.g.bubbly_tabline = 1

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
    normal = 'N',
    insert = 'I',
    visual = 'V',
    visualblock = 'V-B',
    command = 'C',
    terminal = 'T',
    replace = 'R',
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
    normal = 'cyan', -- uses by default 'background' as the foreground color.
    insert = 'red',
    visual = 'red',
    visualblock = 'yellow',
    command = 'cyan',
    terminal = 'darkgrey',
    replace = 'red',
    default = 'white'
  },
  path = {
    readonly = { background = 'darkgrey', foreground = 'foreground' },
    unmodifiable = { background = 'darkgrey', foreground = 'foreground' },
    path = { background = 'darkgrey', foreground = 'cyan' },
    modified = { background = 'lightgrey', foreground = 'foreground' },
  },
  branch = { foreground = 'red', background = 'darkgrey' },
  signify = {
    added = 'green',
    modified = 'blue',
    removed = 'red',
  },
  paste = 'red',
  coc = {
    error = 'red',
    warning = 'yellow',
    status = { background = 'lightgrey', foreground = 'foreground' },
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
    rowandcol = { background = 'lightgrey', foreground = 'foreground' },
    percentage = { background = 'darkgrey', foreground = 'foreground' },
  },
  tabline = {
    active = 'blue',
    inactive = 'white',
    close = 'darkgrey',
  },
  total_buffer_number = 'darkgrey',
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
