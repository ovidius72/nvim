
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

function! LightLineCoc() 
    if empty(get(g:, 'coc_status', '')) && empty(get(b:, 'coc_diagnostic_info', {})) 
        return ''
    endif 
    return trim(coc#status())
endfunction

" \ 'colorscheme': 'solarized',
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'gitbranch', 'gitgutter', 'filename', 'modified', 'coc_error', 'coc_warning', 'coc_hint', 'coc_info' ], ['cocstatus'] ],
      \   'right': [ [ 'lineinfo' ], [ 'currentfunction' ], ['percent'], ['fileformat', 'fileencoding', 'filetype' ] ]
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
      \   'cocstatus': 'LightLineCoc',
      \   'gitbranch': 'LightlineFugitive',
      \   'currentfunction': 'CocCurrentFunction',
      \   'filetype': 'MyFiletype',
      \   'gitgutter': 'LightLineGitGutter',
      \   'fileformat': 'MyFileformat'
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

let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}

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
\ }
autocmd User CocDiagnosticChange call lightline#update()

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
set showtabline=2  " Show tabline
set guioptions-=e
