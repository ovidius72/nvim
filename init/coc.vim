let g:coc_global_extensions = [
      \ 'coc-prettier',
      \ 'coc-actions',
      \ 'coc-styled-components',
      \ 'coc-diagnostic',
      \ 'coc-snippets',
      \ 'coc-yank',
      \ 'coc-docker',
      \ 'coc-sql',
      \ 'coc-highlight',
      \ 'coc-eslint',
      \ 'coc-emmet',
      \ 'coc-marketplace',
      \ 'coc-tsserver',
      \ 'coc-lists',
      \ 'coc-yaml',
      \ 'coc-python',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-sh',
      \ 'coc-lua',
      \ 'coc-gitignore',
      \ 'coc-docthis',
      \ 'coc-git',
      \ 'coc-project',
      \ ]

      " \ 'coc-explorer'
      " \ 'coc-rust-analyzer',
      " \ 'coc-import-cost',
      " \ 'coc-tslint',
      " \ 'coc-smartf',
      " \ 'coc-rls',
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
" let g:coc_node_path = '~/.nvm/versions/node/v12.16.1/bin/node'
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
set shortmess+=c
set nowritebackup
set nobackup

" always show signcolumns
set signcolumn=yes:1
" set signcolumn=auto:2

" let g:coc_status_error_sign = '•'
" let g:coc_status_warning_sign = '•'
" let g:coc_status_info_sign = '•'

" hi! CocErrorHighlight gui=undercurl guisp=#ff6458 
" hi! CocErrorSign guifg=bg guifg=#ff6458
" hi! CocWarningSign guifg=bg guifg=#ffe9aa
" hi! CocInfoSign guifg=bg guifg=#95ffa4
" hi! CocWarningHighlight guibg=bg guifg=fg gui=undercurl guisp=#ffe9aa
" hi! CocInfoHighlight guibg=bg guifg=fg gui=undercurl guisp=#95ffa4
" hi! CocHintHighlight guibg=bg guifg=fg gui=undercurl guisp=#95ffa4
" hi! CocHintLine guibg=bg guifg=fg gui=undercurl guisp=#95ffa4


" autocmd QuitPre * if empty(&bt) | lclose | endif
" autocmd QuitPre * if !empty(&bt) | CocDiagnostic | endif
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
"       \ | hi CocErrorHighlight guifg=#d75f87
"       \ | hi CocWarningHighlight guibg=#dc752f
"       \ | hi CocInfoHighlight guibg=#92c797
" au FocusGained,BufEnter,CursorHold * nested checktime %

" // Light ColorScheme
" autocmd ColorScheme *
"       \ hi CocErrorHighlight guibg=#d75f87
"       \ | hi CocWarningHighlight guibg=#dc752f
"       \ | hi CocInfoHighlight guibg=#92c797
" au FocusGained,BufEnter,CursorHold * nested checktime %

" coc-git
" navigate chunks of current buffer
" nmap [g <Plug>(coc-git-prevchunk)
" nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
" show commit contains current position
nmap <Leader>cgc <Plug>(coc-git-commit)
nmap <Leader>cgi <Plug>(coc-git-chunkinfo)
nmap <Leader>cgu :CocCommand git.chunkUndo<cr>
nmap <Leader>cp :CocList project<cr>
nmap gb :CocCommand git.chunkUndo<cr>
nmap gh <Plug>(coc-git-chunkinfo)
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
" nmap <leader>J <Plug>(coc-smartf-forward)
" nmap <M-i> <Plug>(coc-smartf-forward)
" nmap <tab> <Plug>(coc-smartf-forward)
" nmap <S-tab> <Plug>(coc-smartf-backward)
" nmap f <Plug>(coc-smartf-forward)
" nmap <M-u> <Plug>(coc-smartf-backward)
" nmap <M-;> <Plug>(coc-smartf-repeat)
" nmap <M-,> <Plug>(coc-smartf-repeat-opposite)
" nmap ; <Plug>(coc-smartf-repeat)
" nmap , <Plug>(coc-smartf-repeat-opposite)

" augroup Smartf
"   autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#ffffff guibg=#d75f87
"   autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#dc752f
" augroup end

" augroup ShowDiagnostic
"   autocmd User CocStatusChange CocDiagnostic
" augroup end

" augroup BufEnter coc-diagnostic
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
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" coc-explorer
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.config/nvim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

noremap ge :CocCommand explorer
    \ --toggle
    \ --sources=buffer+,file+<CR>

" noremap <leader>[ :CocCommand explorer
"       \ --toggle
"       \ --sources=file+<cr>

" noremap <leader>] :CocCommand explorer
"       \ --no-toggle
"       \ --sources=file+<cr>

noremap <leader>po :CocCommand explorer
      \ --toggle
      \ --sources=file+<cr>

" noremap <leader>ct :CocCommand explorer
"       \ --toggle
"       \ --sources=file+<cr>

noremap <leader>cx :CocCommand explorer
      \ --no-toggle
      \ --sources=file+<cr>

function! s:explorer_cur_dir()
  let node_info = CocAction('runCommand', 'explorer.getNodeInfo', 0)
  return fnamemodify(node_info['fullpath'], ':h')
endfunction

function! s:exec_cur_dir(cmd)
  let dir = s:explorer_cur_dir()
  execute 'cd ' . dir
  execute a:cmd
endfunction

function! s:init_explorer()
  set winblend=10
  " Integration with other plugins
  " CocList
  nmap <buffer> <Leader>cgg :call <SID>exec_cur_dir('CocList -I grep')<CR>
  nmap <buffer> <Leader>cG :call <SID>exec_cur_dir('CocList -I grep -regex')<CR>
  nmap <buffer> <C-p> :call <SID>exec_cur_dir('CocList files')<CR>

  " vim-floaterm
  nmap <buffer> <Leader>ct :call <SID>exec_cur_dir('FloatermNew --wintype=floating')<CR>
