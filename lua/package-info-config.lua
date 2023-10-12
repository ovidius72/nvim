require('package-info').setup({
  package_manager = 'npm'
})

vim.api.nvim_set_keymap(
  "n",
  "<leader>PP",
  "<cmd>lua require('package-info').show()<cr>",
  { silent = true, noremap = true, desc = "Show package" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>PF",
  "<cmd>lua require('package-info').show({ force = true })<cr>",
  { silent = true, noremap = true, desc = "Force show package" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>Pd",
  "<cmd>lua require('package-info').delete()<cr>",
  { silent = true, noremap = true, desc = "Delete package" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>Pc",
  "<cmd>lua require('package-info').change_version()<cr>",
  { silent = true, noremap = true, desc = "Change package version" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>Pi",
  "<cmd>lua require('package-info').install()<cr>",
  { silent = true, noremap = true, desc = "Install package" }
)
vim.keymap.set({ "n" }, "<leader>Pu", require("package-info").update,
  { silent = true, noremap = true, desc = "Update package" })
vim.keymap.set({ "n" }, "<leader>Pt", require("package-info").toggle,
  { silent = true, noremap = true, desc = "Toggle package info" })
vim.keymap.set({ "n" }, "<leader>Ph", require("package-info").hide,
  { silent = true, noremap = true, desc = "Hide package info" })
