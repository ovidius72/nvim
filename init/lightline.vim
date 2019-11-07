
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

function! LightLineCoc() 
    if empty(get(g:, 'coc_status', '')) && empty(get(b:, 'coc_diagnostic_info', {})) 
        return ''
    endif 
    return trim(coc#status())
endfunction

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

" let s:function_icon = s:font ? 'Ⓕ  ' : ''

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" \ 'colorscheme': 'solarized',
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'gitbranch', 'gitgutter', 'filename', 'modified', 'coc_error', 'coc_warning', 'coc_hint', 'coc_info' ], ['cocstatus'] ],
      \   'right': [ [ 'lineinfo' ], [ 'currentfunction' ], ['percent'], ['method', 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_expand': {
      \  'buffers'          : 'lightline#bufferline#buffers',
      \  'coc_error'        : 'LightlineCocErrors',
      \  'coc_warning'      : 'LightlineCocWarnings',
      \  'coc_info'         : 'LightlineCocInfos',
      \  'coc_hint'         : 'LightlineCocHints',
      \  'coc_fix'          : 'LightlineCocFixes'
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction',
      \   'cocstatus': 'LightLineCoc',
      \   'gitbranch': 'LightlineFugitive',
      \   'currentfunction': 'CocCurrentFunction',
      \   'filetype': 'MyFiletype',
      \   'gitgutter': 'LightLineGitGutter',
      \   'fileformat': 'MyFileformat',
      \   'blame': 'LightLineGitBlame'
      \ },
      \ 'component_type':  {
      \   'buffers': 'tabsel',
      \   'coc_error'        : 'error',
      \   'coc_warning'      : 'warning',
      \   'coc_info'         : 'tabsel',
      \   'coc_hint'         : 'middle',
      \   'coc_fix'          : 'middle',
    \ }
  \ }

" let g:lightline.separator = {
" 	\   'left': '', 'right': ''
"   \}
" let g:lightline.subseparator = {
" 	\   'left': '', 'right': '' 
"   \}

let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#unicode_symbols = 1

nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

let g:lightline.tabline = {'left': [['buffers']], 'right': [['close']] }
" let g:lightline.component_expand = {
"     \  'buffers'          : 'lightline#bufferline#buffers',
"     \  'coc_error'        : 'LightlineCocErrors',
"     \  'coc_warning'      : 'LightlineCocWarnings',
"     \  'coc_info'         : 'LightlineCocInfos',
"     \  'coc_hint'         : 'LightlineCocHints',
"     \  'coc_fix'          : 'LightlineCocFixes'
"   \ }

" let g:lightline.component_type = {
"       \   'buffers': 'tabsel',
"       \   'coc_error'        : 'error',
"       \   'coc_warning'      : 'warning',
"       \   'coc_info'         : 'tabsel',
"       \   'coc_hint'         : 'middle',
"       \   'coc_fix'          : 'middle',
"   \ }

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

function! s:lightline_coc_diagnostic(kind, sign) abort
  let info = get(b:, 'coc_diagnostic_info', 0)
  if empty(info) || get(info, a:kind, 0) == 0
    return ''
  endif
  try
    let s = g:coc_user_config['diagnostic'][a:sign . 'Sign']
  catch
    let s = ''
  endtry
  return printf('%s %d', s, info[a:kind])
endfunction

function! LightLineGitGutter()
  if ! exists('*GitGutterGetHunkSummary')
        \ || ! get(g:, 'gitgutter_enabled', 0)
        \ || winwidth('.') <= 90
    return ''
  endif
  let symbols = ['+','~','-']
  let hunks = GitGutterGetHunkSummary()
  let ret = []
  for i in [0, 1, 2]
    if hunks[i] > 0
      call add(ret, symbols[i] . hunks[i])
    endif
  endfor
  return join(ret, ' ')
endfunction

function! LightlineCocErrors() abort
  return s:lightline_coc_diagnostic('error', 'error')
endfunction

function! LightlineCocWarnings() abort
  return s:lightline_coc_diagnostic('warning', 'warning')
endfunction

function! LightlineCocInfos() abort
  return s:lightline_coc_diagnostic('information', 'info')
endfunction

function! LightlineCocHints() abort
  return s:lightline_coc_diagnostic('hints', 'hint')
endfunction
" \ }

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
set showtabline=2  " Show tabline
set guioptions-=e
