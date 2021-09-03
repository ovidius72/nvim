call which_key#register('<space>', "g:which_key_map")
nnoremap <silent> <Leader> :WhichKey '<Space>'<CR>
" let maplocalleader=","
nnoremap <silent> <Leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
" nnoremap <silent> <localleader> :WhichKey 'g'<CR>
set timeoutlen=600
" autocmd! FileType which_key
" autocmd  FileType which_key set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

"Bclose
let g:blose_no_plugin_maps=1

" toggle quickfix list
function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

"binds both escape and Ctrl-g to quit which-key.
let g:which_key_exit = [27, 7] 
let g:which_key_disable_default_offset=1
let g:which_key_use_floating_win=1
let g:which_key_centered=0
" nnoremap <leader>bk :Bclose<CR>

" hi WhichKey           guibg=#1b192c guifg=#95ffa4
" hi WhichKeySeparator  guibg=#1b192c guifg=#aaffe4
" hi WhichKeyGroup      guibg=#1b192c guifg=#906cff
" hi WhichKeyDesc       guibg=#1b192c guifg=#91ddff
" hi WhichKeyFloating   guibg=#1b192c
hi WhichKeyFloating   guibg=#171717

nnoremap <silent><leader>fs :silent wa<CR>
nnoremap <silent><leader>bs :silent w<CR>
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
let g:which_key_map["S"] = 'Spectre'
" let g:which_key_map["<space>"] = 'files'
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
nnoremap <silent>    <A-n> :cnext<CR>
nnoremap <silent>    <A-p> :cprev<CR>
nnoremap <silent>    <A-m> :call ToggleQuickFix()<CR>
let g:which_key_map["<A-n>"] = 'Quickfix Next'
let g:which_key_map["<A-p>"] = 'Quickfix Prev'
let g:which_key_map["<A-m>"] = 'Quickfix Toggle'
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

" let g:which_key_map.J = 'Smartf'
" let g:which_key_map.J = 'Smartf repeat'
" let g:which_key_map.K = 'Smartf Back'
" let g:which_key_map.K = 'Smartf Back repeat'

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
      \ 'k' : 'Generete JSDoc',
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
      \ 'o': 'CodeAction Line',
      \ 'O': 'Open Link',
      \ 'p': 'projects',
      \ 't': 'Toggle Explorer',
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
      \ 'a'   : [':CocFzfList actions', 'Coc Actions'],
      \ 'd'   : [':CocFzfList diagnostics', 'Coc Diagnostics'],
      \ 'e'   : {
        \ 'name': '+Config',
        \ 'r' : 'source nvim',
        \ 'f' : 'config files',
        \ 'd' : 'edit config',
        \ 'U' : 'update',
        \ 'I' : 'install',
        \ },
      \ 'f'   : 'all files',
      \ 'O'   : [':CocFzfList outline', 'Coc Outline'],
      \ 'S'   : [':CocFzfList services', 'Coc Services'],
      \ 'C'   : [':CocFzfList sources', 'Coc Sources'],
      \ 'q'   : [':CocFzfList symbols', 'Coc Symbols'],
      \ 'y'   : [':CocFzfList yank', 'Coc Yank'],
      \ 'k'   : [':CocFzfList commands', 'Coc Commands'],
      \ 'p'   : [':CocFzfListResume', 'Coc List Resume'],
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
      \ 'c': 'fzf git commits',
      \ 'D': 'git VDiff',
      \ 'd': 'git HDiff',
      \ '3': [':Gvdiffsplit!', 'Split 3 W'],
      \ 'r': [':diffget //2', 'Get Left'],
      \ 'u': [':diffget //3', 'Get Right'],
      \ 'f': 'fzf git Files',
      \ 'g': 'LazyGit',
      \ 'l': 'git log',
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
" let g:which_key_map[" "] = {
"       \'name': '+clap',
"       \'a': [':Clap grep2', 'grep2 on the fly'],
"       \'b': [':Clap buffers', 'buffers'],
"       \'c': [':Clap commits', 'commits'],
"       \'C': [':Clap bcommits', 'buffer commits'],
"       \'d': [':Clap git_diff_files', 'Git diff files'],
"       \'e': [':Clap grep', 'grep'],
"       \'f': [':Clap filer', 'filer'],
"       \'g': [':Clap gfiles', 'git files'],
"       \'h': [':Clap hist:', 'command history'],
"       \'i': [':Clap filer', 'ivy'],
"       \'j': [':Clap jumps', 'jumps'],
"       \'k': [':Clap files', 'files'],
"       \'K': [':Clap colors', 'colors'],
"       \'l': [':Clap history', 'latest files'],
"       \'m': [':Clap marks', 'marks'],
"       \'M': [':Clap maps', 'maps'],
"       \"n": [':Clap providers', 'providers'],
"       \'o': [':Clap loclist', 'loclist'],
"       \'p': [':Clap proj_tags', 'project tags'],
"       \'q': [':Clap quickfix', 'quickfix'],
"       \'r': [':Clap registers', 'registers'],
"       \'s': [':Clap blines', 'buffer lines'],
"       \'S': [':Clap lines', 'lines'],
"       \'t': [':Clap tags', 'tags'],
"       \'T': [':Clap filetypes', 'file types'],
"       \'u': [':Clap grep ++query=<cword>', 'query'],
"       \'v': [':Clap help_tags', 'help tags'],
"       \'w': [':Clap windows', 'windows'],
"       \'y': [':Clap yanks', 'yanks'],
"       \'/': [':Clap hist/', 'search history'],
"       \';': [':Clap command', 'command list'],
"       \}

"" =============================== L ==========================
" let g:which_key_map.l = { 
"       \'l': [':Clap buffers', 'latest buffers'],
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
      \ 'name': '+quit',
      \ 'q': 'quit',
      \ 'w': 'save-quit',
      \}

"" ============================== R ===========================
let g:which_key_map.r = {
      \'name': 'Jump',
      \'a': 'AerojumpFromCursorBolt',
      \'c': 'Ranger Current Dir',
      \'d': 'AerojumpDefault',
      \'m': 'AerojumpMilk',
      \'g': 'Ranger',
      \'s': 'AerojumpSpace',
      \'t': 'AerojumpBolt',
      \'r': 'AnyJump',
      \'v': 'AnyJumpVisual',
      \'b': 'AnyJumpBack',
      \'l': 'AnyJumpLastResults',
      \}


"" =============================== S ==========================
let g:which_key_map.s = { 
      \'name': '+grep',
      \'a': 'Ag',
      \'A': 'Ag full-screen',
      \'f': 'Rg Fuzzy',
      \'F': 'Rg Fuzzy full-scree ',
      \'l': 'loaded buffer lines',
      \'h': 'search history',
      \'j': 'Spectre Word',
      \'p': 'Specter File',
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


      " \'m': {
      "   \'name': '+motion',
      "   \'/': 'incsearch-easymotion-/',
      "   \'?': 'incsearch-easymotion-?',
      "   \'m': 'incsearch-easymotion-stay',
      " \},
