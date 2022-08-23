call which_key#register('<space>', "g:which_key_map")
nnoremap <silent> <Leader> :WhichKey '<Space>'<CR>
" " let maplocalleader=","
" nnoremap <silent> <Leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
" nnoremap <silent> <localleader> :WhichKey 'g'<CR>
set timeoutlen=1000
" autocmd! FileType which_key
" autocmd  FileType which_key set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" toggle quickfix list
function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction
" clear quickfix
command! ClearQuickFixList cexpr []

"binds both escape and Ctrl-g to quit which-key.
let g:which_key_exit = [27, 7] 
let g:which_key_disable_default_offset=1
let g:which_key_use_floating_win=1
let g:which_key_centered=0
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
nmap <Leader>xj :SplitjoinJoin<cr>
nmap <Leader>xs :SplitjoinSplit<cr>
" nnoremap <leader>bk :Bclose<CR>

" hi WhichKey           guibg=#1b192c guifg=#95ffa4
" hi WhichKeySeparator    guibg=NONE guifg=NONE
" hi WhichKeyGroup      guibg=#9b192c guifg=#906cff
" hi WhichKeyDesc       guibg=#1b192c guifg=#91ddff
" hi WhichKeyFloating   guibg=#1b192c
" hi WhichKeyFloating   guibg=#171717

nnoremap <silent><leader>fs :wa<CR>
nnoremap <silent><leader>bs :w<CR>
" noremap <silent><leader><leader> :call win#Win(1)<cr>
nnoremap <silent><leader>fer :so ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>fed :e ~/.config/nvim/init/neovim.vim<CR>
nnoremap <silent><leader>atq :QuickScopeToggle<CR>
nnoremap <leader><TAB> <C-^>
" noremap <leader><leader>1 :1wincmd w<cr>
" noremap <leader><leader>2 :2wincmd w<cr>
" noremap <leader><leader>3 :3wincmd w<cr>
" noremap <leader><leader>4 :4wincmd w<cr>
" noremap <leader><leader>5 :5wincmd w<cr>
" noremap <leader><leader>6 :6wincmd w<cr>
" noremap <leader><leader>7 :7wincmd w<cr>
noremap <leader>ps :Startify<cr>
" map <silent><leader>l :Clap buffers<cr>
" map <silent><leader>i :Clap files<cr>
map <silent><leader>l :Buffers<cr>
map <silent><leader>i :HFiles<cr>
map <silent><leader>M :MaximizerToggle<cr>
" map <silent><leader><leader> :Clap files<cr>
" map <silent><leader><leader>l :History<cr>


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
let g:which_key_map[";"] = 'VimWin'
let g:which_key_map["/"] = 'which_key_ignore'
let g:which_key_map["1"] = 'which_key_ignore'
let g:which_key_map["2"] = 'which_key_ignore'
let g:which_key_map["3"] = 'which_key_ignore'
let g:which_key_map["4"] = 'which_key_ignore'
let g:which_key_map["5"] = 'which_key_ignore'
let g:which_key_map["6"] = 'which_key_ignore'
let g:which_key_map["7"] = 'which_key_ignore'
let g:which_key_map["8"] = 'which_key_ignore'
let g:which_key_map["9"] = 'which_key_ignore'
let g:which_key_map["0"] = 'which_key_ignore'
let g:which_key_map["<F9>"] = 'which_key_ignore'
let g:which_key_map["0..9"] = 'Switch Buffers'
nnoremap <silent><leader>qq :call ToggleQuickFix()<CR>
" nnoremap <silent><leader>qx :ClearQuickFixList<CR>
nnoremap <silent><leader>qp :cprev<CR>
nnoremap <silent><leader>qn :cnext<CR>

