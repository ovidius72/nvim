local gl = require("galaxyline")
local utils = require('utils');
local gls = gl.section
local u = utils.u
local gps = require('nvim-gps')

gl.short_line_list = {" "} -- keeping this table { } as empty will show inactive statuslines

-- local colors = {
--     none = "NONE",
--     bg = "#1e1c31",
--     line_bg = "#212121",
--     fg = "#D8DEE9",
--     fg_green = "#95ffa4",
--     yellow = "#ffe9aa",
--     cyan = "#63f2f1",
--     darkblue = "#65b2ff",
--     green = "#95ffa4",
--     orange = "#FF8800",
--     purple = "#c991e1",
--     magenta = "#906cff",
--     blue = "#91ddff",
--     red = "#ff8080",
--     lightbg = "#100e23",
--     greenYel = "#ffb378"
-- }

-- zenbones theme
local colors = {
  none = "NONE",
  bg = "#d2d2ce",
  line_bg = "#d2d2ce",
  fg = "#f0edec",
  fg_green = "#65a380",
  yellow = "#c0b0a8",
  cyan = "#566a76",
  darkblue = "#1f5a7a",
  green = "#617437",
  orange = "#FF8800",
  purple = "#cda1ff",
  magenta = "#c678dd",
  blue = "#a6ceef",
  red = "#c23c55",
  lightbg = "#d2d2ce",
  nord = "#81A1C1",
  greenYel = "#55672a"
}
-- dark
-- local colors = {
--     none = "NONE",
--     bg = "#282c34",
--     line_bg = "#282c34",
--     fg = "#D8DEE9",
--     fg_green = "#65a380",
--     yellow = "#A3BE8C",
--     cyan = "#6bdfff",
--     darkblue = "#61afef",
--     green = "#BBE67E",
--     orange = "#FF8800",
--     purple = "#cda1ff",
--     magenta = "#c678dd",
--     blue = "#22262C",
--     red = "#DF8890",
--     lightbg = "#3C4048",
--     nord = "#81A1C1",
--     greenYel = "#EBCB8B"
-- }

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

local mode_map = {
    ['n'] = {'NORMAL', colors.cyan},
    ['i'] = {'INSERT', colors.fg_green},
    ['R'] = {'REPLACE', colors.red},
    ['v'] = {'VISUAL', colors.greenYel},
    ['V'] = {'V-LINE', colors.greenYel},
    ['c'] = {'COMMAND', colors.blue},
    ['s'] = {'SELECT', colors.orange},
    ['S'] = {'S-LINE', colors.purple},
    ['t'] = {'TERMINAL', colors.lightbg},
    [''] = {'V-BLOCK', colors.greenYel},
    [''] = {'S-BLOCK', colors.orange},
    ['Rv'] = {'VIRTUAL'},
    ['rm'] = {'--MORE'},
}

local sep = {
    right_filled = u '2590',
    left_filled = u '258c',
    -- right_filled = u 'e0b2',
    -- left_filled = u 'e0b0',
    right = u '2503',
    left = u '2503',
    -- right = u 'e0b3',
    -- left = u 'e0b1',
}

local function mode_label() return mode_map[vim.fn.mode()][1] or 'N/A' end
local function mode_hl() return mode_map[vim.fn.mode()][2] or colors.none end

local function highlight(group, fg, bg, gui)
    local cmd = string.format('highlight %s guifg=%s guibg=%s', group, fg, bg)
    if gui ~= nil then cmd = cmd .. ' gui=' .. gui end
    vim.cmd(cmd)
end


gls.left[1] = {
    leftRounded = {
        -- provider = function()
        --     return ""
        -- end,
        -- highlight = {colors.nord, colors.bg}
        provider = function()
            return ""
        end,
        -- separator = " ",
        separator_highlight = {colors.bg, colors.bg},
        highlight = 'GalaxyViModeInv'
    }
}

gls.left[2] = {
    ViMode = {
        provider = function()
            local modehl = mode_hl();
            local alias = {
                n = "NORMAL",
                i = "INSERT",
                c = "COMMAND",
                V = "VISUAL",
                [""] = "VISUAL",
                v = "VISUAL",
                R = "REPLACE"
            }
            highlight('GalaxyViMode', colors.bg, modehl, 'bold')
            highlight('GalaxyViModeInv', modehl, colors.bg, 'bold')
            return string.format(' %s', mode_label())
        end,
        -- separator = sep.left_filled,
        separator_highlight = 'GalaxyViModeInv'
    }
    -- statusIcon = {
    --     provider = function()
    --         return "   "
    --     end,
    --     highlight = {colors.bg, colors.nord},
    --     separator = " ",
    --     separator_highlight = {colors.lightbg, colors.lightbg}
    -- }
}

gls.left[3] = {
    rightRounded = {
        provider = function()
            return ""
        end,
        -- highlight = {colors.fg, colors.bg}
        -- separator_highlight = 'GalaxyViModeInv',
        separator_highlight = {colors.bg, colors.bg},
        separator = " ",
        highlight = 'GalaxyViModeInv'
    }
}

gls.left[4] = {
    teech = {
        provider = function()
            return ""
        end,
        highlight = {colors.lightbg, colors.bg}
    }
}

gls.left[5] = {
    FileIcon = {
        provider = "FileIcon",
        condition = buffer_not_empty,
        highlight = {require("galaxyline.provider_fileinfo").get_file_icon_color, colors.lightbg}
    }
}

