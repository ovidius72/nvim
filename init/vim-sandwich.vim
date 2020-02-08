let g:sandwich_no_default_key_mappings = 1
silent! nmap <unique><silent> gd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
silent! nmap <unique><silent> gr <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
silent! nmap <unique><silent> gdb <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
silent! nmap <unique><silent> grb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

let g:operator_sandwich_no_default_key_mappings = 1
" add
silent! nmap <unique> ga <Plug>(operator-sandwich-add)
silent! xmap <unique> ga <Plug>(operator-sandwich-add)
silent! omap <unique> ga <Plug>(operator-sandwich-g@)
" delete
silent! xmap <unique> gd <Plug>(operator-sandwich-delete)
" replace
silent! xmap <unique> gr <Plug>(operator-sandwich-replace)