" let g:which_key_map["<leader>qp"] = 'Quickfix Next'
" let g:which_key_map["<leader>qn"] = 'Quickfix Prev'
" let g:which_key_map["<leader>ql"] = 'Quickfix Toggle'
" let g:which_key_map.1 = 'Buffer 1'
" let g:which_key_map.2 = 'Buffer 2'
" let g:which_key_map.3 = 'Buffer 3'
" let g:which_key_map.4 = 'Buffer 4'
" let g:which_key_map.5 = 'Buffer 5'
" let g:which_key_map.6 = 'Buffer 6'
" let g:which_key_map.7 = 'Buffer 7'
" let g:which_key_map.8 = 'Buffer 8'
" let g:which_key_map.9 = 'Buffer 9'
" let g:which_key_map.0 = 'Buffer 10'
let g:which_key_map.i = 'open file..'
let g:which_key_map.l = 'buffers..'
let g:which_key_map.y = 'copy to clipboard'
let g:which_key_map.Y = 'paste from clipboard'
let g:which_key_map.M = 'MaximizerToggle' 

let g:which_key_map[' '] = { 
      \'name': '+telescope',
      \'/': 'Search History',
      \':': 'Search History',
      \'a': 'Fuzzy Find in Buffer',
      \'b': 'Builtins',
      \'B': 'File Browser',
      \'c': 'Commands',
      \'d': 'Find Files 1',
      \'e': 'Vim Files',
      \'f': 'Find Files 2',
      \'g': {
        \ 'name': '+Git',
        \ 'b': 'Branches',
        \ 's': 'Status',
        \ 'S': 'Stash',
        \ 'c': 'Commits',
        \ 'C': 'Buffer Commits',
      \},
      \'l': 'Buffers',
      \'o': 'Old Files',
      \'p': 'Live Grep',
      \'P': 'Spell Suggest',
      \'r': 'Recent files',
      \'s': 'Grep String',
      \'S': 'Grep String For',
      \'t': 'Todos',
      \'w': 'Grep Word',
      \'j': 'Jump List',
      \'m': 'Marks',
      \'E': 'Symbols',
    \}
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
      \'z': [":ZenMode", "ZenMode"]
      \}

"" =============================== B ==========================
let g:which_key_map.b = { 
      \'name': '+buffers',
      \'b': 'buffers',
      \'c': 'select and close',
      \'e': 'source buffer',
      \'h': 'close hidden',
      \'l': 'close nameless',
      \'k': 'close current',
      \'K': 'kill buffer discard changed',
      \'m': 'close menu',
      \'n': 'next-buffers',
      \'o': 'close other',
      \'p': 'prev-buffers',
      \'r': 'list-reverse',
      \'s': 'save buffer',
      \'t': 'buffer tags',
      \'S': 'close select',
      \'u': 'undo close last buffer',
      \}


"" =============================== C ==========================
let g:which_key_map.c = { 
      \ 'name': '+coc',
      \ 'a': 'Code Action',
      \ 'c' : [':CocConfig','Coc Config'],
      \ 'd':{ 
        \'name': '+coc-diagnostic',
        \'i': 'diagnostic info',
      \},
      \ 'e': 'Hide Float',
      \ 'f': 'fix',
      \ 'F': 'Fix Selected',
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
      \ 'i' : 'Diagnostics Info',
      \ 'j' : 'Jump Float',
      \ 'l': {
          \'name': '+coc-list',
          \'l': 'Lists',
          \'c': 'Commands',
          \'e': 'Extensions',
          \'d': 'diagnostic',
          \'o': 'outline',
          \'n': 'next',
          \'p': 'previous',
          \'s': 'symbols',
          \'r': 'resume',
        \},
        \ 'r': 'Code Rename',
        \ 's': {
          \'name': '+session',
          \'s': 'save',
          \'l': 'load',
        \},
      \ 'L': 'CodeLens Actions',
      \ 'm': 'Marks',
      \ 'o': 'CodeAction Line',
      \ 'O': 'Open Link',
      \ 'p': 'projects',
      \ 'q' : [':QuickRun','QuickRun'],
      \ 'u': 'Coc Update',
      \ 'v': 'Code Action Selected',
      \ 'x': 'Open Explorer',
      \ 'y': 'yanks',
      \ 'w': 'Grep Word',
      \ 'z': 'Coc Restart',
      \}

"" =============================== D ==========================

