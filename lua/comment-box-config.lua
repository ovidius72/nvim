local keymap = vim.keymap.set
local cb = require("comment-box")

keymap({ "n", "v"}, "gcb", "<Cmd>lua require('comment-box').lbox()<CR>", {})
keymap({ "n", "v"}, "gck", "<Cmd>lua require('comment-box').cbox()<CR>", {})
keymap({ "n", "v"}, "<M-/>", "<Cmd>lua require('comment-box').cbox(7)<CR>", {})

keymap("n", "gcl", "<Cmd>lua require('comment-box').line()<CR>", {})
keymap("i", "<M-,>", "<Cmd>lua require('comment-box').line()<CR>", {})
keymap("i", "<M-/>", "<Cmd>lua require('comment-box').cbox(7)<CR>", {})
