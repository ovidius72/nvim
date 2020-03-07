let g:sandwich_no_default_key_mappings = 1
silent! nmap <unique><silent><leader>vad <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
silent! nmap <unique><silent><leader>var <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
silent! nmap <unique><silent><leader>vau <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
silent! nmap <unique><silent><leader>vav <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

let g:operator_sandwich_no_default_key_mappings = 1
" add
silent! nmap <unique><leader>vaa <Plug>(operator-sandwich-add)
silent! xmap <unique><leader>vaa <Plug>(operator-sandwich-add)
silent! omap <unique><leader>vaa <Plug>(operator-sandwich-g@)
" delete
silent! xmap <unique><leader>vad <Plug>(operator-sandwich-delete)
" replace
silent! xmap <unique><leader>var <Plug>(operator-sandwich-replace)


