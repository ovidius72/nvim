
" *********** vim-clap
nmap <Leader>kb :Clap buffers<CR>
nmap <Leader>kc :Clap colors<CR>
nmap <Leader>kl :Clap blines<CR>
nmap <Leader>kf :Clap gfiles<CR>
nmap <Leader>ko :Clap files<CR>
nmap <Leader>kg :Clap grep<CR>
nmap <Leader>ks :Clap history<CR>
nmap <Leader>kw :Clap windows<CR>
nmap <Leader>kj :Clap jumps<CR>
nmap <Leader>km :Clap marks<CR>
nmap <Leader>kr :Clap registers<CR>
nmap <Leader>kt :Clap tags<CR>
nmap <Leader>ky :Clap yanks<CR>
nmap <Leader>kh :Clap hist:<CR>
nmap <Leader>kx :Clap filer<CR>
nmap <Leader>kk :Clap<CR>
nmap <Leader>ki :Clap grep ++query=<cword><CR>



" function! OnEnter() abort
"   let opts = nvim_win_get_config(g:clap.display.winid)
"   let opts.width = &columns
"   call nvim_win_set_config(g:clap.display.winid, opts)
" endfunction

" autocmd User ClapOnEnter call OnEnter()
"
" let g:clap_layout = {'relative': 'editor', 'width': '75%', 'col': '12%'}
let g:clap_layout = {'relative': 'editor'}