let g:which_key_map.d = { 
      \'name': '+debug',
      \'d': 'Launch',
      \'c': 'clear breakpoints',
      \'e': 'eval',
      \'r': 'reset',
      \'w': 'watch add',
      \}


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
      \ 'p'   : 'Telescope Live Grep',
      \ 'i'   : 'Coc Find Symbol',
      \ 'o'   : 'git files',
      \ 'r'   : 'file history',
      \ 'R'   : [':e!', 'file reload'],
      \ 's'   : 'save buffers',
      \ 'g'   : 'git files status',
      \ ';'   : 'command history',
      \ '/'   : 'search history',
      \ 'l'   : 'open buffers',
      \ 'm'   : 'marks',
      \ 'c'   : 'CocSearch word',
      \ 'x'   : 'CocSearch exact word',
      \ 'w'   : 'find word',
      \ }


"" =============================== G ==========================
      " \ 'g': {
      "   \ 'name': '+gitgutter',
      "   \ 'n': 'next hunk',
      "   \ 'p': 'prev hunk',
      "   \ 's': 'stage hunk',
      "   \ 'u': 'undo hunk',
      "   \},
let g:which_key_map.g = { 
      \ 'name': '+git',
      \ 'b': [':Git blame', 'Git Blame'],
      \ 'r': [':GV', 'Git Commit Browser'],
      \ 't': [':GV!', 'Git Commit Browser(Current)' ],
      \ 'R': [':GV?', 'Git Commit Browser(LocationList)' ],
      \ 'c': 'fzf git commits',
      \ 'd': 'Diff File History',
      \ 'C': 'Diff File History',
      \ 'o': 'Diff File Open',
      \ 'V': 'git VDiff',
      \ 'H': 'git HDiff',
      \ '3': [':Gvdiffsplit!', 'Split 3 W'],
      \ '2': [':diffget //2', 'Get Left'],
      \ 'u': [':diffget //3', 'Get Right'],
      \ 'f': 'fzf git Files',
      \ 'g': 'LazyGit',
      \ 'l': 'git log',
      \ 'n': [":VGit actions", "VGit"],
      \ 'm': 'Git Messenger Popup',
      \ 'F': 'fzf git files preview',
      \ 'p': 'push',
      \ 's': 'status',
      \ 'S': 'fzf status',
      \}


