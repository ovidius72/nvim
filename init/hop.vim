lua <<EOF
require'hop'.setup {
  case_insensitive = false
}
EOF

" nmap ( :HopChar1<cr>
" nmap ) :HopPattern<cr>
nmap <leader>j1 :HopChar1<cr>
nmap <leader>j2 :HopChar2<cr>
nmap <M-i> :HopChar1<cr>
nmap <leader>ja :HopChar1<cr>
nmap <leader>jl :HopLine<cr>
nmap <leader>jw :HopWord<cr>
nmap <M-w> :HopWord<cr>
nmap <leader>ja :HopChar2<cr>
nmap <leader>jj :HopWordAC<cr>
nmap <leader>jk :HopWordBC<cr>
nmap <leader>jp :HopPattern<cr>
