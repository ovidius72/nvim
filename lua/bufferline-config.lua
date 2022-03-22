local group = require('bufferline.groups');


require('bufferline').setup {
  options = {
    -- groups = {
    --   options = {
    --     toggle_hidden_on_enter = false -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
    --   },
    --   items = {
    --     {
    --       name = "Slices", -- Mandatory
    --       highlight = {gui = "underline", guisp = "red"}, -- Optional
    --       priority = 1, -- determines where it will appear relative to other groups (Optional)
    --       icon = "", -- Optional
    --       matcher = function(buf) -- Mandatory
    --         return buf.filename:match('%Slice.ts') or buf.filename:match('%.slice.ts')
    --       end,
    --     },
    --     {
    --       name = "Selectors", -- Mandatory
    --       highlight = {gui = "underline", guisp = "red"}, -- Optional
    --       priority = 2, -- determines where it will appear relative to other groups (Optional)
    --       icon = "", -- Optional
    --       matcher = function(buf) -- Mandatory
    --         return buf.filename:match('%.selector.*') or buf.filename:match('%.selectors.*')
    --       end,
    --     },
    --     {
    --       name = "Tests", -- Mandatory
    --       highlight = {gui = "underline", guisp = "blue"}, -- Optional
    --       priority = 3, -- determines where it will appear relative to other groups (Optional)
    --       icon = "", -- Optional
    --       matcher = function(buf) -- Mandatory
    --         return buf.filename:match('%_test') or buf.filename:match('%_spec')
    --       end,
    --     },
    --     {
    --       name = "Docs",
    --       highlight = {gui = "undercurl", guisp = "green"},
    --       matcher = function(buf)
    --         return buf.filename:match('%.md') or buf.filename:match('%.txt')
    --       end,
    --       separator = { -- Optional
    --         style = require('bufferline.groups').separator.tab
    --       },
    --     }
    --   }
    -- },
    numbers = "ordinal", --  "none" | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
    --- @deprecated, please specify numbers as a function to customize the styling
    number_style = "none", -- "superscript" | "subscript" | "" | { "none", "subscript" }, -- buffer_id at index 1, ordinal at index 2
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    -- NOTE: this plugin is designed with this icon in mind,
    -- and so changing this is NOT recommended, this is intended
    -- as an escape hatch for people who cannot bear it for whatever reason
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    --- name_formatter can be used to change the buffer's label in the bufferline.
    --- Please note some names can/will break the
    --- bufferline so use this at your discretion knowing that it has
    --- some limitations that will *NOT* be fixed.
    name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
      -- remove extension from markdown files for example
      if buf.name:match('%.md') then
        return vim.fn.fnamemodify(buf.name, ':t:r')
      end
    end,
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,
    diagnostics = false, -- | "nvim_lsp",
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
    -- NOTE: this will be called a lot so don't do any heavy processing here
    -- custom_filter = function(buf_number)
    --   -- filter out filetypes you don't want to see
    --   if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
    --     return true
    --   end
    --   -- filter out by buffer name
    --   if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
    --     return true
    --   end
    --   -- filter out based on arbitrary rules
    --   -- e.g. filter out vim wiki buffer from tabline in your work repo
    --   if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
    --     return true
    --   end
    -- end,
    offsets = {{
      filetype = "fern",
      text = "File Explorer", -- | function ,
      text_align = "left" -- | "center" | "right"
    }},
    show_buffer_icons = true, -- | false, -- disable filetype icons for buffers
    show_buffer_close_icons = false, -- true | false,
    show_close_icon = false, -- | false,
    show_tab_indicators = true, -- | false,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "thin",  -- "slant" | "thick" | "thin" | { 'any', 'any' },
    enforce_regular_tabs = false, -- | true,
    always_show_bufferline = true, -- | false,
    sort_by = 'id', 
      -- | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
      -- add custom logic
      -- return buffer_a.modified > buffer_b.modified
    -- end
  },
}

vim.api.nvim_set_keymap( 'n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap( 'n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap( 'n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap( 'n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap( 'n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap( 'n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap( 'n', '<leader>7', ':BufferLineGoToBuffer 7<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap( 'n', '<leader>8', ':BufferLineGoToBuffer 8<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap( 'n', '<leader>9', ':BufferLineGoToBuffer 9<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap( 'n', '<leader>/', ':BufferLinePick<CR>', {noremap=true, silent=true})

-- nnoremap <leader>bk :BufferClose<CR>
-- nnoremap <leader>bo :BufferCloseAllButCurrent<CR>
-- nnoremap <silent>    <A-c> :BufferClose<CR>
-- vim.api.nvim_set_keymap( 'n', '<leader>bk', ':BufferLineGoToBuffer 9<CR>', {noremap=true, silent=true})

-- nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
-- nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
-- nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
-- nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
-- nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
-- nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
-- nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
-- nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>

-- vim.api.nvim_set_keymap( 'n', '<A>-;', ':BufferLineGoToBuffer 9<CR>', {noremap=true, silent=true})
-- nnoremap <silent> <A-;> :BufferPick<CR>
-- " nnoremap <silent> <Tab><Tab> :BufferPick<CR>
-- " Sort automatically by...
-- nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
-- nnoremap <silent> <Space>bL :BufferOrderByLanguage<CR>
-- " Move to previous/next
-- nnoremap <silent>    <A-[> :BufferPrevious<CR>
-- nnoremap <silent>    <A-]> :BufferNext<CR>
-- " Re-order to previous/next
-- nnoremap <silent>    <A-{> :BufferMovePrevious<CR>
-- nnoremap <silent>    <A-}> :BufferMoveNext<CR>
