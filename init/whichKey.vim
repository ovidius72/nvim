call which_key#register('<space>', "g:which_key_map")
nnoremap <silent> <Leader> :WhichKey '<Space>'<CR>
" let maplocalleader=","
nnoremap <silent> <Leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
" nnoremap <silent> <localleader> :WhichKey 'g'<CR>
set timeoutlen=500
" autocmd! FileType which_key
" autocmd  FileType which_key set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


"binds both escape and Ctrl-g to quit which-key.
let g:which_key_exit = [27, 7] 
let g:which_key_disable_default_offset=1
let g:which_key_use_floating_win=1

hi WhichKey           guibg=#1b192c guifg=#95ffa4
hi WhichKeySeparator  guibg=#1b192c guifg=#aaffe4
hi WhichKeyGroup      guibg=#1b192c guifg=#906cff
hi WhichKeyDesc       guibg=#1b192c guifg=#91ddff
hi WhichKeyFloating   guibg=#1b192c

nnoremap <silent><leader>fs :silent wa<CR>
nnoremap <silent><leader>bs :silent w<CR>
" noremap <silent><leader><leader> :call win#Win(1)<cr>
nnoremap <silent><leader>fer :so ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>fed :e ~/.config/nvim/init/neovim.vim<CR>
nnoremap <silent><leader>atq :QuickScopeToggle<CR>
nnoremap <leader><TAB> <C-^>
noremap <leader>w1 :1wincmd w<cr>
noremap <leader>w2 :2wincmd w<cr>
noremap <leader>w3 :3wincmd w<cr>
noremap <leader>w4 :4wincmd w<cr>
noremap <leader>w5 :5wincmd w<cr>
noremap <leader>w6 :6wincmd w<cr>
noremap <leader>w7 :7wincmd w<cr>
noremap <leader>ps :Startify<cr>

" noremap ,1 :1wincmd w<cr>
" noremap ,2 :2wincmd w<cr>
" noremap ,3 :3wincmd w<cr>
" noremap ,4 :4wincmd w<cr>
" noremap ,5 :5wincmd w<cr>
" noremap ,6 :6wincmd w<cr>
" noremap ,7 :7wincmd w<cr>
let g:which_key_map = {}

let g:which_key_map["<Tab>"] = 'Last Buffer'
let g:which_key_map["'"] = 'close preview'
" let g:which_key_map["SPC"] = 'Ace windows'
let g:which_key_map["["] = 'Toggle explorer'
let g:which_key_map["]"] = 'Open explorer'
let g:which_key_map["."] = 'VimWinOnce'
let g:which_key_map.1 = 'Buffer 1'
let g:which_key_map.2 = 'Buffer 2'
let g:which_key_map.3 = 'Buffer 3'
let g:which_key_map.4 = 'Buffer 4'
let g:which_key_map.5 = 'Buffer 5'
let g:which_key_map.6 = 'Buffer 6'
let g:which_key_map.7 = 'Buffer 7'
let g:which_key_map.8 = 'Buffer 8'
let g:which_key_map.9 = 'Buffer 9'
let g:which_key_map.0 = 'Buffer 10'

"" =============================== A ==========================
let g:which_key_map.a = { 
      \'name': '+apps',
      \'d': {
        \'name': '+debug',
        \'d': 'Vimspector-launch',
        \'r': 'Vimspector-reset',
        \'w': 'Add Watch',
      \},
      \'e': 'node',
      \'f': 'floating-term',
      \'g': 'tig',
      \'k': {
        \'name': '+clap',
        \'b': 'buffers',
        \'c': 'colors',
        \'f': 'git-files',
        \'g': 'grep',
        \'h': 'command-history',
        \'i': 'grep-query',
        \'j': 'jumps',
        \'k': 'clap',
        \'l': 'lines',
        \'m': 'marks',
        \'o': 'files',
        \'r': 'registers',
        \'s': 'history',
        \'t': 'tags',
        \'w': 'windows',
        \'y': 'yanks',
        \'x': 'filer',
      \},
      \'n': 'Nuake',
      \'r': {
        \ 'name': '+ranger',
        \ 'r': 'ranger',
        \ 'd': 'ranger-working-dir',
        \ 'c': 'ranger-current-dir',
        \ 'f': 'ranger-current-file',
        \},
      \'t': {
        \'name': '+toggle',
        \'q': 'quickscope',
        \},
      \}

