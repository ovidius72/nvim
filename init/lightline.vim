
function! CocCurrentFunction()
    let fun = get(b:, 'coc_current_function', '')
    return strlen(fun) ? ' ' . fun : ''
endfunction

function! LightLineCoc() 
    " if empty(get(g:, 'coc_status', '')) && empty(get(b:, 'coc_diagnostic_info', {})) 
    if empty(get(g:, 'coc_status', '')) 
        return ''
    endif 
    " return trim(coc#status())
    return trim(g:coc_status)
endfunction

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

" let s:function_icon = s:font ? 'Ⓕ  ' : ''

function! NearestMethodOrFunction() abort
  let fun = get(b:, 'vista_nearest_method_or_function', '')
  return strlen(fun) ? 'Nearest:  ' . fun : 'noNearest'
endfunction

" set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


function! GetModified()
  if &mod 
    return " "
  else
    return ""
  endif
endfunction

function! FileName()
  return IconFiletype() . expand('%:t')
  " return ' ' . expand('%:t')
endfunction

function! IconFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? ' ' . WebDevIconsGetFileTypeSymbol() . ' ' : ' ') : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() . ' ' : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
 
function! GetFileReadOnly() abort
  if &readonly
    return " "
  endif
  return ""
endfunction
" 
" 
" 



function! GetWinNumber()
  let nmap = [ ' ',  ' ', ' ', ' ', ' ', ' ', ' ', ' ',  ' ',  ' ']
  let wn = winnr()
  if wn < 9
    let wn = nmap[wn]
  endif
  return wn
endfunction


" \ 'colorscheme': 'solarized',
let g:lightline = {
      \ 'inactive': { 
        \ 'left': [
          \ ['winnr'],
          \ ['mode'],
          \ ['modified'],
          \ ['fileReadMode'],
          \ ['filename'],
          \ ], 
        \ 'right': [
          \ ['lineinfo', 'fileformat'],
          \ ['percent'],
          \ ]
      \ },
      \ 'active': {
        \ 'left': [ 
            \ [ 'winnr' ],
            \ [ 'mode'], 
            \ [ 'modified' ],
            \ [ 'fileReadMode'], 
            \ [ 'filename', 'paste'],
            \ [ 'gitgutter', 'coc_error', 'coc_warning', 'coc_hint', 'coc_info', 'cocstatus'],
           \ ],
         \ 'right': [
           \ [ 'gitbranch'],
           \ [ 'lineinfo', 'fileformat'],
           \ [],
           \ [ 'percent' ]
         \ ]
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
      \   'filetype': 'IconFiletype',
      \   'gitgutter': 'LightLineGitGutter',
      \   'fileformat': 'MyFileformat',
      \   'blame': 'LightLineGitBlame',
      \   'winnr': 'GetWinNumber',
      \   'fileReadMode': 'GetFileReadOnly',
      \   'modified': 'GetModified',
      \   'filename': 'FileName'
      \ },
      \ 'component_type':  {
      \   'buffers'          : 'tabsel',
      \   'coc_error'        : 'error',
      \   'coc_warning'      : 'warning',
      \   'coc_info'         : 'warning',
      \   'coc_hint'         : 'warning',
      \   'coc_fix'          : 'warning',
    \ },
      \ 'mode_map': {
        \ 'n' : ' ',
        \ 'i' : ' ',
        \ 'R' : ' ',
        \ 'v' : ' ',
        \ 'V' : ' ',
        \ "\<C-v>": ' ',
        \ 'c' : ' ',
        \ 's' : ' ',
        \ 'S' : ' ',
        \ "\<C-s>": ' ',
        \ 't': ' ',
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

function! LightlineFugitive()
  if exists('*FugitiveHead')
    let branch = FugitiveHead()
    return branch !=# '' ? '  '. branch : ''
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
  echo s
  return printf('%s %d', s, info[a:kind])
endfunction

function! LightLineGitGutter()
  if ! exists('*GitGutterGetHunkSummary')
        \ || ! get(g:, 'gitgutter_enabled', 0)
        \ || winwidth('.') <= 90
    " let stat = get(b:, 'coc_git_status')
    " let projStat = get(g:, 'coc_git_status')
    " let symbols = ['+','~','-']
    " return projStat . ' ' . stat 
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
  return  empty(ret) ? '' : ' ' . join(ret, ' ')
endfunction

function! LightlineCocErrors() abort
  let s = s:lightline_coc_diagnostic('error', 'error')
  return empty(s) ? '' : ' ' . s 
endfunction

function! LightlineCocWarnings() abort
  let s = s:lightline_coc_diagnostic('warning', "warning")
  return empty(s) ? '' : ' ' . s
endfunction

function! LightlineCocInfos() abort
  let s = s:lightline_coc_diagnostic('information', "info")
  return empty(s) ? '' : ' ' . s
endfunction

function! LightlineCocHints() abort
  let s = s:lightline_coc_diagnostic('hints', "hint")
  return empty(s) ? '' : ' ' . s
endfunction

function! LightlineCocFixes() abort
  let b:coc_line_fixes = get(get(b:, 'coc_quickfixes', {}), line('.'), 0)
  return b:coc_line_fixes > 0 ? printf('%d ', b:coc_line_fixes) : ''
endfunction

autocmd User CocStatusChange,CocDiagnosticChange,CocCurrentFunction call lightline#update()
" " Diagnostic's feedback {{{
" function! CocUpdateQuickFixes(error, actions) abort
"   let coc_quickfixes = {}
"   try
"     for action in a:actions
"       if action.kind ==? 'quickfix'
"         for change in action.edit.documentChanges
"           for edit in change.edits
"             let start_line = edit.range.start.line + 1
"             let end_line = edit.range.end.line + 1
"             let coc_quickfixes[start_line] = get(coc_quickfixes, start_line, 0) + 1
"             if start_line != end_line
"               let coc_quickfixes[end_line] = get(coc_quickfixes, end_line, 0) + 1
"             endif
"           endfor
"         endfor
"       endif
"     endfor
"   catch
"   endtry
"   if coc_quickfixes != get(b:, 'coc_quickfixes', {})
"     let b:coc_quickfixes = coc_quickfixes
"     call lightline#update()
"   endif
" endfunction

" autocmd  MyAutoCmd User CocDiagnosticChange
" \   call lightline#update()
" \|  call CocActionAsync('quickfixes', function('CocUpdateQuickFixes'))

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
set showtabline=2  " Show tabline
set guioptions-=e
