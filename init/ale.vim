" ALE"
autocmd FileType qf setlocal wrap
let g:ale_set_signs = 1
let g:ale_set_highlights = 1
let g:ale_completion_enabled = 0
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

let g:ale_open_list = 2
" let g:ale_sign_error = '✘'
let g:ale_sign_error = '🐞'
" let g:ale_sign_warning = '⚠'
let g:ale_sign_warning = '⚡'
" let g:ale_sign_info = ''
let g:ale_sign_info = 'ℹ️'
" let g:ale_sign_style_error = ''
" let g:ale_sign_style_error = '🐞'
" let g:ale_sign_style_warning = ''
" let g:ale_sign_style_warning = '⚡'

highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

nmap <silent> <Leader><Leader>p <Plug>(ale_previous_wrap)
nmap <silent> <Leader><Leader>n <Plug>(ale_next_wrap)

let g:ale_linters = {
\ 'typescript': ['eslint', 'tslint', 'tssserver', 'typecheck'],
\ 'javascript': ['eslint'],
\ 'typescript.tsx': ['tslint', 'tssserver', 'typecheck'],
\ 'typescriptreact': ['tslint', 'tssserver', 'typecheck'],
\ 'c': ['gcc'],
\ 'cpp': ['gcc'],
\}
" \ 'python': ['flake8', 'pylint']

" let g:ale_linters_aliases = {'js': 'ts', 'js', 'tsx'}
" let g:ale_typescript_tslint_executable = 'tslint'
" let g:ale_typescript_tslint_use_global = 1
" let g:ale_typescript_tslint_config_path = ''
let g:ale_list_window_size = 2

let g:ale_fixers = {
\   'typescript': ['eslint', 'tslint'], 
\   'typescript.tsx': ['eslint', 'tslint'], 
\   '.tsx': ['eslint', 'tslint'], 
\   'javascript': ['prettier', 'eslint'],
\   'javascript.jsx': ['prettier', 'eslint'],
\   '.js': ['prettier', 'eslint'],
\   '.jsx': ['prettier', 'eslint'],
\}

let g:ale_linter_aliases = {
\   '.ts': ['ts', 'tsx'],
\   '.js': ['js', 'jsx'],
\   '.tsx': ['ts', 'tsx'],
\   'typescript.tsx': ['ts', 'tsx'],
\   'javascript.jsx': ['js', 'jsx'],
\}
