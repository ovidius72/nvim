nmap <Leader>rjs <Plug>(AerojumpSpace)
nmap <Leader>rjr <Plug>(AerojumpBolt)
nmap <Leader>?j <Plug>(AerojumpBolt)
nmap <Leader>rja <Plug>(AerojumpFromCursorBolt)
nmap <Leader>rjd <Plug>(AerojumpDefault)
nmap <Leader>rjm <Plug>(AerojumpMilk)

let g:aerojump_keymaps = {
  \ "<C-j>": "AerojumpDown",
  \ "<Esc>": "AerojumpExit",
  \ "<C-c>": "AerojumpExit",
  \ "<C-k>": "AerojumpUp",
  \ }