"" =============================== B ==========================
let g:which_key_map.b = { 
      \'name': '+buffers',
      \'b': 'buffers',
      \'d': 'kill buffer',
      \'e': 'source buffer',
      \'K': 'kill buffer discard changed',
      \'n': 'next-buffers',
      \'p': 'prev-buffers',
      \'r': 'list-reverse',
      \'s': 'save buffer',
      \}


"" =============================== C ==========================
let g:which_key_map.c = { 
      \ 'name': '+coc',
      \ 'a': 'code-action',
      \ 'b':{ 
        \'name': '+coc-bookmarks',
        \'l': 'list',
        \'j': 'next',
        \'k': 'prev',
        \'t': 'toggle',
        \'a': 'annotate',
        \},
      \ 'c' : [':CocConfig','Coc Config'],
      \ 'd':{ 
        \'name': '+coc-diagnostic',
        \'i': 'diagnostic info',
      \},
      \ 'f': 'fix',
      \ 'F': 'fix-selected',
      \ 'g': {
        \ 'name': '+coc-git',
        \ 'c' : 'commits',
        \ 'i' : 'hunk info',
        \ 'u' : 'hunk undo',
        \ 'f' : 'fold unchanged',
        \ 'd' : 'diff cached',
        \ 's' : 'show commit',
        \ 't' : 'toggle gutters',
        \},
      \ 'h' : [':CocInfo','CocInfo'],
      \ 'i' : 'Actions Menu',
      \ 'l': {
          \'name': '+coc-list',
          \'l': '+Lists',
          \'c': '+Commands',
          \'e': '+Extensions',
          \'a': 'actions',
          \'d': 'diagnostic',
          \'o': 'outline',
          \'n': 'next',
          \'p': 'previous',
          \'s': 'symbols',
          \'r': 'resume',
        \},
        \ 'r': 'code-rename',
        \ 's': {
          \'name': '+session',
          \'s': 'save',
          \'l': 'load',
        \},
      \ 't': 'Toggle Explorer',
      \ 'u': 'Coc Update',
      \ 'v': 'code-action-selected',
      \ 'x': 'Open Explorer',
      \ 'y': 'yanks',
      \ 'w': 'grep-word',
      \ 'z': 'Coc Restart',
      \}

"" =============================== D ==========================


"" =============================== E ==========================
let g:which_key_map.e = { 
      \ 'name': '+diagnostic',
      \ 'l': 'coc diagnostic',
      \ 'a': {
        \'name': '+ale',
        \'p': [':ALEPrev', 'prev'],
        \'n': [':ALENext', 'next'],
        \'t': [':ALEToggle', 'toggle'],
        \'b': [':ALEToggleBuffer', 'toggle buffer'],
      \},
      \ 'n': 'ale-next',
      \ 'p': 'ale-pre',
      \}


"" =============================== F ==========================
let g:which_key_map.f = { 
      \ 'name': '+file',
      \ 'e'   : {
        \ 'name': '+Config',
        \ 'r' : 'source nvim',
        \ 'f' : 'config files',
        \ 'd' : 'edit config',
        \ 'U' : 'update',
        \ 'I' : 'install',
        \ },
      \ 'f'   : 'all files',
      \ 'o'   : 'git files',
      \ 'r'   : 'file history',
      \ 's'   : 'save buffers',
      \ 'g'   : 'git files status',
      \ }


