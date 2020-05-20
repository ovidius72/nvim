" VDEBUG
hi default DbgBreakptLine guifg=None guibg=None
hi default DbgBreakptSign guibg=None guifg=None
hi default DbgCurrentLine guibg=#555500 guifg=None
hi default DbgCurrentSign guibg=None guifg=#555500

let g:vimspector_enable_mappings = 'HUMAN'

nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dr :call vimspector#Reset()<CR>
nnoremap <Leader>dw :VimspectorWatch <C-r><C-w><CR>
nnoremap <Leader>de :VimspectorEval <C-r><C-w><CR>
nnoremap <Leader>dc :call vimspector#ClearBreakpoints()<CR>


let g:vdebug_options = {
\    'port' : 9000,
\    'timeout' : 20,
\    'server' : '',
\    'on_close' : 'stop',
\    'break_on_open' : 0,
\    'ide_key' : '',
\    'debug_window_level' : 0,
\    'debug_file_level' : 0,
\    'debug_file' : '',
\    'path_maps' : {"/app/": "/home/antonio/projects/drupal8/d8test"},
\    'watch_window_style' : 'expanded',
\    'marker_default' : '⬦',
\    'marker_closed_tree' : '▸',
\    'marker_open_tree' : '▾',
\    'sign_breakpoint' : '▷',
\    'sign_current' : '▶',
\    'sign_disabled': '▌▌',
\    'continuous_mode'  : 1,
\    'background_listener' : 1,
\    'auto_start' : 1,
\    'simplified_status': 1,
\    'layout': 'vertical',
\}

sign define vimspectorBP text=🔴 texthl=DiffDelete linehl=DbgBreakptLine numhl=DiffDelete
" sign define vimspectorBPDisabled text=🔵 texthl=DiffDelete
sign define vimspectorBPDisabled text=🔵 texthl=DiffChange linehl=
sign define vimspectorPC text=🔶 texthl=SpellBad linehl=DbgCurrentLine
