local wilder = require('wilder')

wilder.setup({modes = {':', '/', '?'}})
vim.cmd [[
set wildcharm=<Tab>
cmap <expr> <C-j> wilder#in_context() ? wilder#next() : "\<Tab>"
cmap <expr> <C-k> wilder#in_context() ? wilder#previous() : "\<S-Tab>"
]]

local gradient = {
  '#f4468f', '#fd4a85', '#ff507a', '#ff566f', '#ff5e63',
  '#ff6658', '#ff704e', '#ff7a45', '#ff843d', '#ff9036',
  '#f89b31', '#efa72f', '#e6b32e', '#dcbe30', '#d2c934',
  '#c8d43a', '#bfde43', '#b6e84e', '#aff05b'
}

for i, fg in ipairs(gradient) do
  gradient[i] = wilder.make_hl('WilderGradient' .. i, 'Pmenu', {{a = 1}, {a = 1}, {foreground = fg}})
end

wilder.set_option('pipeline', {
  wilder.branch(
    wilder.python_search_pipeline({
      pattern = 'fuzzy',
    }),
    -- wilder.python_file_finder_pipeline({
    --   file_command = function(ctx, arg)
    --     if string.find(arg, '.') ~= nil then
    --       return {'fdfind', '-tf', '-H'}
    --     else
    --       return {'fdfind', '-tf'}
    --     end
    --   end,
    --   dir_command = {'fd', '-td'},
    --   filters = {'cpsm_filter'},
    -- }),
    wilder.substitute_pipeline({
      pipeline = wilder.python_search_pipeline({
        skip_cmdtype_check = 1,
        pattern = wilder.python_fuzzy_pattern({
          start_at_boundary = 0,
        }),
      }),
    }),
    wilder.cmdline_pipeline({
      -- sets the language to use, 'vim' and 'python' are supported
      language = 'python',
      -- 0 turns off fuzzy matching
      -- 1 turns on fuzzy matching
      -- 2 partial fuzzy matching (match does not have to begin with the same first letter)
      fuzzy = 1,
    }),
    wilder.python_search_pipeline({
      -- can be set to wilder#python_fuzzy_delimiter_pattern() for stricter fuzzy matching
      pattern = wilder.python_fuzzy_pattern(),
      -- omit to get results in the order they appear in the buffer
      sorter = wilder.python_difflib_sorter(),
      -- can be set to 're2' for performance, requires pyre2 to be installed
      -- see :h wilder#python_search() for more details
      engine = 're',
    })
  ),
})
wilder.set_option('renderer', wilder.popupmenu_renderer({
  highlights = {
    gradient = gradient, -- must be set
  },
  highlighter = wilder.highlighter_with_gradient({
    wilder.basic_highlighter(), -- or wilder.lua_fzy_highlighter(),
  }),
  left = {' ', wilder.popupmenu_devicons()},
  right = {' ', wilder.popupmenu_scrollbar()},
}))

-- wilder.set_option('renderer', wilder.popupmenu_renderer(
--   wilder.popupmenu_border_theme({
--     highlights = {
--       border = 'Normal', -- highlight to use for the border
--     },
--     -- 'single', 'double', 'rounded' or 'solid'
--     -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
--     border = 'rounded',
--   })
-- ))
local popupmenu_renderer = wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    border = 'rounded',
    empty_message = wilder.popupmenu_empty_message_with_spinner(),
    highlights = {
      gradient = gradient, -- must be set
    },
    highlighter = wilder.highlighter_with_gradient({
      wilder.basic_highlighter(), -- or wilder.lua_fzy_highlighter(),
    }),
    left = {
      ' ',
      wilder.popupmenu_devicons(),
      wilder.popupmenu_buffer_flags({
        flags = ' a + ',
        icons = {['+'] = '', a = '', h = ''},
      }),
    },
    right = {
      ' ',
      wilder.popupmenu_scrollbar(),
    },
  })
)

local wildmenu_renderer = wilder.wildmenu_renderer({
  highlighter = wilder.highlighter_with_gradient({
    wilder.basic_highlighter(), -- or wilder.lua_fzy_highlighter(),
  }),
  highlights = {
    gradient = gradient, -- must be set
  },
  separator = ' · ',
  left = {' ', wilder.wildmenu_spinner(), ' '},
  right = {' ', wilder.wildmenu_index()},
})
wilder.set_option('renderer', wilder.renderer_mux({
  [':'] = popupmenu_renderer,
  ['/'] = popupmenu_renderer,
  substitute = wildmenu_renderer,
}))