"" =============================== G ==========================
let g:which_key_map.g = { 
      \ 'name': '+git',
      \ 'c': 'fzf git commits',
      \ 'D': 'git VDiff',
      \ 'd': 'git HDiff',
      \ 'f': 'fzf git Files',
      \ 'g': {
        \ 'name': '+gitgutter',
        \ 'n': 'next hunk',
        \ 'p': 'prev hunk',
        \ 's': 'stage hunk',
        \ 'u': 'undo hunk',
        \},
      \ 'l': 'git log',
      \ 'F': 'fzf git files preview',
      \ 'p': 'push',
      \ 's': 'status',
      \ 'S': 'fzf status',
      \}


"" =============================== H ==========================
let g:which_key_map.h = { 
      \'name': '+highlight',
      \'h': 'toggle-under-cursor',
      \'l': 'toggle-list-chars',
      \'r': 'convert spaces to tabs',
      \'s': 'toggle-hls(highlight)',
      \'t': 'toggle spaces/tabs',
      \'z': 'toggle spell check',
      \}

let g:which_key_map.H = { 
      \'name': '+help',
      \'f': 'file types',
      \'k': 'commands',
      \'m': 'mappings',
      \'C': 'fzf colors left',
      \'c': 'fzf colors',
      \'t': 'help tags',
      \'z': 'describe-face',
      \}


"" =============================== I ==========================



"" =============================== J ==========================
let g:which_key_map.j = {
      \'name': '+jump',
      \'.': 'repeat last search',
      \'a': '2-char-motion',
      \'b': 'line-motion',
      \'f': '1-char',
      \'h': 'line-backward',
      \'j': 'j-motion(down)',
      \'k': 'k-motion(up)',
      \'l': 'line-forward',
      \'m': 'n-chars-motion',
      \'n': 'next',
      \'p': 'prev',
      \'r': {
        \'name': 'AnyJump',
        \'j': 'any jump',
        \'b': 'any jump back',
        \'l': 'any jump last',
      \},
      \'s': '2-char',
      \'t': '2-char-motion',
      \'w': 'word',
      \}
"" <-- j/J

"" =============================== K ==========================


"" =============================== L ==========================
" let g:which_key_map.l = { 
"       \'name': '+lsp',
"       \}


"" ============================= M ============================
let g:which_key_map.m = { 
      \'name': '+marks',
      \'m': 'marks',
      \}


"" ============================== N ===========================



"" ============================== O ==========================
let g:which_key_map.o = { 
      \'name': '+custom',
      \'l': 'js-console.log',
      \'o': 'organize import',
      \'f': 'format',
      \'F': 'fold',
      \}

"" ============================== P ===========================
" \ 'f': 'NerdTree-focus',
" \ 'n': 'NerdTree-find',
" \ 't': 'NerdTree-toggle',
let g:which_key_map.p = { 
      \ 'name': '+project',
      \ 'a': 'Ag',
      \ 'A': 'Add Project Session',
      \ 'p': 'Project Sessions',
      \ 'o': 'toggle explorer',
      \ 'g': 'Git Files',
      \ 'h': 'Files',
      \ 's': 'Start',
      \ 'z': 'project tags',
      \}

"" =============================== Q ==========================
let g:which_key_map.q = { 
      \ 'name': '+quit',
      \ 'q': 'quit',
      \ 'w': 'save-quit',
      \}

"" ============================== R ===========================



"" =============================== S ==========================
let g:which_key_map.s = { 
      \'name': '+search',
      \'a': 'Ag',
      \'A': 'Ag full-screen',
      \'f': 'Rg Fuzzy',
      \'F': 'Rg Fuzzy full-scree ',
      \'l': 'loaded buffer lines',
      \'h': 'search history',
      \'c': 'command history',
      \'g': 'git grep',
      \'s': 'current buffer lines',
      \'r': 'Rg preview',
      \'R': 'Rg full-screen',
      \'t': 'buffer tags',
      \'w': 'windows', 
      \}

