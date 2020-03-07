let g:vimspector_enable_mappings = 'HUMAN'

nmap <leader>add :call vimspector#Launch()<CR>
nmap <leader>adr :call vimspector#Reset()<CR>
nnoremap <Leader>adw :call vimspector#AddWatch("<C-r><C-w>")<CR>

sign define vimspectorBP text=🔴 texthl=DiffDelete linehl=DiffDelete numhl=DiffDelete
" sign define vimspectorBPDisabled text=🔵 texthl=DiffDelete
sign define vimspectorBPDisabled text=🔵 texthl=DiffChange
sign define vimspectorPC text=🔶 texthl=SpellBad