"" =============================== H ==========================
let g:which_key_map.h = { 
      \'name': '+highlight',
      \'c': 'Contex Toggle',
      \'C': 'Context Update',
      \'p': 'Context Peek',
      \'h': 'toggle-under-cursor',
      \'m': [':MinimapToggle', 'Minimap Toggle'],
      \'n': [':set relativenumber!', 'Toggle Relative Number'],
      \'l': 'toggle-list-chars',
      \'r': 'convert spaces to tabs',
      \'s': 'toggle-hls(highlight)',
      \'S': 'toggle smooth scroll',
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

" let g:which_key_map.i = { 
"       \'i': [':Clap buffers', 'latest buffers'],
"       \}

" \'t': '<Plug>Sneak_t',
" \'T': '<Plug>Sneak_T',
      " \'a': '2-char-motion',
      " \'b': 'line-motion',
      " \'c': '1-char',
      " \'h': 'line-backward',
      " \'l': 'line-forward',
      " \'m': 'n-chars-motion',
      " \'n': 'next',
      " \'p': 'prev',
      " \'s': '2-char',
      " \'w': 'word',
      " \'.': 'repeat last search',
      " \'j': 'smartf forward',
      " \'J': 'smartf repeat',
      " \'K': 'smartf repeat opposite',
      " \'k': 'smartf backward',

"" =============================== J ==========================
let g:which_key_map.j = { 
      \ 'name': '+jump',
      \ 'i': 'Implementation File',
      \ 'm': 'Markup File',
      \ 't': 'Test File',
      \ 's': 'Style File'
      \}
"
"" <-- j/J

" let g:which_key_map.k = {
"   \'name': '+lists',
"   \'q': {
"     \'name': '+quickfix',
"     \'n': ['cnext', 'Quickfix Next'],
"     \'p': ['cnext', 'Quickfix Previous'],
"     \'o': ['copen', 'Quickfix Open'],
"     \'c': ['cclose', 'Quickfix Close'],
"     \},
"   \'l': {
"     \'name': '+loclist',
"     \'n': ['lnext', 'Loclist Next'],
"     \'p': ['lnext', 'Loclist Previous'],
"     \'o': ['lopen', 'Loclist Open'],
"     \'c': ['lclose', 'Loclist Close'],
"     \}
"   \}

"" =============================== K ==========================
      " \'x': [],
      " \'z': [],
"" =============================== L ==========================

"" ============================= M ============================
let g:which_key_map.m = { 
      \'name': '+other',
      \'m': 'marks',
      \'w': [':WinShift', 'WinShift'],
      \}


"" ============================== N ===========================
" let g:which_key_map.n = { 
"       \'name': '+empty+',
"       \}



"" ============================== O ==========================
let g:which_key_map.o = { 
      \'name': '+custom',
      \'a': 'ISwap Next Inner',
      \'A': 'ISwap Previous Inner',
      \'s': 'ISwap',
      \'w': 'ISwapWith',
      \'l': 'js-console.log',
      \'p': 'language log',
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
      \ 'S': 'Add Session',
      \ 'p': 'Projects',
      \ 'o': 'toggle explorer',
      \ 'g': 'Git Files',
      \ 'h': 'Files',
      \ 's': 'Sessions',
      \ 'z': 'project tags',
      \}

"" =============================== Q ==========================
let g:which_key_map.q = { 
      \ 'name': '+lists',
      \ 'q': [':ToggleQuickFix', 'toggle'],
      \ 'x': [':ClearQuickFixList', 'clear'],
      \ 'p': [':cprev', 'previous'],
      \ 'n': [':cnext', 'next'],
      \}

"" ============================== R ===========================
let g:which_key_map.r = {
      \'name': '+jump',
      \'a': 'AerojumpFromCursorBolt',
      \'d': 'AerojumpDefault',
      \'m': 'AerojumpMilk',
      \'g': 'Ranger',
      \'r': 'AerojumpBolt',
      \'s': 'AerojumpSpace',
      \}


"" =============================== S ==========================
let g:which_key_map.s = { 
      \'name': '+grep',
      \'a': 'Ag',
      \ 'e': {
        \ 'name': '+config',
        \ 'd': 'Neovim Init',
        \ 'f': 'Config files',
        \ 'I': 'Plug Install',
        \ 'U': 'Plug Update',
        \ 'r': 'Reload config',
      \ },
      \'A': 'Ag full-screen',
      \'f': 'Rg Fuzzy',
      \'F': 'Rg Fuzzy full-scree ',
      \'l': 'loaded buffer lines',
      \'h': 'search history',
      \'j': 'Spectre Word',
      \'p': 'Spectre File',
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
      \'h': 'help',
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
      \'g': 'vista finder',
      \'f': 'vista focus',
      \'v': 'vista toggle',
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
    \ '1..7' : 'Switch Windows',
    \ '1' : 'which_key_ignore',
    \ '2' : 'which_key_ignore' ,
    \ '3' : 'which_key_ignore' ,
    \ '4' : 'which_key_ignore' ,
    \ '5' : 'which_key_ignore' ,
    \ '6' : 'which_key_ignore' ,
    \ '7' : 'which_key_ignore' ,
    \ ';' : 'VimWin',
    \ 'w' : ['<C-W>c'     , 'delete-window']          ,
    \ 'e' : ['<C-W>v'     , 'split-window-right']         ,
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
    \ 'q' : ['<C-W>c'     , 'delete-window']         ,
    \ 'Q' : 'exit'         ,
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
      \'d': 'doge generate (DOC)',
      \'k': 'RevJ',
      \'o': 'Split at cursor',
      \'s': 'Split into multiline',
      \'j': 'join multilines',
      \}


"" =============================== Y ==========================

"" =============================== Z ==========================


let g:which_key_map.z = { 
      \'name': '+search',
      \'/': 'incsearch-f',
      \'?': 'incsearch-?',
      \'z': 'incsearch-stay',
      \'f': {
        \'name': '+fuzzy',
        \'/': 'incsearch-fuzzy-/',
        \'?': 'incsearch-fuzzy-?',
        \'f': 'incsearch-fuzzy-stay',
      \},
      \'i': [':set noignorecase! | echo "Changed ignorecase"', 'toggle ignorecase'],
      \'s': {
        \'name': '+spell',
        \'/': 'spell-/',
        \'?': 'spell-?',
        \'s': 'spell-stay',
      \},
    \}
