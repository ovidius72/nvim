require'pounce'.setup{
  accept_keys = "JFKDLSAHGNUVRBYTMICEOXWPQZ",
  multi_window = true,
  debug = false,
}
vim.cmd [[
  nmap <C-m> <cmd>Pounce<CR>
  nmap <C-,> <cmd>PounceRepeat<CR>
  vmap gs <cmd>Pounce<CR>
  omap gs <cmd>Pounce<CR>
]]