gls.left[6] = {
    FileName = {
        provider = {"FileName", "FileSize"},
        condition = buffer_not_empty,
        highlight = {colors.fg, colors.lightbg}
    }
}

gls.left[7] = {
    teechL = {
        provider = function()
            return ""
        end,
        separator = " ",
        highlight = {colors.lightbg, colors.bg}
    }
}

local checkwidth = function()
    local squeeze_width = vim.fn.winwidth(0) / 2
    if squeeze_width > 40 then
        return true
    end
    return false
end

gls.left[8] = {
    nvimGPS = {
        provider = function()
          return "T: " .. gps.get_location()
        end,
        condition = function()
          return gps.is_available()
        end
    }
}

gls.left[9] = {
    DiffAdd = {
        provider = "DiffAdd",
        condition = checkwidth,
        icon = "  ",
        highlight = {colors.fg_green, colors.line_bg}
    }
}

gls.left[10] = {
    DiffModified = {
        provider = "DiffModified",
        condition = checkwidth,
        icon = " ",
        highlight = {colors.orange, colors.line_bg}
    }
}

gls.left[11] = {
    DiffRemove = {
        provider = "DiffRemove",
        condition = checkwidth,
        icon = " ",
        highlight = {colors.red, colors.line_bg}
    }
}

gls.left[12] = {
    LeftEnd = {
        provider = function()
            return " "
        end,
        separator = "  ",
        condition = checkwidth,
        separator_highlight = {colors.fg, colors.line_bg},
        highlight = {colors.fg, colors.line_bg}
    }
}


gls.left[13] = {
    Space = {
        provider = function()
            return " "
        end,
        condition = checkwidth,
        highlight = {colors.line_bg, colors.line_bg}
    }
}

gls.left[14] = {
    CocStatus = {
        provider = function() 
            -- return vim.fn['coc#status']()
            local res = vim.g.coc_status or ""
            if string.len(res) > 1 then
                return "  " .. res
            else
                return ""
            end
        end,
        condition = checkwidth,
        highlight = {colors.fg, colors.bg}
    }
}

-- RIGHT
gls.right[1] = {
    DiagnosticError = {
        provider = "DiagnosticError",
        icon = "   ",
        highlight = {colors.bg, colors.red}
    }
}

-- gls.left[11] = {
--     Space = {
--         provider = function()
--             return " "
--         end,
--         highlight = {colors.line_bg, colors.line_bg}
--     }
-- }

gls.right[2] = {
    DiagnosticWarn = {
        provider = "DiagnosticWarn",
        icon = "   ",
        highlight = {colors.bg, colors.greenYel}
    }
}

gls.right[3] = {
    Space = {
        provider = function()
            return " "
        end,
        condition = checkwidth,
        highlight = {colors.line_bg, colors.line_bg}
    }
}

gls.right[4] = {
    GitIcon = {
        provider = function()
            return "  "
        end,
        condition = require("galaxyline.provider_vcs").check_git_workspace,
        highlight = {colors.green, colors.line_bg}
    }
}

gls.right[5] = {
    GitBranch = {
        provider = "GitBranch",
        condition = require("galaxyline.provider_vcs").check_git_workspace,
        highlight = {colors.green, colors.line_bg}
    }
}

-- gls.right[6] = {
--     right_LeftRounded = {
--         provider = function()
--             return ""
--         end,
--         separator = " ",
--         separator_highlight = {colors.bg, colors.bg},
--         -- highlight = {colors.red, colors.bg},
--         -- separator_highlight = 'GalaxyViModeInv',
--         highlight = 'GalaxyViModeInv'
--     }
-- }

-- gls.right[7] = {
--     ViMode = {
--         provider = function()
--             local modehl = mode_hl();
--             local alias = {
--                 n = "NORMAL",
--                 i = "INSERT",
--                 c = "COMMAND",
--                 V = "VISUAL",
--                 [""] = "VISUAL",
--                 v = "VISUAL",
--                 R = "REPLACE"
--             }
--             highlight('GalaxyViMode', colors.bg, modehl, 'bold')
--             highlight('GalaxyViModeInv', modehl, colors.bg, 'bold')
--             return string.format(' %s', mode_label())
--         end,
--         -- separator = sep.left_filled,
--         separator_highlight = 'GalaxyViModeInv'
--     }
-- }

-- gls.right[8] = {
--     rightRounded = {
--         provider = function()
--             return ""
--         end,
--         -- highlight = {colors.fg, colors.bg}
--         -- separator_highlight = 'GalaxyViModeInv',
--         separator_highlight = {colors.bg, colors.bg},
--         highlight = 'GalaxyViModeInv'
--     }
-- }

gls.right[6] = {
    PositionInfo = {
        provider = {
            function()
                return string.format(
                  ' %s/%s:%s',vim.fn.line('.'), vim.api.nvim_buf_line_count(0), vim.fn.col('.')
                )
            end,
        },
        separator = " ",
        highlight = {colors.bg, colors.fg},
        condition = buffer_not_empty,
        separator_highlight = {colors.bg, colors.bg},
    },
}

gls.right[7] = {
    PerCent = {
        provider = "LinePercent",
        separator = " ",
        separator_highlight = {colors.fg, colors.fg},
        highlight = {colors.bg, colors.fg}
    }
}
