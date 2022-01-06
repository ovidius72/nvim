local actions = require('telescope.actions')
local action_layout = require('telescope.actions.layout')

-- Global remapping
require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        },
        prompt_prefix = "> ",
        selection_caret = "> ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                preview_height = 0.8,
                preview_width = 0.55,
                preview_cutoff = 0,
                results_width = 0.45,
                width = 0.75,
                results_height = 0.4,
                prompt_position = "bottom",
            },
            vertical = {
                mirror = false,
                preview_cutoff = 0,
                height = 0.9,
                width = 0.8,
                prompt_position = "bottom",
            },
        },
        file_sorter = require'telescope.sorters'.get_fzf_sorter,
        file_ignore_patterns = {},
        generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
        display_path = true,
        inblend = 0,
        border = {},
        borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
        color_devicons = true,
        use_less = true,
        set_env = {['COLORTERM'] = 'truecolor'}, -- default = nil,
        -- file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        -- grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        -- qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
        -- Developer configurations: Not meant for general override
        -- buffer_previewer_maker = require'telescope.previewers'.buffer_previver_maker,
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                -- To disable a keymap, put [map] = false
                -- So, to not map "<C-n>", just put
                -- ["<c-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
                ["<C-p>"] = action_layout.toggle_preview,
                ["<C-y>"] = action_layout.cycle_layout_prev,
                ["<C-c>"] = actions.close,

                -- Otherwise, just set the mapping to the function that you want it to be.
                -- ["<C-i>"] = actions.select_horizontal,

                -- Add up multiple actions
                ["<CR>"] = actions.select_default + actions.center,
            },
            n = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.send_to_qflist,
                ["<C-l>"] = "which_key",
                ["<C-p>"] = action_layout.toggle_preview,
                ["<C-y>"] = action_layout.cycle_layout_prev,
                ["<C-c>"] = actions.close
                -- ["<esc>"] = actions.close,
                -- ["<C-i>"] = my_cool_custom_action,
            }
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('coc')
-- require('telescope').load_extension('z')

local M = {}

M.search_vim_files = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Vim Files >",
    cwd = "~/.config/nvim",
  })
end

vim.api.nvim_set_keymap('v', '<leader><leader>v', 'y<ESC>:Telescope live_grep default_text=<c-r>0<CR>', {noremap = true, silent = true })

return M
