" ALE"
let g:ale_set_signs = 1
let g:ale_set_highlights = 1
let g:ale_completion_enabled = 0
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 0
let g:ale_open_list = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_keep_list_window_open = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

" let g:ale_open_list = 2
" let g:ale_sign_error = '✘'
" let g:ale_sign_error = '🐞'
" let g:ale_sign_warning = '⚠'
" let g:ale_sign_warning = '⚡'
" let g:ale_sign_info = ''
" let g:ale_sign_info = 'ℹ️'
" let g:ale_sign_style_error = ''
" let g:ale_sign_style_error = '🐞'
" let g:ale_sign_style_warning = ''
" let g:ale_sign_style_warning = '⚡'

" highlight ALEErrorSign ctermbg=NONE ctermfg=red
" highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
" highlight link ALEErrorLine Folded

" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_sign_column_always = 1

nmap <silent> <Leader><Leader>p <Plug>(ale_previous_wrap)
nmap <silent> <Leader><Leader>n <Plug>(ale_next_wrap)

" " cloce the loclist when the buffer is closed
" augroup CloseLoclistWindowGroup
"   autocmd!
"   autocmd QuitPre * if empty(&buftype) | lclose | endif
" augroup END

let g:ale_linters = {
\ 'typescript': ['eslint', 'tslint', 'tsserver'],
\ 'javascript': ['eslint'],
\ 'typescript.tsx': ['eslint', 'tslint', 'tsserver'],
\ 'typescriptreact': ['eslint', 'tslint', 'tsserver'],
\ 'cpp': ['gcc'],
\}
" \ 'cpp': ['gcc'],
" \ 'c': ['gcc'],
" \ 'python': ['flake8', 'pylint']

" let g:ale_linters_aliases = {'js': 'ts', 'js', 'tsx'}
" let g:ale_typescript_tslint_executable = 'tslint'
let g:ale_typescript_tslint_use_global = 1
let g:ale_typescript_eslint_use_global = 1
" let g:ale_typescript_tslint_config_path = ''
" let g:ale_list_window_size = 5

let g:ale_fixers = {
\   'typescript': ['eslint', 'tslint', 'prettier'], 
\   'typescript.tsx': ['eslint', 'tslint', 'prettier'], 
\   '.tsx': ['eslint', 'tslint', 'prettier'], 
\   '.ts': ['eslint', 'tslint', 'prettier'], 
\   'javascript': ['prettier', 'eslint', 'prettier'],
\   'javascript.jsx': ['prettier', 'eslint', 'prettier'],
\   '.js': ['prettier', 'eslint', 'prettier'],
\   '.jsx': ['prettier', 'eslint', 'prettier'],
\}

let g:ale_linter_aliases = {
\   '.ts': ['ts', 'tsx'],
\   '.js': ['js', 'jsx'],
\   '.tsx': ['ts', 'tsx'],
\   'typescript.tsx': ['ts', 'tsx'],
\   'javascript.jsx': ['js', 'jsx'],
\}
