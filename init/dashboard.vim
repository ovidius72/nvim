let g:dashboard_default_executive ='fzf'

let g:dashboard_custom_shortcut={
\ 'last_session'       : 'SPC s l',
\ 'find_history'       : 'SPC f h',
\ 'find_file'          : 'SPC f f',
\ 'new_file'           : 'SPC c n',
\ 'change_colorscheme' : 'SPC t c',
\ 'find_word'          : 'SPC f a',
\ 'book_marks'         : 'SPC f b',
\ }

nmap <Leader>pS :<C-u>SessionSave<CR>
nmap <Leader>pL :<C-u>SessionLoad<CR>

" let g:dashboard_custom_shortcut_icon['last_session'] = ' '
" let g:dashboard_custom_shortcut_icon['find_history'] = 'ﭯ '
" let g:dashboard_custom_shortcut_icon['find_file'] = ' '
" let g:dashboard_custom_shortcut_icon['new_file'] = ' '
" let g:dashboard_custom_shortcut_icon['change_colorscheme'] = ' '
" let g:dashboard_custom_shortcut_icon['find_word'] = ' '
" let g:dashboard_custom_shortcut_icon['book_marks'] = ' '
"
let g:dashboard_preview_command='bat'
" let g:dashboard_custom_section={
"   \ 'buffer_list': {
"       \ 'description': [' Recently files                 SPC f r'],
"       \ 'command': ':History',
"   \},
" \}
" " Show image in dashboard using ansi escape sequences
" function! DashboardImage()
"     let s:width = 120
"     let s:height = 17
"     let s:row = float2nr(s:height / 5)
"     let s:col = float2nr((&columns - s:width) / 2)
"     let s:opts = {
"                 \ 'relative': 'editor',
"                 \ 'row': s:row,
"                 \ 'col': s:col,
"                 \ 'width': s:width,
"                 \ 'height': s:height,
"                 \ 'style': 'minimal'
"                 \ }
"     let s:buf = nvim_create_buf(v:false, v:true)
"     let s:win = nvim_open_win(s:buf, v:true, s:opts)
"     hi! DashboardImage guibg=NONE guifg=NONE
"     call nvim_win_set_option(s:win, "winblend", 0)
"     call nvim_win_set_option(s:win, "winhl", "Normal:DashboardImage")
"     terminal cat ~/Downloads/ascii.txt
"     :exe "normal \<C-W>\<C-w>"
" endfunction
" autocmd Filetype dashboard call DashboardImage()

