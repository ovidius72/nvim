" VDEBUG
hi default DbgBreakptLine guifg=Red guibg=None
hi default DbgBreakptSign guibg=None guifg=None
hi default DbgCurrentLine guibg=#555500 guifg=None
hi default DbgCurrentSign guibg=None guifg=#555500

" vimspector
sign define vimspectorBP text=o             texthl=WarningMsg linehl=Red
sign define vimspectorBPCond text=o?        texthl=WarningMsg linehl=Red
sign define vimspectorBPDisabled text=o!    texthl=LineNr linehl=Red
sign define vimspectorPC text=\ >           texthl=MatchParen linehl=Red
sign define vimspectorPCBP text=o>          texthl=MatchParen linehl=Red
sign define vimspectorCurrentThread text=>  texthl=MatchParen linehl=Red
sign define vimspectorCurrentFrame text=>   texthl=Special linehl=Red

sign define vimspectorBP            text=\ ● texthl=WarningMsg
sign define vimspectorBPCond        text=\ ◆ texthl=WarningMsg
sign define vimspectorBPDisabled    text=\ ● texthl=LineNr
sign define vimspectorPC            text=\ ▶ texthl=MatchParen linehl=CursorLine
sign define vimspectorPCBP          text=●▶  texthl=MatchParen linehl=CursorLine
sign define vimspectorCurrentThread text=▶   texthl=MatchParen linehl=CursorLine
sign define vimspectorCurrentFrame  text=▶   texthl=Special    linehl=CursorLine

let g:vimspector_enable_mappings = 'HUMAN'
fun GotoWindow(id)
  call win_gotoid(a:id)
endfun

nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dr :call vimspector#Reset()<CR>
nnoremap <Leader>dw :VimspectorWatch <C-r><C-w><CR>
nnoremap <Leader>de :VimspectorEval <C-r><C-w><CR>
nnoremap <Leader>dc :call vimspector#ClearBreakpoints()<CR>
nmap <Leader>du <Plug>VimspectorToggleConditionalBreakpoint
nmap <Leader>db <Plug>VimspectorToggleBreakpoint
nmap <Leader>da <Plug>VimspectorToggleBreakpoint
nmap <Leader>dr <Plug>VimspectorRunToCursor
nmap <Leader>dk <Plug>VimspectorUpFrame
nmap <Leader>dj <Plug>VimspectorDownFrame
nnoremap <Leader>d<Space> :call vimspector#Continue()<CR>
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval
" GOTO WINDOWS
nnoremap <Leader>dgv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <Leader>dgw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <Leader>dgt :call GotoWindow(g:vimspector_session_windows.tabpage)<CR>
nnoremap <Leader>dgc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <Leader>dgs :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <Leader>dgo :call GotoWindow(g:vimspector_session_windows.output)<CR>


" let g:vdebug_options = {
" \    'port' : 9000,
" \    'timeout' : 20,
" \    'server' : '',
" \    'on_close' : 'stop',
" \    'break_on_open' : 0,
" \    'ide_key' : '',
" \    'debug_window_level' : 0,
" \    'debug_file_level' : 0,
" \    'debug_file' : '',
" \    'path_maps' : {"/var/www/app/": "/Users/antonio/projects/be/illimity/neprix/real-estate-discount"},
" \    'watch_window_style' : 'expanded',
" \    'marker_default' : '⬦',
" \    'marker_closed_tree' : '▸',
" \    'marker_open_tree' : '▾',
" \    'sign_breakpoint' : '▷',
" \    'sign_current' : '▶',
" \    'sign_disabled': '▌▌',
" \    'continuous_mode'  : 1,
" \    'background_listener' : 1,
" \    'auto_start' : 1,
" \    'simplified_status': 1,
" \    'layout': 'vertical',
" \}

" sign define vimspectorBP text=🔴 texthl=DiffDelete linehl=DbgBreakptLine numhl=DiffDelete
" " sign define vimspectorBPDisabled text=🔵 texthl=DiffDelete
" sign define vimspectorBPDisabled text=🔵 texthl=DiffChange linehl=
" sign define vimspectorPC text=🔶 texthl=SpellBad linehl=DbgCurrentLine