"" =============================== T ==========================
let g:which_key_map.t = { 
      \ 'name': '+tags',
      \'b': 'fzf buffer tags',
      \'f': 'vista finder',
      \'h': 'help',
      \'t': 'fzf project tags',
      \'v': 'vista toggle',
      \}

let g:which_key_map.T = { 
      \'name': '+tabs',
      \'c': 'close',
      \'n': 'next',
      \'N': 'new',
      \'p': 'previous',
      \}

"" =============================== U ==========================


"" =============================== V ==========================
let g:which_key_map.v = {
      \'name': '+visual',
      \'s': {
        \'name': '+sandwich',
        \'a': 'add',
        \'d': 'delete',
        \'r': 'replace',
        \'rb': 'auto replace',
        \'db': 'auto delete',
        \}
      \}




"" =============================== W ==========================
" \ '.' : 'ace window',
" \ ' ' : 'ace window',

let g:which_key_map.w = {
    \ 'name' : '+windows',
    \ ';' : 'VimWin',
    \ '1' : 'Window 1',
    \ '2' : 'Window 2' ,
    \ '3' : 'Window 3' ,
    \ '4' : 'Window 4' ,
    \ '5' : 'Window 5' ,
    \ '6' : 'Window 6' ,
    \ '7' : 'Window 7' ,
    \ 'w' : ['<C-W>w'     , 'other-window']          ,
    \ 'd' : ['<C-W>c'     , 'delete-window']         ,
    \ '-' : ['<C-W>s'     , 'split-window-below']    ,
    \ '|' : ['<C-W>v'     , 'split-window-right']    ,
    \ 'h' : ['<C-W>h'     , 'window-left']           ,
    \ 'j' : ['<C-W>j'     , 'window-below']          ,
    \ 'l' : ['<C-W>l'     , 'window-right']          ,
    \ 'k' : ['<C-W>k'     , 'window-up']             ,
    \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
    \ 'J' : ['resize +5'  , 'expand-window-below']   ,
    \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
    \ 'K' : ['resize -5'  , 'expand-window-up']      ,
    \ '=' : ['<C-W>='     , 'balance-window']        ,
    \ 's' : ['<C-W>s'     , 'split-window-below']    ,
    \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
    \ '?' : ['Windows'    , 'fzf-window']            ,
    \ 'm' : {
      \ 'name': '+zoom',
      \ 'm' : 'zoom'            ,
      \ 'i' : 'zoom-in'            ,
      \ 'o' : 'zoom-out'            ,
      \}
    \ }

  
"" =============================== X ==========================
let g:which_key_map.x = { 
      \'name': '+code',
      \'r': 'replace-word',
      \'o': 'Split at cursor',
      \'s': 'split into multiline',
      \'j': 'join multilines',
      \'c': {
        \'name': 'comment',
        \'c': 'Comment+motion',
        \'y': 'Comment and yank',
        \},
      \}


"" =============================== Y ==========================

"" =============================== Z ==========================

let g:which_key_map.z = { 
      \'name': '+fuzzy',
      \'/': 'incsearch-f',
      \'?': 'incsearch-?',
      \'z': 'incsearch-stay',
      \'f': {
        \'name': '+fuzzy',
        \'/': 'incsearch-fuzzy-/',
        \'?': 'incsearch-fuzzy-?',
        \'f': 'incsearch-fuzzy-stay',
      \},
      \'i': [':set noignorecase!', 'toggle ignorecase'],
      \'m': {
        \'name': '+motion',
        \'/': 'incsearch-easymotion-/',
        \'?': 'incsearch-easymotion-?',
        \'m': 'incsearch-easymotion-stay',
      \},
      \'s': {
        \'name': '+spell',
        \'/': 'spell-/',
        \'?': 'spell-?',
        \'s': 'spell-stay',
      \},
    \}


