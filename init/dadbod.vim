" Source is automatically added, you just need to include it in the chain complete list
let g:completion_chain_complete_list = {
    \   'sql': [
    \    {'complete_items': ['vim-dadbod-completion']},
    \   ],
    \ }
" Make sure `substring` is part of this list. Other items are optional for this completion source
let g:completion_matching_strategy_list = ['exact', 'substring']
" Useful if there's a lot of camel case items
let g:completion_matching_ignore_case = 1

let g:db_ui_auto_execute_table_helpers = 1
let g:db_ui_disable_mappings = 0
let g:db_ui_use_nerd_fonts = 1
let g:db_ui_show_database_icon = 1
let g:db_ui_debug = 0
let g:db_ui_force_echo_notifications = 1

nnoremap <leader>doo :DBUIToggle<cr>
nnoremap <leader>dor :DBUI_Redraw<cr>
" nnoremap <leader>dol <Plug>(DBUI_ExecuteQuery)
nnoremap <leader>doi :DBUILastQueryInfo<cr>
" nnoremap <leader>dol <Plug>(DBUI_ExecuteQuery)
" xnoremap <leader>dol <Plug>(DBUI_ExecuteQuery)
nnoremap <leader>doE <Plug>(DBUI_EditBindParameters)
nnoremap <leader>dot <Plug>(DBUI_ToggleResultLayout)
" autocmd FileType sql,mysql nnoremap <Space>X <Plug>DBUI_ExecuteQuery
" autocmd FileType sql,mysql xnoremap <Space>X <Plug>DBUI_ExecuteQuery
" autocmd FileType sql,mysql nnoremap <leader>S vap <Plug>DBUI_ExecuteQuery
autocmd FileType dbui nmap <buffer> v <Plug>DBUI_SelectLineVsplit
autocmd FileType dbout setlocal nofoldenable



