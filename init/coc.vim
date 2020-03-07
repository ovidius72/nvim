let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-prettier',
      \ 'coc-tslint',
      \ 'coc-styled-components',
      \ 'coc-diagnostic',
      \ 'coc-snippets',
      \ 'coc-yank',
      \ 'coc-explorer',
      \ 'coc-highlight',
      \ 'coc-eslint',
      \ 'coc-emmet',
      \ 'coc-marketplace',
      \ 'coc-tsserver',
      \ 'coc-css',
      \ 'coc-lists',
      \ 'coc-yaml',
      \ 'coc-python',
      \ 'coc-html',
      \ 'coc-ccls',
      \ 'coc-snippets',
      \ ]

set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
set shortmess+=c
set nowritebackup
set nobackup

" always show signcolumns
set signcolumn=yes
" set signcolumn=auto:2

let g:coc_status_error_sign = '•'
let g:coc_status_warning_sign = '•'
let g:coc_status_info_sign = '•'

" hi! CocErrorHighlight guibg=#d62829 guifg=#fafafa gui=undercurl 
" hi! CocWarningHighlight guibg=#dc6c14 guifg=#fafafa gui=undercurl
" hi! CocInfoHighlight guibg=#92c79a guifg=#fafafa gui=undercurl

" // Dark ColorScheme
autocmd ColorScheme *
      \ hi CocUnderline gui=underline term=underline
      " \ | hi CocErrorHighlight guifg=#d75f87
      " \ | hi CocWarningHighlight guibg=#dc752f
      " \ | hi CocInfoHighlight guibg=#92c797
" au FocusGained,BufEnter,CursorHold * nested checktime %

" // Light ColorScheme
" autocmd ColorScheme *
"       \ hi CocErrorHighlight guibg=#d75f87
"       \ | hi CocWarningHighlight guibg=#dc752f
"       \ | hi CocInfoHighlight guibg=#92c797
" au FocusGained,BufEnter,CursorHold * nested checktime %

" coc-git
" navigate chunks of current buffer
nmap [h <Plug>(coc-git-prevchunk)
nmap ]h <Plug>(coc-git-nextchunk)
"
" show commit contains current position
nmap <Leader>cgc <Plug>(coc-git-commit)
nmap <Leader>cgi <Plug>(coc-git-chunkinfo)
nmap <Leader>cgu :CocCommand git.chunkUndo<cr>
nmap <Leader>cgf :CocCommand git.foldUnchanged<cr>
nmap <Leader>cgd :CocCommand git.diffCached<cr>
nmap <Leader>cgs :CocCommand git.showCommit<cr>
nmap <Leader>cgt :CocCommand git.toggleGutters<cr>
" show commit contains current position
" nmap gk <Plug>(coc-git-commit)
"
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)


" coc-smartf
" press <esc> to cancel.
" nmap f <Plug>(coc-smartf-forward)
" nmap F <Plug>(coc-smartf-backward)
" nmap ; <Plug>(coc-smartf-repeat)
" nmap , <Plug>(coc-smartf-repeat-opposite)

" augroup Smartf
"   autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#d75f87 guibg=#92c797
"   autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#dc752f
" augroup end

" autocmd User CocDiagnosticChange
" \ call CocActionAsync('quickfixes', function('CocUpdateQuickFixes'))

" function! CocUpdateQuickFixes(error, actions) abort
"   let coc_quickfixes = {}
"   try
"     for action in a:actions
"       if action.kind == 'quickfix'
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

" autocmd! User CocDiagnosticChange
" autocmd  User CocDiagnosticChange
  " \  call CocActionAsync('quickfixes', function('CocUpdateQuickFixes'))

" {{ coc snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" }} coc-snippets



" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

noremap <silent> <leader>cx :execute 'CocCommand explorer' .
      \ ' --no-toggle' .
      \ ' --sources=buffer+,file+' .
      \ ' --file-columns=git:selection:clip:diagnosticError:diagnosticWarning:indent:icon:filename --reveal ' . expand('%:p')<CR>

noremap <silent> <leader>ct :execute 'CocCommand explorer' .
      \ ' --toggle' 
      \ ' --sources=buffer+,file+' .
      \ ' --file-columns=git:selection:clip:diagnosticError:diagnosticWarning:indent:icon:filename --reveal ' . expand('%:p')<CR>

