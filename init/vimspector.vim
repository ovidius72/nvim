" let g:vimspector_enable_mappings = 'HUMAN'

" nmap <leader>add :call vimspector#Launch()<CR>
" nmap <leader>adr :call vimspector#Reset()<CR>
" nnoremap <Leader>adw :call vimspector#AddWatch("<C-r><C-w>")<CR>

" sign define vimspectorBP text=🔴 texthl=DiffDelete linehl=DiffDelete numhl=DiffDelete
" " sign define vimspectorBPDisabled text=🔵 texthl=DiffDelete
" sign define vimspectorBPDisabled text=🔵 texthl=DiffChange
" sign define vimspectorPC text=🔶 texthl=SpellBad


" VDEBUG

hi default DbgBreakptLine guifg=#121212 guibg=#92c797
hi default DbgBreakptSign guibg=None guifg=#92c797
hi default DbgCurrentLine guibg=#d75f87 guifg=#100e23
hi default DbgCurrentSign guibg=None guifg=#d75f87

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
