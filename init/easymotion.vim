"******** vim-motion"
" change default prefix 
let g:EasyMotion_smartcase = 1
map ,, <Plug>(easymotion-prefix)
" <Leader>f{char} to move to {char}
" map  <Leader>jc <Plug>(easymotion-bd-f)
" map  <Leader>jbt <Plug>(easymotion-bd-tl)
" nmap <Leader>jc <Plug>(easymotion-overwin-f)
" nmap <Leader>je <Plug>(easymotion-bd-e)

" " s{char}{char} to move to {char}{char}
" nmap <Leader>js <Plug>(easymotion-overwin-f2)

" nmap <Leader>ja <Plug>(easymotion-s2)
" nmap <Leader>jt <Plug>(easymotion-t2)

" nmap <Leader>jm <Plug>(easymotion-sn)
" omap <Leader>jm <Plug>(easymotion-tn)

" " Move to line
" map  <Leader>jbk <Plug>(easymotion-bd-jk)
" nmap <Leader>jol <Plug>(easymotion-overwin-line)

" nmap <Leader>jk <Plug>(easymotion-k) 
" nmap <Leader>jj <Plug>(easymotion-j)
nmap ,,l <Plug>(easymotion-lineforward)
nmap ,,h <Plug>(easymotion-linebackward)


" " repeat last motion
" nmap <Leader>j. <Plug>(easymotion-repeat)
" nmap <Leader>jn <Plug>(easymotion-next)
" nmap <Leader>jp <Plug>(easymotion-prev)

" " Move to word
" map  <Leader>jbw <Plug>(easymotion-bd-w)
nmap ,,w <Plug>(easymotion-overwin-w)
" nmap <Leader>jw <Plug>(easymotion-overwin-w)




" incsearch.vim x fuzzy x vim-easymotion

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> <Leader>/ incsearch#go(<SID>config_easyfuzzymotion())
