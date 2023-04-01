local keymap = vim.keymap.set

local js =  {
    left = "console.log('",
    right = "');",
    mid_var = "', ",
    right_var = ");",
}

local opts = {
  create_keymaps = true,
  create_commands = true,
  print_tag = "**** 🎸: ",
  move_to_debugline = true,
  filetypes = {
    ['javascript'] = js,
    ['javascriptreact'] = js,
    ['typescript'] = js,
    ['typescriptreact'] = js,
  }
}

require("debugprint").setup(opts)
-- keymap("n", "<Leader>op", "<Cmd>lua require('debugprint').debugprint({ variable = true })<CR>")
-- keymap("n", "<Leader>oP", "<Cmd>lua require('debugprint').debugprint({ above = true })<CR>")
-- keymap("n", "<Leader>oq", "<Cmd>lua require('debugprint').debugprint({ variable = true })<CR>")
keymap("n", "<Leader>od", "<Cmd>DeleteDebugPrints<CR>")
-- vim.keymap.set("n", "<leader>op", function()
--     return require('debugprint').debugprint({ variable = true })
-- end, {
--     expr = true,
-- })
--
vim.keymap.set("n", "gpP", function()
    return require('debugprint').debugprint({ above = true })
end, { expr = true })

vim.keymap.set("n", "gpp", function()
    return require('debugprint').debugprint({ variable = true })
end, { expr = true })

vim.keymap.set("n", "gpV", function()
    return require('debugprint').debugprint({ above = true, variable = true })
end, { expr = true })

vim.keymap.set("n", "gpv", function()
   return require('debugprint').debugprint()
end, { expr = true })

-- vim.api.nvim_create_user_command("DeleteDebugs", function(opts)
--     M.deleteprints(opts)
-- end, {
--     range = true})
-- end)
