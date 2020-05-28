
" *********** vim-clap
nmap <Leader>akb :Clap buffers<CR>
nmap <Leader>akc :Clap colors<CR>
nmap <Leader>akl :Clap blines<CR>
nmap <Leader>akf :Clap gfiles<CR>
nmap <Leader>ako :Clap files<CR>
nmap <Leader>akg :Clap grep<CR>
nmap <Leader>aks :Clap history<CR>
nmap <Leader>akw :Clap windows<CR>
nmap <Leader>akj :Clap jumps<CR>
nmap <Leader>akm :Clap marks<CR>
nmap <Leader>akr :Clap registers<CR>
nmap <Leader>akt :Clap tags<CR>
nmap <Leader>aky :Clap yanks<CR>
nmap <Leader>akh :Clap hist:<CR>
nmap <Leader>akx :Clap filer<CR>
nmap <Leader>akk :Clap<CR>
nmap <Leader>aki :Clap grep ++query=<cword><CR>

" nmap <silent><Leader>kf :Clap files<CR>
" nmap <silent><Leader>kg :Clap gfiles<CR>
" nmap <silent><Leader>kb :Clap buffers<CR>
" nmap <silent><Leader>kc :Clap commits<CR>
" nmap <silent><Leader>kC :Clap bcommits<CR>


" function! OnEnter() abort
"   let opts = nvim_win_get_config(g:clap.display.winid)
"   let opts.width = &columns
"   call nvim_win_set_config(g:clap.display.winid, opts)
" endfunction

" autocmd User ClapOnEnter call OnEnter()
"
" let g:clap_layout = {'relative': 'editor', 'width': '75%', 'col': '12%'}
let g:clap_layout = {'relative': 'editor'}

