local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'LuaTree','vista','dbui'}

local colors = {
  bg = '#282c34',
  yellow = '#fabd2f',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#afd700',
  orange = '#FF8800',
  purple = '#5d4d7a',
  magenta = '#d16d9e',
  grey = '#c0c0c0',
  blue = '#0087d7',
  red = '#ec5f67'
}

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[1] = {
  FirstElement = {
    provider = function() return '▋' end,
    highlight = {colors.blue,colors.yellow}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      local alias = {n = 'NORMAL',i = 'INSERT',c= 'COMMAND',V= 'VISUAL', [''] = 'VISUAL'}
      return alias[vim.fn.mode()]
    end,
    separator = '',
    separator_highlight = {colors.yellow,function()
      if not buffer_not_empty() then
        return colors.purple
      end
      return colors.darkblue
    end},
    highlight = {colors.magenta,colors.yellow,'bold'},
  },
}
gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.darkblue},
  },
}
gls.left[4] = {
  FileName = {
    provider = {'FileName','FileSize'},
    condition = buffer_not_empty,
    separator = '',
    separator_highlight = {colors.purple,colors.darkblue},
    highlight = {colors.magenta,colors.darkblue}
  }
}

gls.left[5] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = buffer_not_empty,
    highlight = {colors.orange,colors.purple},
  }
}
gls.left[6] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = buffer_not_empty,
    highlight = {colors.grey,colors.purple},
  }
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

gls.left[7] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.green,colors.purple},
  }
}
gls.left[8] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.orange,colors.purple},
  }
}
gls.left[9] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.red,colors.purple},
  }
}
gls.left[10] = {
  LeftEnd = {
    provider = function() return '' end,
    separator = '',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.purple,colors.purple}
  }
}
gls.left[11] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}
gls.left[12] = {
  Space = {
    provider = function () return ' ' end
  }
}
gls.left[13] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}
gls.right[1]= {
  FileFormat = {
    provider = 'FileFormat',
    separator = '',
    separator_highlight = {colors.bg,colors.purple},
    highlight = {colors.grey,colors.purple }
  }
}

gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' | ',
    separator_highlight = {colors.darkblue,colors.purple},
    highlight = {colors.grey,colors.purple},
  },
}
gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = '',
    separator_highlight = {colors.darkblue,colors.purple},
    highlight = {colors.grey,colors.darkblue},
  }
}
gls.right[4] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {colors.yellow,colors.purple},
  }
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = '',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.grey,colors.purple}
  }
}


gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = '',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.grey,colors.purple}
  }
}


-- local gl = require 'galaxyline'
-- local fileinfo = require 'galaxyline.provider_fileinfo'
-- local devicons = require 'nvim-web-devicons'
-- local utils = require 'utils'
-- local cl = require 'cfg.colors'

-- local gls = gl.section
-- local u = utils.u

-- local mode_map = {
--     ['n'] = {'NORMAL', cl.normal},
--     ['i'] = {'INSERT', cl.insert},
--     ['R'] = {'REPLACE', cl.replace},
--     ['v'] = {'VISUAL', cl.visual},
--     ['V'] = {'V-LINE', cl.visual},
--     ['c'] = {'COMMAND', cl.command},
--     ['s'] = {'SELECT', cl.visual},
--     ['S'] = {'S-LINE', cl.visual},
--     ['t'] = {'TERMINAL', cl.terminal},
--     [''] = {'V-BLOCK', cl.visual},
--     [''] = {'S-BLOCK', cl.visual},
--     ['Rv'] = {'VIRTUAL'},
--     ['rm'] = {'--MORE'},
-- }

-- local sep = {
--     right_filled = u '2590',
--     left_filled = u '258c',
--     -- right_filled = u 'e0b2',
--     -- left_filled = u 'e0b0',
--     right = u '2503',
--     left = u '2503',
--     -- right = u 'e0b3',
--     -- left = u 'e0b1',
-- }

-- local icons = {
--     locker = u 'f023',
--     unsaved = u 'f693',
--     dos = u 'e70f',
--     unix = u 'f17c',
--     mac = u 'f179',
--     lsp_warn = u 'f071',
--     lsp_error = u 'f46e',
-- }

-- local function mode_label() return mode_map[vim.fn.mode()][1] or 'N/A' end
-- local function mode_hl() return mode_map[vim.fn.mode()][2] or cl.none end

-- local function highlight(group, fg, bg, gui)
--     local cmd = string.format('highlight %s guifg=%s guibg=%s', group, fg, bg)
--     if gui ~= nil then cmd = cmd .. ' gui=' .. gui end
--     vim.cmd(cmd)
-- end

