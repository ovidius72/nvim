let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-prettier',
      \ 'coc-tslint',
      \ 'coc-styled-components',
      \ 'coc-yank',
      \ 'coc-git',
      \ 'coc-explorer',
      \ 'coc-import-cost',
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
      \ ]

set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
set shortmess+=c
set nowritebackup
set nobackup

" always show signcolumns
set signcolumn=yes

let g:coc_status_error_sign = '•'
let g:coc_status_warning_sign = '•'

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
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gk <Plug>(coc-git-commit)
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

augroup Smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#d75f87 guibg=#92c797
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#dc752f
augroup end


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

" coc-expolorer
" nmap ge :CocCommand explorer
"       \ --toggle
"       \ --source=buffer+,file+
"       \ --buffers-columns=selection,name,buffname,modified,bufnr
"       \ --file-columns=icon,git,selection,clip,diagnosticError,diagnosticWarning,created,modified,accessed,indent,readonly,filename,size .<CR>

" nmap gt :CocCommand explorer 
"       \ --reveal
"       \ --no-toggle
"       \ --source=buffer+,file+
"       \ --file-columns=git,selection,icon,clip,indent,filename,size<CR>

" coc-explorer
noremap <silent> <leader>x :execute 'CocCommand explorer' .
      \ ' --toggle' .
      \ ' --sources=buffer+,file+' .
      \ ' --file-columns=git,selection,icon,clip,indent,filename --reveal ' . expand('%:p')<CR>

"coc-marks
nmap <Leader><Leader>m :CocList marks<CR>
"coc-bookmark
nmap <Leader>bl :CocList bookmark<CR>
nmap <Leader>bj <Plug>(coc-bookmark-next)
nmap <Leader>bk <Plug>(coc-bookmark-prev)
nmap <Leader>bt <Plug>(coc-bookmark-toggle)
nmap <Leader>ba <Plug>(coc-bookmark-annotate)

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"coc-yank
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
inoremap <c-w>p cj coc#util#float_jump() 
nnoremap <c-w>p cj coc#util#float_jump() 
" save all in various modes
nnoremap <c-s> :wa<CR>
inoremap <c-s> <Esc>:wa<CR>a
vnoremap <c-s> <Esc>:wa<CR>gv


"yank and move the curson to the last yanked line
vnoremap gy y']

" console.log wrapper
" Console log from insert mode; Puts focus inside parentheses

imap gll console.log();<Esc>==f(a"<Esc>pa", <Esc>a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap <c-c><c-l> yogll<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap <c-c><c-l> yiwogll<Esc>p 

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> [i <Plug>(coc-diagnostic-diagnosicInfo)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gsd :call CocAction('jumpDefinition', 'split')<cr>
nmap <silent> gvd :call CocAction('jumpDefinition', 'vsplit')<cr>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>fs  <Plug>(coc-format-selected)
nmap <leader>fs  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocActionAsync('formatSelected')
  " Update signature help on jump placeholder
 autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>as  <Plug>(coc-codeaction-selected)
nmap <leader>as  <Plug>(coc-codeaction-selected)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` for format current buffer
command! -nargs=0 FM :call CocActionAsync('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call CocActionAsync('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')


" Using CocList
nnoremap <silent><space>cl :CocList<cr>
" Show all diagnostics
nnoremap <silent> <space>cd  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>co  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>cp  :<C-u>CocListResume<CR>