endfunction

function! s:enter_explorer()
  if &filetype == 'coc-explorer'
    " statusline
    setl statusline=coc-explorer
  endif
endfunction

augroup CocExplorerCustom
  autocmd!
  autocmd BufEnter * call <SID>enter_explorer()
  autocmd FileType coc-explorer call <SID>init_explorer()
augroup END


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
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

"coc-yank
nnoremap <silent><leader>cy :<C-u>CocList -A --normal yank<cr>
inoremap <c-w>p cj coc#util#float_jump() 
nnoremap <c-w>p cj coc#util#float_jump() 
" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> ]i <Plug>(coc-diagnostic-diagnosicInfo)
nmap <silent> [j :CocCommand document.jumpToNextSymbol<CR>
nmap <silent> ]j :CocCommand document.jumpToPrevSymbol<CR>
nnoremap <silent><nowait> <space>cls :<C-u>CocList -I symbols<cr>
nmap <Leader>fi :<C-u>CocList -I symbols<cr>
" nmap <silent><leader>cdi <Plug>(coc-diagnostic-diagnosicInfo)
" nmap <silent><leader>el <Plug>(coc-diagnostic-info)
" nmap <silent><leader>el  <Plug>(coc-diagnostic-info)
nmap <silent><leader>ci <Plug>(coc-diagnostic-info)
nmap <silent><leader>u <Plug>(coc-diagnostic-info)
nnoremap <silent><space>el  :<C-u>CocList diagnostics<cr>

" Remap keys for gotos
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gS :call CocAction('jumpDefinition', 'split')<cr>
nmap <silent>gV :call CocAction('jumpDefinition', 'vsplit')<cr>
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nnoremap <silent> <Leader>cw :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>
nnoremap <silent> <Leader>fc :CocSearch <C-R>=expand('<cword>')<CR><CR>
nnoremap <silent> <Leader>fx :CocSearch -w <C-R>=expand('<cword>')<CR><CR>


" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <C-d> <Plug>(coc-range-select)
" xmap <silent> <C-d> <Plug>(coc-range-select)

" Multiple cursors.
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
" autocmd CursorHold * silent call CocActionAsync("getCurrentFunctionSymbol")


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



" if has('nvim-0.4.0') || has('patch-8.2.0750')
"   nnoremap <silent><nowait><expr> <C-n> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-n>"
"   nnoremap <silent><nowait><expr> <C-p> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-p>"
"   inoremap <silent><nowait><expr> <C-n> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"   inoremap <silent><nowait><expr> <C-p> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"   vnoremap <silent><nowait><expr> <C-n> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-n>"
"   vnoremap <silent><nowait><expr> <C-p> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-p>"
" endif

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>cv  <Plug>(coc-codeaction-selected)
nmap <leader>cv  <Plug>(coc-codeaction-selected)
nmap <leader>co  <Plug>(coc-codeaction-line)
vmap <leader>co  <Plug>(coc-codeaction-line)

nmap <leader>cz :CocRestart<CR>
nmap <leader>cu :CocUpdate<CR>
" sessions
nmap <leader>ps :CocCommand session.load<CR>
nmap <leader>pS :CocCommand session.save<CR>

nmap <leader>pl :CocList project<CR>
nmap <leader>css :CocCommand session.save<CR>
nmap <leader>csl :CocCommand session.load<CR>:
nmap <leader>pp :CocList project<CR>
" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent><A-'> <Plug>(coc-range-select)
xmap <silent><A-'> <Plug>(coc-range-select)
xmap <silent><A-;> <Plug>(coc-range-select-backward)

" Remap for do codeAction of current line
nmap <leader>cL <Plug>(coc-codelens-action)
nmap <leader>ce <Plug>(coc-float-hide)
nmap <leader>cj <Plug>(coc-float-jump)
nmap <leader>cO <Plug>(coc-openlink)
nmap <leader>ca <Plug>(coc-codeaction)
xmap <leader>ca <Plug>(coc-codeaction-selected)
nmap <Leader>ck :CocCommand docthis.documentThis<cr>
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
nnoremap <silent><nowait> <space>cll :CocList<cr>
" Show all diagnostics
nnoremap <silent><nowait>  <space>cld  :<C-u>CocList diagnostics<cr>
" show coc actions
" nnoremap <silent><nowait>  <space>cla  :<C-u>CocList actions<cr>
" Manage extensions
nnoremap <silent><nowait>  <space>cle  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait>  <space>clc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait>  <space>clo  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait>  <space>cls  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait>  <space>cln  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait>  <space>clp  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait>  <space>clr  :<C-u>CocListResume<CR>

" let g:easymotion#is_active = 0
" function! EasyMotionCoc() abort
"   if EasyMotion#is_active()
"     let g:easymotion#is_active = 1
"     CocDisable
"     ALEDisable
"     let g:quick_scope_enable = 0
"   else
"     if g:easymotion#is_active == 1
"       let g:easymotion#is_active = 0
"       CocEnable
"       ALEEnable
"       let g:quick_scope_enable = 1
"     endif
"   endif
" endfunction
" autocmd TextChanged,CursorMoved * call EasyMotionCoc()
"
inoremap <silent> <C-x> <C-r>=ShowDoc()<CR><C-e>
function! ShowDoc() abort
  let winid = get(g:, 'coc_last_float_win', -1)
  if winid != -1
    let bufnr = winbufnr(winid)
    exe 'below sb '.bufnr
  endif
  return ''
endfunction
