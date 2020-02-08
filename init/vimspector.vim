let g:vimspector_enable_mappings = 'HUMAN'

nmap <leader><F5> :call vimspector#Launch()<CR>
nmap <leader><F6> :call vimspector#Reset()<CR>
sign define vimspectorBP text=🔴 texthl=DiffDelete linehl=DiffDelete numhl=DiffDelete
" sign define vimspectorBPDisabled text=🔵 texthl=DiffDelete
sign define vimspectorBPDisabled text=🔵 texthl=DiffChange
sign define vimspectorPC text=🔶 texthl=SpellBad