"coc-marks
nmap <Leader>cbb :CocList marks<CR>
"coc-bookmark
nmap <Leader>cbl :CocList bookmark<CR>
nmap <Leader>cbj <Plug>(coc-bookmark-next)
nmap <Leader>cbk <Plug>(coc-bookmark-prev)
nmap <Leader>cbt <Plug>(coc-bookmark-toggle)
nmap <Leader>cba <Plug>(coc-bookmark-annotate)

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"coc-yank
nnoremap <silent><leader>cy :<C-u>CocList -A --normal yank<cr>

" jump in the floating window.
inoremap <c-w>p cj coc#util#float_jump() 
nnoremap <c-w>p cj coc#util#float_jump() 

" grep word under cursor
command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>
nnoremap <silent> <space><space>g  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>
nmap <Leader>q <Plug>(coc-translator-p)

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
        \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list, "\n")
endfunction

" Keymapping for grep word under cursor with interactive mode
nnoremap <silent> <Leader><Leader>h :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>

"yank and move the curson to the last yanked line
vnoremap gy y']

" console.log wrapper
" Console log from insert mode; Puts focus inside parentheses
imap gll console.log();<Esc>==f(a"<Esc>pa", <Esc>a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap <c-c><c-l> yogll<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap <c-c><c-l> yiwogll<Esc>p 

>>>>>>> da5acdaaecb595a7614d6777a0e334e719d10203
" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> ]i <Plug>(coc-diagnostic-diagnosicInfo)
" nmap <silent><leader>cdi <Plug>(coc-diagnostic-diagnosicInfo)
" nmap <silent><leader>el <Plug>(coc-diagnostic-info)
nmap <silent><leader>el <Plug>(coc-diagnostic-info)
nmap <silent><leader>cdi <Plug>(coc-diagnostic-info)

" Remap keys for gotos
<<<<<<< HEAD
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gs :call CocAction('jumpDefinition', 'split')<cr>
nmap <silent>gv :call CocAction('jumpDefinition', 'vsplit')<cr>
nmap <silent>gt <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nnoremap <silent> <Leader>cw :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>
=======
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gsh :call CocAction('jumpDefinition', 'split')<cr>
nmap <silent> gsv :call CocAction('jumpDefinition', 'vsplit')<cr>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
>>>>>>> da5acdaaecb595a7614d6777a0e334e719d10203

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <C-d> <Plug>(coc-range-select)
" xmap <silent> <C-d> <Plug>(coc-range-select)

" Multiple cursors.
"
" hi CocCursorRange guibg=#b16286 guifg=#ebdbb2
" nmap <silent> <C-y> <Plug>(coc-cursors-position)
" nmap <silent> <C-t> <Plug>(coc-cursors-word)
" xmap <silent> <C-t> <Plug>(coc-cursors-range)
" nmap <Leader>x  <Plug>(coc-cursors-operator)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd CursorHold * silent call CocActionAsync("getCurrentFunctionSymbol")


" Remap for rename current word
nmap <leader>cr <Plug>(coc-rename)

" Remap for format selected region
<<<<<<< HEAD
vmap <leader>cF  <Plug>(coc-format-selected)
nmap <leader>cF  <Plug>(coc-format-selected)
=======
vmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)
>>>>>>> da5acdaaecb595a7614d6777a0e334e719d10203

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocActionAsync('formatSelected')
  " Update signature help on jump placeholder
 autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>cs  <Plug>(coc-codeaction-selected)
nmap <leader>cs  <Plug>(coc-codeaction-selected)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Remap for do codeAction of current line
nmap <leader>ca <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>cf <Plug>(coc-fix-current)

" Use `:Format` for format current buffer
command! -nargs=0 FM :call CocActionAsync('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call CocActionAsync('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" nnoremap <space>cf <Plug>(coc-codelens-action)
" Using CocList
nnoremap <silent><space>cll :CocList<cr>
" Show all diagnostics
nnoremap <silent> <space>cld  :<C-u>CocList diagnostics<cr>
" show coc actions
nnoremap <silent> <space>cla  :<C-u>CocList actions<cr>
" Manage extensions
nnoremap <silent> <space>cle  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>clc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>clo  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>cls  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>cln  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>clp  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>clr  :<C-u>CocListResume<CR>
