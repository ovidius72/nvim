let test#strategy = 'vimux'

nmap <silent><leader>tn :TestNearest<CR>
nmap <silent><leader>ti :TestNearest -strategy=floaterm<CR>
nmap <silent><leader>tf :TestFile<CR>
nmap <silent><leader>ts :TestSuite<CR>
nmap <silent><leader>tl :TestLast<CR>
nmap <silent><leader>tv :TestVisit<CR>
