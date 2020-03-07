call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <Leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
" nnoremap <silent> <localleader> :WhichKey 'g'<CR>
set timeoutlen=500

nnoremap <silent><leader>fs :wa<CR>
nnoremap <silent><leader>fer :so ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>fed :e ~/.config/nvim/init/neovim.vim<CR>




let g:which_key_map = {}
let g:which_key_map.e = { 
      \ 'name': '+diagnostic',
      \ 'l': 'diagnostic',
      \ 'n': 'ale-next',
      \ 'p': 'ale-pre',
      \}

let g:which_key_map.s = { 
      \'name': '+search',
      \'s': 'lines',
      \'t': 'buffer tags',
      \'w': 'windows', 
      \}

let g:which_key_map.o = { 
      \'name': '+custom',
      \'l': 'JS-console.log',
      \}

let g:which_key_map.b = { 
      \'name': '+buffers',
      \'b': 'buffers',
      \'d': 'kill buffer',
      \'n': 'next-buffers',
      \'p': 'prev-buffers',
      \}

let g:which_key_map.f = { 
      \ 'name': '+file',
      \ 'e'   : {
        \ 'name': '+Config',
        \ 'r' : 'Source nvim',
        \ 'd' : 'Edit config',
        \ },
      \ 'f'   : 'Git Files',
      \ 'r'   : 'File History',
      \ 's'   : 'Save Buffers',
      \ 't'   : 'Git Files',
      \ }

let g:which_key_map.t = { 
      \ 'name': '+tags',
      \'f': 'Vista Finder',
      \'v': 'Vista Toggle',
      \}

let g:which_key_map.T = { 
      \'name': '+tabs',
      \'c': 'close',
      \'n': 'next',
      \'N': 'new',
      \'p': 'previous',
      \}

let g:which_key_map.h = { 
      \'name': '+highlight',
      \'s': 'toggle-hls(highlight)',
      \'h': 'toggle-under-cursor',
      \}

let g:which_key_map.x = { 
      \'name': '+text',
      \'r': 'replace-word',
      \}

let g:which_key_map.q = { 
      \ 'name': '+quit',
      \'q': 'quit',
      \'w': 'save-quit',
      \}

let g:which_key_map.m = { 
      \'name': '+marks',
      \'m': 'marks',
      \}


let g:which_key_map.g = { 
      \ 'name': '+git',
      \ 'c': 'Git Commits',
      \ 'f': 'Git Files',
      \ 'F': 'Git Files Preview',
      \ 'h': 'Preview Hunk',
      \ 'n': 'Next Hunk',
      \ 'p': 'Prev Hunk',
      \ 'P': 'Git Push',
      \ 's': 'Status',
      \ 'S': 'Fzf Status',
      \}


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
      \ 's': 'code-action-selected',
      \ 't': 'Toggle Explorer',
      \ 'x': 'Toggle Explorer',
      \ 'y': 'yanks',
      \ 'w': 'grep-word',
      \}

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
      \}

let g:which_key_map.H = { 
      \'name': '+help',
      \'f': 'describe-face',
      \'m': 'mappings'
      \}

let g:which_key_map.p = { 
      \ 'name': '+project',
      \ 'a': 'Ag',
      \ 'f': 'NerdTree-focus',
      \ 'n': 'NerdTree-find',
      \ 't': 'NerdTree-toggle',
      \}
  
" let g:which_key_map.f.s = 'save-file'



  

let g:which_key_map.0 = 'Buffer 10'
let g:which_key_map.1 = 'Buffer 1'
let g:which_key_map.2 = 'Buffer 2'
let g:which_key_map.3 = 'Buffer 3'
let g:which_key_map.4 = 'Buffer 4'
let g:which_key_map.5 = 'Buffer 5'
let g:which_key_map.6 = 'Buffer 6'
let g:which_key_map.7 = 'Buffer 7'
let g:which_key_map.8 = 'Buffer 8'
let g:which_key_map.9 = 'Buffer 9'
  
let g:which_key_map.v = {
      \'name': '+visual',
      \'a': {
        \'name': '+sandwich',
        \'a': 'add',
        \'b': 'add',
        \'d': 'delete',
        \'r': 'replace',
        \'v': 'auto replace',
        \'u': 'auto delete',
        \}
      \}

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

let g:which_key_map.w = {
    \ 'name' : '+windows' ,
    \ '.' : 'Win',
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

