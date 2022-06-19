local keymap = vim.keymap.set
require("trevj").setup{
    brackets = {first = '([{<', last = ')]}>'}, -- brackets to consider surrounding arguments
    new_line_before_last_bracket = true, -- add new line between last argument and last bracket (only if no last seperator)
    add_seperator_for_last_parameter = true, -- if a seperator should be added if not present after last parameter
    enable_default_keymaps = false, -- enables default keymaps without having to set them below
    keymaps = {
        operator = '<Leader>xK', -- for operator (+motion) line = '<Leader>xk', -- for formatting current line
        visual = '<Leader>xk', -- for formatting visual selection
    },
}
keymap("n", "<leader>xk", "<Cmd>lua require('trevj').format_at_cursor()<CR>", {})
