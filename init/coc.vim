let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-prettier',
      \ 'coc-tslint',
      \ 'coc-actions',
      \ 'coc-styled-components',
      \ 'coc-diagnostic',
      \ 'coc-snippets',
      \ 'coc-yank',
      \ 'coc-explorer',
      \ 'coc-import-cost',
      \ 'coc-docker',
      \ 'coc-sql',
      \ 'coc-highlight',
      \ 'coc-eslint',
      \ 'coc-emmet',
      \ 'coc-marketplace',
      \ 'coc-tsserver',
      \ 'coc-css',
      \ 'coc-rls',
      \ 'coc-lists',
      \ 'coc-yaml',
      \ 'coc-python',
      \ 'coc-html',
      \ 'coc-git',
      \ ]

      " \ 'coc-rust-analyzer',
  "rust-analyzer.serverPath": "/usr/bin/rust-analyzer",
  "rust-analyzer.callInfo.full": true,
  "rust-analyzer.cargo.allFeatures": true,
  "rust-analyzer.diagnostics.enable": true,
  "rust-analyzer.cargo.noDefaultFeatures": false,
  "rust-analyzer.cargo.loadOutDirsFromCheck": true,
  "rust-analyzer.completion.postfix.enable": true,
  "rust-analyzer.notifications.workspaceLoaded": true,
  "rust-analyzer.notifications.cargoTomlNotFound": true,
  "rust-analyzer.completion.addCallParenthesis": true,
  "rust-analyzer.completion.addCallArgumentSnippets": true,
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
set shortmess+=c
set nowritebackup
set nobackup

" always show signcolumns
" set signcolumn=yes
set signcolumn=auto:2

let g:coc_status_error_sign = '•'
let g:coc_status_warning_sign = '•'
let g:coc_status_info_sign = '•'

hi! CocErrorHighlight guibg=bg guifg=fg gui=undercurl guisp=#ff5458 
hi! CocWarningHighlight guibg=bg guifg=fg gui=undercurl guisp=#ffb378
hi! CocInfoHighlight guibg=bg guifg=fg gui=undercurl guisp=#95ffa4


" to be used in coc config.
"diagnostic.infoSign": " ",
"diagnostic.errorSign": " ",
"diagnostic.warningSign": " ",
"diagnostic.hintSign": " ",
"diagnostic.refreshOnInsertMode": true,
"diagnostic.refreshAfterSave": true,

" // Dark ColorScheme
" autocmd ColorScheme *
"       \ hi CocUnderline gui=underline term=underline
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
" show chunk diff at current position
" show commit contains current position
nmap <Leader>cgc <Plug>(coc-git-commit)
nmap <Leader>cgi <Plug>(coc-git-chunkinfo)
nmap <Leader>cgu :CocCommand git.chunkUndo<cr>
nmap <Leader>cgf :CocCommand git.foldUnchanged<cr>
nmap <Leader>cgd :CocCommand git.diffCached<cr>
nmap <Leader>cgs :CocCommand git.showCommit<cr>
nmap <Leader>cgt :CocCommand git.toggleGutters<cr>
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

" {{ coc snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-l> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-l>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-h>'

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

" coc-explorer
" noremap ge :CocCommand explorer
"     \ --toggle
"     \ --sources=buffer+,file+
"     \ --fi <CR>

noremap <leader>[ :CocCommand explorer
      \ --toggle
      \ --sources=buffers+,file+<cr>

noremap <leader>] :CocCommand explorer
      \ --no-toggle
      \ --sources=buffers+,file+<cr>

noremap <leader>po :CocCommand explorer
      \ --toggle
      \ --sources=buffers+,file+<cr>

noremap <leader>ct :CocCommand explorer
      \ --toggle
      \ --sources=buffers+,file+<cr>

noremap <leader>cx :CocCommand explorer
      \ --no-toggle
      \ --sources=buffers+,file+<cr>

" noremap <silent> <leader>cx :execute 'CocCommand explorer' .
"       \ ' --no-toggle' .
"       \ ' --sources=buffer+,file+' .
"       \ ' --file-columns=git:selection:clip:diagnosticError:diagnosticWarning:indent:icon:filename --reveal ' . expand('%:p')<CR>

" noremap <silent> <leader>ct :execute 'CocCommand explorer' .
"       \ ' --toggle' 
"       \ ' --sources=buffer+,file+' .
"       \ ' --file-columns=git:selection:clip:diagnosticError:diagnosticWarning:indent:icon:filename --reveal ' . expand('%:p')<CR>
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
" noremap <silent> <leader>x :execute 'CocCommand explorer' .
" nmap ge :execute 'CocCommand explorer' .
"       \ ' --toggle' .
"       \ ' --sources=buffer+,file+' .
"       \ ' --file-columns=git,selection,icon,clip,indent,filename --reveal ' . expand('%:p')<CR>

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
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
"coc-yank
nnoremap <silent><leader>cy :<C-u>CocList -A --normal yank<cr>
inoremap <c-w>p cj coc#util#float_jump() 
nnoremap <c-w>p cj coc#util#float_jump() 
" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> ]i <Plug>(coc-diagnostic-diagnosicInfo)
" nmap <silent><leader>cdi <Plug>(coc-diagnostic-diagnosicInfo)
" nmap <silent><leader>el <Plug>(coc-diagnostic-info)
" nmap <silent><leader>el  <Plug>(coc-diagnostic-info)
nmap <silent><leader>cdi <Plug>(coc-diagnostic-info)
nnoremap <silent><space>el  :<C-u>CocList diagnostics<cr>

" Remap keys for gotos
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gS :call CocAction('jumpDefinition', 'split')<cr>
nmap <silent>gV :call CocAction('jumpDefinition', 'vsplit')<cr>
nmap <silent>gt <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nnoremap <silent> <Leader>cw :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>


" Coc-actions extension
map <silent><leader>ci :CocCommand actions.open<CR>
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
vmap <leader>cF  <Plug>(coc-format-selected)
nmap <leader>cF  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocActionAsync('formatSelected')
  " Update signature help on jump placeholder
 autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>cv  <Plug>(coc-codeaction-selected)
nmap <leader>cv  <Plug>(coc-codeaction-selected)

nmap <leader>cz :CocRestart<CR>
nmap <leader>cu :CocUpdate<CR>
" sessions
command! -nargs=0 SESSLOAD   :call     CocAction('runCommand', 'session.load')
command! -nargs=0 SESSSAVE   :call     CocAction('runCommand', 'session.save')
nmap <leader>css :SESSSAVE<CR>
nmap <leader>csl :SESSLOAD<CR>
nmap <leader>pp :SESSLOAD<CR>
nmap <silent><leader>pA :SESSSAVE<CR>
" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Remap for do codeAction of current line
nmap <leader>ca <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>cf <Plug>(coc-fix-current)

" Use `:Format` for format current buffer
command! -nargs=0 FM :call CocActionAsync('format')
nmap <leader>of :FM<cr>

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call CocActionAsync('fold', <f-args>)
nmap <leader>oF :Fold<cr>

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
nmap <leader>oo :OR<cr>

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
