
call plug#begin()
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'unblevable/quick-scope'
" Plug 'machakann/vim-sandwich'
Plug 'wellle/targets.vim'
call plug#end()

highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

highlight OperatorSandwichBuns guifg='#aa91a0' gui=underline ctermfg=172 cterm=underline
highlight OperatorSandwichChange guifg='#edc41f' gui=underline ctermfg='yellow' cterm=underline
highlight OperatorSandwichAdd guibg='#b1fa87' gui=none ctermbg='green' cterm=none
highlight OperatorSandwichDelete guibg='#cf5963' gui=none ctermbg='red' cterm=none

" let g:sandwich_no_default_key_mappings = 1
" nmap <leader>vsd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
" nmap <leader>vsr <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
" nmap <leader>vsdb <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
" nmap <leader>vsrb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

" let g:operator_sandwich_no_default_key_mappings = 1
" " add
" map <leader>vsa <Plug>(operator-sandwich-add)
" " delete
" xmap <leader>vsd <Plug>(operator-sandwich-delete)
" " replace
" xmap <leader>vsr <Plug>(operator-sandwich-replace)
" runtime macros/sandwich/keymap/surrounnd.vim

" source ~/.config/nvim/init/common.vim
source ~/.config/nvim/init/quick-scope.vim

function! s:split(...) abort
    let direction = a:1
    let file = exists('a:2') ? a:2 : ''
    call VSCodeCall(direction ==# 'h' ? 'workbench.action.splitEditorDown' : 'workbench.action.splitEditorRight')
    if !empty(file)
        call VSCodeExtensionNotify('open-file', expand(file), 'all')
    endif
endfunction

let mapleader=" "
nnoremap gd :<c-u>call VSCodeNotify('editor.action.revealDefinition')<cr>
" nnoremap gD :<c-u>call VSCodeNotify('editor.action.goToTypeDefinition')<cr>
nnoremap gi :<c-u>call VSCodeNotify('editor.action.goToImplementation')<cr>
nnoremap gr :<c-u>call VSCodeNotify('editor.action.goToReferences')<cr>

nnoremap <leader><TAB> :buffer#<CR>
nnoremap <SHIFT>k :<c-u>call VSCodeNotify('workbench.action.showOver')<cr>
nnoremap <leader>sa :<c-u>call VSCodeNotify('extension.fuzzySearch')<cr>
nnoremap <leader>ss :<c-u>call VSCodeNotify('workbench.action.gotoSymbol')<cr>
nnoremap <leader>ff :<c-u>call VSCodeNotify('extension.fuzzySearch')<cr>
nnoremap <leader>fr :<c-u>call VSCodeNotify('workbench.action.openRecent')<cr>
" nnoremap <leader>ss :<c-u>call VSCodeNotify('extension.fuzzySearch.activeTextEditor')<cr>
nnoremap <silent><leader>fw <Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>

nnoremap <leader>tt :<c-u>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<cr>
nnoremap <leader>ts :<c-u>call VSCodeNotify('workbench.action.selectTheme')<cr>
nnoremap <leader>te :<c-u>call VSCodeNotify('workbench.view.explorer')<cr>
nnoremap <leader>tx :<c-u>call VSCodeNotify('workbench.view.extensions')<cr>
nnoremap <leader>tK :<c-u>call VSCodeNotify('workbench.action.openDefaultKeybindingsFile')<cr>
nnoremap <leader>tk :<c-u>call VSCodeNotify('workbench.action.openGlobalKeybindingsFile')<cr>
nnoremap <leader>wd :<c-u>call VSCodeNotify('workbench.action.closeActiveEditor')<cr>
xnoremap <leader>wd :<c-u>call VSCodeNotify('workbench.action.closeActiveEditor')<cr>
nnoremap <leader>fs :<c-u>call VSCodeNotify('workbench.action.files.saveAll')<cr>
nnoremap <leader>of :<c-u>call VSCodeNotify('editor.action.formatDocument')<cr>
xnoremap <leader>of :<c-u>call VSCodeNotify('editor.action.formatSelection')<cr>
nnoremap <leader>oo :<c-u>call VSCodeNotify('editor.action.organizeImports')<cr>
" nnoremap <leader>ol :<c-u>call VSCodeNotify('turboConsoleLog.displayLogMessage')<cr>
nnoremap <leader>od :<c-u>call VSCodeNotify('console.log.wrap.string.down')<cr>
nnoremap <leader>op :<c-u>call VSCodeNotify('console.log.wrap.down.input')<cr>
nnoremap <leader>ol :<c-u>call VSCodeNotify('console.log.wrap.down.prefix')<cr>
" nnoremap <leader>ol :<c-u>call VSCodeNotify('quickConsoleLog.wrap.down')<cr>
xnoremap <leader>fs :<c-u>call VSCodeNotify('workbench.action.files.saveAll')<cr>
nnoremap <leader>] :<c-u>call VSCodeNotify('revealInExplorer')<cr>
nnoremap <leader>[ :<c-u>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<cr>
nnoremap <leader>i :<c-u>call VSCodeNotify('workbench.action.quickOpen')<cr>
nnoremap <leader>co :<c-u>call VSCodeNotify('editor.action.quickFix')<cr>
" nnoremap <leader>co :<c-u>call VSCodeNotify('keyboard-quickfix.openQuickFix')<cr>
" nnoremap <leader>ws :<c-u>call VSCodeNotify('workbench.action.splitEditorDown')<cr>
nnoremap <leader>wv <Cmd>call <SID>split('v')<CR>
xnoremap <leader>wv <Cmd>call <SID>split('v')<CR>
nnoremap <leader>ws <Cmd>call <SID>split('h')<CR>
xnoremap <leader>ws <Cmd>call <SID>split('h')<CR>
nnoremap <leader>bk <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <leader>an <Cmd>call VSCodeNotify('workbench.action.terminal.focus')<CR>
nnoremap <leader>l <Cmd>call VSCodeNotify('workbench.action.showAllEditorsByMostRecentlyUsed')<CR>
nnoremap <leader>1 <Cmd>call VSCodeNotify('workbench.action.openEditorAtIndex1')<CR>
nnoremap <leader>2 <Cmd>call VSCodeNotify('workbench.action.openEditorAtIndex2')<CR>
nnoremap <leader>3 <Cmd>call VSCodeNotify('workbench.action.openEditorAtIndex3')<CR>
nnoremap <leader>4 <Cmd>call VSCodeNotify('workbench.action.openEditorAtIndex4')<CR>
nnoremap <leader>5 <Cmd>call VSCodeNotify('workbench.action.openEditorAtIndex5')<CR>
nnoremap <leader>6 <Cmd>call VSCodeNotify('workbench.action.openEditorAtIndex6')<CR>
nnoremap <leader>7 <Cmd>call VSCodeNotify('workbench.action.openEditorAtIndex7')<CR>
nnoremap <leader>8 <Cmd>call VSCodeNotify('workbench.action.openEditorAtIndex8')<CR>
nnoremap <leader>9 <Cmd>call VSCodeNotify('workbench.action.openEditorAtIndex9')<CR>
nnoremap <leader>0 <Cmd>call VSCodeNotify('workbench.action.openEditorAtIndex10')<CR>

" xnoremap <C-S-P> <Cmd>call VSCodeNotifyVisual('workbench.action.showCommands', 1)<CR>
" nnoremap <C-w>gd <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>