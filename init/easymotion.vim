"******** vim-motion"
" <Leader>f{char} to move to {char}
map  <Leader>jf <Plug>(easymotion-bd-f)
nmap <Leader>jf <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <Leader>js <Plug>(easymotion-overwin-f2)

nmap <Leader>ja <Plug>(easymotion-s2)
nmap <Leader>jt <Plug>(easymotion-t2)

nmap <Leader>jm <Plug>(easymotion-sn)
omap <Leader>jm <Plug>(easymotion-tn)

" Move to line
map  <Leader>jb <Plug>(easymotion-bd-jk)
nmap <Leader>jb <Plug>(easymotion-overwin-line)

nmap <Leader>jk <Plug>(easymotion-k)
nmap <Leader>jj <Plug>(easymotion-j)
nmap <Leader>jl <Plug>(easymotion-lineforward)
nmap <Leader>jh <Plug>(easymotion-linebackward)


" repeat last motion
nmap <Leader>j. <Plug>(easymotion-repeat)
nmap <Leader>jn <Plug>(easymotion-next)
nmap <Leader>jp <Plug>(easymotion-prev)

" Move to word
map  <Leader>jw <Plug>(easymotion-bd-w)
nmap <Leader>jw <Plug>(easymotion-overwin-w)

let g:smart_case = 1
let g:EasyMotion_smart_case=1
