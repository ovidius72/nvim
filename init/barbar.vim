let bufferline = get(g:, 'bufferline', {})
" Magic buffer-picking mode
nnoremap <silent> <A-;> :BufferPick<CR>
" nnoremap <silent> <Tab><Tab> :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bL :BufferOrderByLanguage<CR>
" Move to previous/next
nnoremap <silent>    <A-[> :BufferPrevious<CR>
nnoremap <silent>    <A-]> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-{> :BufferMovePrevious<CR>
nnoremap <silent>    <A-}> :BufferMoveNext<CR>
" Goto buffer in position...
noremap <leader>1 :BufferGoto 1<cr>
noremap <leader>2 :BufferGoto 2<cr>
noremap <leader>3 :BufferGoto 3<cr>
noremap <leader>4 :BufferGoto 4<cr>
noremap <leader>5 :BufferGoto 5<cr>
noremap <leader>6 :BufferGoto 6<cr>
noremap <leader>7 :BufferGoto 7<cr>
noremap <leader>8 :BufferGoto 8<cr>
noremap <leader>9 :BufferGoto 9<cr>
noremap <leader>0 :BufferGoto 10<cr>
" Close buffer
nnoremap <leader>bk :BufferClose<CR>
nnoremap <leader>bo :BufferCloseAllButCurrent<CR>
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used
let bufferline.animation = v:true
let bufferline.tabpages = v:true
let bufferline.tabpages = v:true
let bufferline.closable = v:true
let bufferline.icons = 'both'