-- local function buffer_not_empty()
--     if vim.fn.empty(vim.fn.expand '%:t') ~= 1 then return true end
--     return false
-- end

-- local function diagnostic_exists()
--     return vim.tbl_isempty(vim.lsp.buf_get_clients(0))
-- end

-- local function wide_enough()
--     local squeeze_width = vim.fn.winwidth(0)
--     if squeeze_width > 80 then return true end
--     return false
-- end

-- gl.short_line_list = {'NvimTree', 'vista', 'dbui'}

-- gls.left = {
--     {
--         ViMode = {
--             provider = function()
--                 local modehl = mode_hl()
--                 highlight('GalaxyViMode', cl.bg, modehl, 'bold')
--                 highlight('GalaxyViModeInv', modehl, cl.bg, 'bold')
--                 return string.format('  %s ', mode_label())
--             end,
--             separator = sep.left_filled,
--             separator_highlight = 'GalaxyViModeInv',
--         },
--     }, {
--         FileIcon = {
--             provider = function()
--                 local fname, ext = vim.fn.expand '%:t', vim.fn.expand '%:e'
--                 local icon, iconhl = devicons.get_icon(fname, ext)
--                 if icon == nil then return '' end
--                 local fg = vim.fn.synIDattr(vim.fn.hlID(iconhl), 'fg')
--                 highlight('GalaxyFileIcon', fg, cl.bg)
--                 return ' ' .. icon .. ' '
--             end,
--             condition = buffer_not_empty,
--         },
--         FileName = {
--             provider = function()
--                 if not buffer_not_empty() then return '' end
--                 local fname
--                 if wide_enough() then
--                     fname = vim.fn.fnamemodify(vim.fn.expand '%', ':~:.')
--                 else
--                     fname = vim.fn.expand '%:t'
--                 end
--                 if #fname == 0 then return '' end
--                 if vim.bo.readonly then
--                     fname = fname .. ' ' .. icons.locker
--                 end
--                 if vim.bo.modified then
--                     fname = fname .. ' ' .. icons.unsaved
--                 end
--                 return ' ' .. fname .. ' '
--             end,
--             highlight = {cl.fg, cl.bg},
--             separator = sep.left,
--             separator_highlight = 'GalaxyViModeInv',
--         },
--     },
-- }

-- gls.right = {
--     {
--         LspStatus = {
--             provider = function()
--                 local connected =
--                   not vim.tbl_isempty(vim.lsp.buf_get_clients(0))
--                 if connected then
--                     return ' ' .. u 'f817' .. ' '
--                 else
--                     return ''
--                 end
--             end,
--             highlight = {cl.lsp_active, cl.bg},
--             separator = sep.right,
--             separator_highlight = 'GalaxyViModeInv',
--         },
--     }, {
--         DiagnosticWarn = {
--             provider = function()
--                 local n = vim.lsp.diagnostic.get_count(0, 'Warning')
--                 if n == 0 then return '' end
--                 return string.format(' %s %d ', icons.lsp_warn, n)
--             end,
--             highlight = {'yellow', cl.bg},
--         },
--         DiagnosticError = {
--             provider = function()
--                 local n = vim.lsp.diagnostic.get_count(0, 'Error')
--                 if n == 0 then return '' end
--                 return string.format(' %s %d ', icons.lsp_error, n)
--             end,
--             highlight = {'red', cl.bg},
--         },
--     }, {
--         FileType = {
--             provider = function()
--                 if not buffer_not_empty() then return '' end
--                 local icon = icons[vim.bo.fileformat] or ''
--                 return string.format(' %s %s ', icon, vim.bo.filetype)
--             end,
--             condition = buffer_not_empty,
--             highlight = {cl.fg, cl.bg},
--             separator = sep.right,
--             separator_highlight = 'GalaxyViModeInv',
--         },
--     }, {
--         PositionInfo = {
--             provider = {
--                 function()
--                     return string.format(
--                       '%s:%s', vim.fn.line('.'), vim.fn.col('.')
--                     )
--                 end,
--             },
--             highlight = 'GalaxyViMode',
--             condition = buffer_not_empty,
--             separator = sep.right_filled,
--             separator_highlight = 'GalaxyViModeInv',
--         },
--         PercentInfo = {
--             provider = fileinfo.current_line_percent,
--             highlight = 'GalaxyViMode',
--             condition = buffer_not_empty,
--             separator = sep.right,
--             separator_highlight = 'GalaxyViMode',
--         },
--     },
-- }

-- for k, v in pairs(gls.left) do gls.short_line_left[k] = v end
-- table.remove(gls.short_line_left, 1)

-- for k, v in pairs(gls.right) do gls.short_line_right[k] = v end
-- table.remove(gls.short_line_right)
-- table.remove(gls.short_line_right)
