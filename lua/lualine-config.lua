local gps = require('nvim-gps')

-- local function indentSize ()
  --   local tabLevel = vim.api.nvim_command.tab_size
  --   print(tabLevel)
  --   return tabLevel
-- end
-- local currentTreesitterContext = function()
  --   if not packer_plugins["nvim-treesitter"] or packer_plugins["nvim-treesitter"].loaded == false then
    --     return " "
  --   end
  --   local f = require'nvim-treesitter'.statusline({
      --     indicator_size = 300,
      --     type_patterns = {"class", "function", "method", "interface", "type_spec", "table", "if_statement", "for_statement", "for_in_statement"}
      --   })
    --   local fun_name = string.format("%s", f) -- convert to string, it may be a empty ts node
    --   if fun_name == "vim.NIL" then
      --     return " "
    --   end
    --   return " " .. fun_name
  -- end

  -- local current_treesitter_context = function()
    --   -- if not packer_plugins["nvim-treesitter"] or packer_plugins["nvim-treesitter"].loaded == false then
      --   --   return " "
    --   -- end
    --   local f = require'nvim-treesitter'.statusline({
        --     indicator_size = 300,
        --     type_patterns = {"class", "function", "method", "interface", "type_spec", "table", "if_statement", "for_statement", "for_in_statement"}
        --   })
      --   local context = string.format("%s", f) -- convert to string, it may be a empty ts node

      --   if context == "vim.NIL" then
        --     return " "
      --   end
      --   return " " .. context

    -- end

    local function line_progress()
      return '%3p%%'
    end


    local function vim_icon()
      return ''
    end

    local function short_mode(mode)
      return mode:sub(1,1)
    end

    local function getGPS()
      local res = gps.get_location()
      print(res)
      return "G: " .. res
    end


    require'lualine'.setup {
      options = {
        theme= 'catppuccino',
        -- theme= 'github',
        icons_enabled = true,
        -- component_separators = {'', ''},
        -- section_separators = {'', ''},
        -- section_separators = {'', ''},
        -- component_separators = {'', ''},
        section_separators = '',
        component_separators = '',
        disabled_filetypes = {}
      },
      sections = {
        lualine_a = {
          {vim_icon},
          {'mode', format=short_mode}
        },
        lualine_b = {
          {'filename', { file_status = true, path = 0  }}
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
          {
        "g:coc_status"
      },
    { 'filetype', { colored = true } }},
    -- lualine_y = {'progress'},
    lualine_y = {
      {
        'branch',
        icon = "",
      },
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
      lualine_z = {line_progress}
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
