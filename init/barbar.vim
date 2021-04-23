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
let bufferline.icon_custom_colors = v:true

let fg_target = '#ff8a7a'
hi BufferVisible guibg=#34353b guifg=White
hi BufferVisibleIndex guibg=#34353b guifg=White
hi BufferVisibleMod guibg=#34353b guifg=White
hi BufferVisibleSign guibg=#34353b guifg=White
hi BufferVisibleTarget guibg=#34353b guifg=White

hi BufferInactive guibg=Black guifg=#43454b
hi BufferInactiveMod guibg=Black guifg=#43454b
hi BufferInactiveSign guibg=Black guifg=#43454b
hi BufferInactiveIndex guibg=Black guifg=#43454b
hi BufferInactiveIcon guibg=Black guifg=#43454b
hi BufferInactiveTarget guibg=Black guifg=#43454b

hi BufferCurrent guibg=#6bdfff guifg=#43454b
hi BufferCurrentMod guibg=#6bdfff guifg=#43454b
hi BufferCurrentSign guibg=#6bdfff guifg=#43454b
hi BufferCurrentIndex guibg=#6bdfff guifg=#43454b
hi BufferCurrentIcon guibg=#6bdfff guifg=#43454b
hi BufferCurrentTarget guibg=#6bdfff guifg=#43454b

hi BufferTabpages guibg=bg guifg=White
hi BufferTabpageFill guibg=bg guifg=White
" let fg_current  = s:fg(['Normal'], '#efefef')
" let fg_visible  = s:fg(['TabLineSel'], '#efefef')
" let fg_inactive = s:fg(['TabLineFill'], '#888888')

" let fg_modified  = s:fg(['WarningMsg'], '#E5AB0E')
" let fg_special  = s:fg(['Special'], '#599eff')
" let fg_subtle  = s:fg(['NonText', 'Comment'], '#555555')

" let bg_current  = s:bg(['Normal'], '#000000')
" let bg_visible  = s:bg(['TabLineSel', 'Normal'], '#000000')
" let bg_inactive = s:bg(['TabLineFill', 'StatusLine'], '#000000')
" call s:hi_all([
" \ ['BufferCurrent',        fg_current,  bg_current],
" \ ['BufferCurrentIndex',   fg_special,  bg_current],
" \ ['BufferCurrentMod',     fg_modified, bg_current],
" \ ['BufferCurrentSign',    fg_special,  bg_current],
" \ ['BufferCurrentTarget',  fg_target,   bg_current,   'bold'],
" \ ['BufferVisible',        fg_visible,  bg_visible],
" \ ['BufferVisibleIndex',   fg_visible,  bg_visible],
" \ ['BufferVisibleMod',     fg_modified, bg_visible],
" \ ['BufferVisibleSign',    fg_visible,  bg_visible],
" \ ['BufferVisibleTarget',  fg_target,   bg_visible,   'bold'],
" \ ['BufferInactive',       fg_inactive, bg_inactive],
" \ ['BufferInactiveIndex',  fg_subtle,   bg_inactive],
" \ ['BufferInactiveMod',    fg_modified, bg_inactive],
" \ ['BufferInactiveSign',   fg_subtle,   bg_inactive],
" \ ['BufferInactiveTarget', fg_target,   bg_inactive,  'bold'],
" \ ['BufferTabpages',       fg_special,  bg_inactive, 'bold'],
" \ ['BufferTabpageFill',    fg_inactive, bg_inactive],
" \ ])

" call s:hi_link([
" \ ['BufferCurrentIcon',  'BufferCurrent'],
" \ ['BufferVisibleIcon',  'BufferVisible'],
" \ ['BufferInactiveIcon', 'BufferInactive'],
" \ ])

