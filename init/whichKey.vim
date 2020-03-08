call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <Leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
" nnoremap <silent> <localleader> :WhichKey 'g'<CR>
set timeoutlen=500

nnoremap <silent><leader>fs :wa<CR>
nnoremap <silent><leader>bs :w<CR>
" nnoremap <silent><leader>w. :call win#Win(1)<cr>
nnoremap <silent><leader>fer :so ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>fed :e ~/.config/nvim/init/neovim.vim<CR>
nnoremap <silent><leader>atq :QuickScopeToggle<CR>


let g:which_key_map = {}

let g:which_key_map["'"] = 'close preview'
let g:which_key_map["["] = 'Toggle explorer'
let g:which_key_map.1 = 'Buffer 1'
let g:which_key_map.2 = 'Buffer 2'
let g:which_key_map.3 = 'Buffer 3'
let g:which_key_map.4 = 'Buffer 4'
let g:which_key_map.5 = 'Buffer 5'
let g:which_key_map.6 = 'Buffer 6'
let g:which_key_map.7 = 'Buffer 7'
let g:which_key_map.8 = 'Buffer 8'
let g:which_key_map.9 = 'Buffer 9'

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
      \ 'f': 'fzf git Files',
      \ 'g': {
        \ 'name': '+gitgutter',
        \ 'h': 'preview hunk',
        \ 'n': 'next hunk',
        \ 'p': 'prev hunk',
        \ 's': 'stage hunk',
        \ 'u': 'undo hunk',
        \},
      \ 'F': 'fzf git files preview',
      \ 'p': 'push',
      \ 's': 'status',
      \ 'S': 'fzf status',
      \}


"" =============================== H ==========================
let g:which_key_map.h = { 
      \'name': '+highlight',
      \'s': 'toggle-hls(highlight)',
      \'h': 'toggle-under-cursor',
      \}
let g:which_key_map.H = { 
      \'name': '+help',
      \'m': 'mappings',
      \'C': 'fzf colors left',
      \'c': 'fzf colors',
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
      \'s': '2-char',
      \'t': '2-char-motion',
      \'w': 'word',
      \}
"" <-- j/J

"" =============================== K ==========================


"" =============================== L ==========================
let g:which_key_map.l = { 
      \'name': '+lsp',
      \}


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
let g:which_key_map.p = { 
      \ 'name': '+project',
      \ 'a': 'Ag',
      \ 'p': 'Project Sessions',
      \ 'f': 'NerdTree-focus',
      \ 'n': 'NerdTree-find',
      \ 'o': 'toggle explorer',
      \ 'g': 'Git Files',
      \ 'h': 'Files',
      \ 't': 'NerdTree-toggle',
      \ 'z': 'project tags',
      \}

"" =============================== Q ==========================
let g:which_key_map.q = { 
      \ 'name': '+quit',
      \'q': 'quit',
      \'w': 'save-quit',
      \}

"" ============================== R ===========================



"" =============================== S ==========================
let g:which_key_map.s = { 
      \'name': '+search',
      \'h': 'search history',
      \'c': 'command history',
      \'g': 'git grep',
      \'s': 'current buffer lines',
      \'a': 'loaded buffer lines',
      \'r': 'rg preview',
      \'R': 'rg query',
      \'t': 'buffer tags',
      \'w': 'windows', 
      \}

"" =============================== T ==========================
let g:which_key_map.t = { 
      \ 'name': '+tags',
      \'f': 'vista finder',
      \'v': 'vista toggle',
      \'b': 'fzf buffer tags',
      \'t': 'fzf project tags',
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
let g:which_key_map.w = {
    \ 'name' : '+windows' ,
    \ '.' : 'ace window',
    \ ' ' : 'ace window',
    \ ';' : 'Win',
    \ 'w' : ['<C-W>w'     , 'other-window']          ,
    \ 'd' : ['<C-W>c'     , 'delete-window']         ,
    \ '-' : ['<C-W>s'     , 'split-window-below']    ,
    \ '|' : ['<C-W>v'     , 'split-window-right']    ,
    \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
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
      \'name': '+text',
      \'r': 'replace-word',
      \'j': 'join multilines',
      \'s': 'split into multiline',
      \}


"" =============================== Y ==========================

"" =============================== Z ==========================

let g:which_key_map.z = { 
      \'name': '+fuzzy',
      \'/': 'incsearch-f',
      \'?': 'incsearch-?',
      \'g': 'incsearch-stay',
      \'i': [':set noignorecase!', 'toggle ignorecase'],
      \'s': {
        \'name': '+spell',
        \'/': 'spell-/',
        \'?': 'spell-?',
        \'s': 'spell-stay',
      \},
    \}


