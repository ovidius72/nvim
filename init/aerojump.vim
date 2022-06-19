nmap <Leader>rs <Plug>(AerojumpSpace)
nmap <Leader>rr <Plug>(AerojumpBolt)
nmap <Leader>? <Plug>(AerojumpBolt)
nmap <Leader>ra <Plug>(AerojumpFromCursorBolt)
nmap <Leader>rd <Plug>(AerojumpDefault)
nmap <Leader>rm <Plug>(AerojumpMilk)

let g:aerojump_keymaps = {
  \ "<C-j>": "AerojumpDown",
  \ "<Esc>": "AerojumpExit",
  \ "<C-c>": "AerojumpExit",
  \ "<C-k>": "AerojumpUp",
  \ }
