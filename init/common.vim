set nocompatible
set encoding=UTF-8
set relativenumber
set number
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set title
set mouse=a
set cursorline
set cmdheight=1
set ignorecase
set shortmess=aFc
set termguicolors
set timeout
" setlocal cursorcolumn
syntax on
filetype plugin on
filetype indent on
set hidden
imap jj <Esc>
let mapleader=" "
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
autocmd FileType qf setlocal wrap
" highlight jsxAttrib cterm=italic
" highlight jsxTag cterm=italic
" highlight tsxTag cterm=italic
" highlight jsxElement cterm=italic
" highlight tsxElement cterm=italic
" highlight typescriptBlock cterm=italic
" highlight typescriptParenExp cterm=italic


augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.js set filetype=javascript
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
    au BufNewFile,BufRead *.tsx set filetype=typescript.tsx
    " au BufNewFile,BufRead *.ts set filetype=typescript.ts
    " au BufNewFile,BufRead *.* setlocal cursorcolumn
augroup END

" runtime macros/match.vim

" Highlight words that match the one under the cursor.
nnoremap <F2> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls!<CR>

" Replace word under the cursor.
nnoremap <Leader><Leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>



" Nuake
nnoremap <F4> :Nuake<CR>
inoremap <F4> <C-\><C-n>:Nuake<CR>
tnoremap <F4> <C-\><C-n>:Nuake<CR>

" *********** vim-which-key
" nnoremap <silent> <Leader> :<c-u>WhichKey '<Space>'<CR>
" " nnoremap <silent> <localleader> :WhichKey 'g'<CR>
" set timeoutlen=500

" " let g:which_key_map = {}
" let g:which_key_map['v'] = {
"     \ 'name' : '+windows' ,
"     \ 'w' : ['<C-W>w'     , 'other-window']          ,
"     \ 'd' : ['<C-W>c'     , 'delete-window']         ,
"     \ '-' : ['<C-W>s'     , 'split-window-below']    ,
"     \ '|' : ['<C-W>v'     , 'split-window-right']    ,
"     \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
"     \ 'h' : ['<C-W>h'     , 'window-left']           ,
"     \ 'j' : ['<C-W>j'     , 'window-below']          ,
"     \ 'l' : ['<C-W>l'     , 'window-right']          ,
"     \ 'k' : ['<C-W>k'     , 'window-up']             ,
"     \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
"     \ 'J' : ['resize +5'  , 'expand-window-below']   ,
"     \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
"     \ 'K' : ['resize -5'  , 'expand-window-up']      ,
"     \ '=' : ['<C-W>='     , 'balance-window']        ,
"     \ 's' : ['<C-W>s'     , 'split-window-below']    ,
"     \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
"     \ '?' : ['Windows'    , 'fzf-window']            ,
"     \ }

" *********** vim-clap
nmap <Leader><Leader>c :Clap<CR>
nmap <Leader>kb :Clap buffers<CR>
nmap <Leader>kc :Clap colors<CR>
nmap <Leader>kl :Clap blines<CR>
nmap <Leader>kf :Clap gfiles<CR>
nmap <Leader>kg :Clap grep<CR>
nmap <Leader>kh :Clap hist:<CR>
nmap <Leader>kw :Clap windows<CR>
nmap <Leader>kj :Clap jumps<CR>
nmap <Leader>km :Clap marks<CR>
nmap <Leader>kr :Clap registers<CR>
nmap <Leader>kt :Clap tags<CR>
nmap <Leader>ky :Clap yanks<CR>


" *********** vim-gitgutter
" autocmd! BufWritePost * GitGutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_async = 1
let g:gitgutter_diff_args = '--ignore-all-space'
let g:gitgutter_grep_command = executable('rg') ? 'rg' : 'grep'
let g:gitgutter_sign_added='┃'
let g:gitgutter_sign_modified='┃'
let g:gitgutter_sign_removed='◢'
let g:gitgutter_sign_removed_first_line='◥'
let g:gitgutter_sign_modified_removed='◢'

" let g:gitgutter_sign_added = ''
" let g:gitgutter_sign_removed = ''
" let g:gitgutter_sign_modified = ''
" let g:gitgutter_sign_modified_removed = ''
" let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1
highlight link GitGutterAddLineNr DiffAdd
highlight link GitGutterChangeLineNr DiffChange
highlight link GitGutterDeleteLineNr DiffDelete
highlight link GitGutterChangeDeleteLineNr SignColumn

nmap <Leader>gh :GitGutterPreviewHunk<CR>
nmap <Leader>gn :GitGutterNextHunk<CR>
nmap <Leader>gp :GitGutterPrevHunk<CR>
nmap <Leader>gc :pclose<CR>

"bufsurf
nmap <F9> :BufSurfBack<CR>
nmap <F10> :BufSurfForward<CR>
" vim-move mofifier key (default Alt)
let g:move_key_modifier = 'C'

"******** vim-motion"
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


" *************** inc serach
augroup vimrc-incsearch-highlight
 autocmd!
 autocmd CmdlineEnter /,\? :set hlsearch
 autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

" incserach-easymotion
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)

" " incsearch.vim x fuzzy x vim-easymotion
" function! s:config_easyfuzzymotion(...) abort
"   return extend(copy({
"   \   'converters': [incsearch#config#fuzzy#converter()],
"   \   'modules': [incsearch#config#easymotion#module()],
"   \   'keymap': {"\<CR>": '<Over>(easymotion)'},
"   \   'is_expr': 0,
"   \   'is_stay': 1
"   \ }), get(a:, 1, {}))
" endfunction

" noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())


noremap <leader>fh :set hlsearch!<CR>
" Tab navigation
nnoremap <silent> <leader>[ :tabprevious<cr>
nnoremap <silent> <leader>] :tabnext<cr>
nnoremap <silent> <leader>= :tabnew<cr>
nnoremap <silent> <leader>- :tabclose<cr>
" nnoremap <silent> <leader><bs> :exec 'set showtabline='.string(!&showtabline)<cr>

" zoom
noremap zm <c-w>_<c-w>\|
noremap zi <c-w>_ \| <c-w>\|
noremap zo <c-w>=


" put right side of the cursor to new line
" nnoremap <Leader>j i<cr><Esc>

" inoremap zm <c-w>_\|<c-w>\|
" voremap zm <c-w>_\|<c-w>\|
" nnoremap zo <c-w>=
" inoremap zo <c-w>=
" vnoremap zo <c-w>=
" nerdtree
map <leader>nt :NERDTreeToggle<CR>
map <leader>no :NERDTreeFocus<CR>
map <leader>nf :NERDTreeFind<CR>

let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" let g:NERDTreeColorMapCustom = {
"     \ "Modified"  : "#528AB3",  
"     \ "Staged"    : "#538B54",  
"     \ "Untracked" : "#BE5849",  
"     \ "Dirty"     : "#299999",  
"     \ "Clean"     : "#87939A"   
"     \ }

let g:NERDTreeColorMapCustom = {
    \ "Modified"  : ["#528AB3", "NONE", "NONE", "NONE"],  
    \ "Staged"    : ["#538B54", "NONE", "NONE", "NONE"],  
    \ "Untracked" : ["#BE5849", "NONE", "NONE", "NONE"],  
    \ "Dirty"     : ["#299999", "NONE", "NONE", "NONE"],  
    \ "Clean"     : ["#87939A", "NONE", "NONE", "NONE"]   
    \ }

" INCSEARCH
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)





" TAGBAR
" let g:tagbar_type_typescript = {
"   \ 'ctagsbin' : 'tstags',
"   \ 'ctagsargs' : '-f-',
"   \ 'kinds': [
"     \ 'e:enums:0:1',
"     \ 'f:function:0:1',
"     \ 't:typealias:0:1',
"     \ 'M:Module:0:1',
"     \ 'I:import:0:1',
"     \ 'i:interface:0:1',
"     \ 'C:class:0:1',
"     \ 'm:method:0:1',
"     \ 'p:property:0:1',
"     \ 'v:variable:0:1',
"     \ 'c:const:0:1',
"   \ ],
"   \ 'sort' : 0
" \ }

" Emmet
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \  'typescript.jsx' : {
    \      'extends' : 'tsx',
    \  },
  \}

" Highlight the word under cursor
" autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" Javascript
" let g:polyglot_disabled = ['jsx', 'tsx']
" let g:polyglot_disabled = ['typescript']

let g:vim_jsx_pretty_colorful_config = 1
let g:vim_jsx_pretty_disable_tsx = 0
let g:vim_jsx_pretty_disable_ts = 1
" let g:vim_jsx_pretty_highlight_close_tag = 1
" let g:javascript_plugin_jsdoc = 1
" let g:jsx_ext_required = 0

" Indentline
" let g:indentLine_color_gui = '#333333'
" let g:indentLine_color_gui = '#DFE0DF'
let g:indentLine_enabled = 1
" let g:indentLine_concealcursor = 1
let g:indentLine_char = '┆'
let g:indentLine_faster = 1
" let g:neoterm_size = 9
" let g:neoterm_autoinsert = 0
" let g:neoterm_autoscroll = 1
"endif

" Floating Term
let s:float_term_border_win = 0
let s:float_term_win = 0
function! FloatTerm(...)
  " Configuration
  let height = float2nr((&lines - 2) * 0.6)
  let row = float2nr((&lines - height) / 2)
  let width = float2nr(&columns * 0.6)
  let col = float2nr((&columns - width) / 2)
  " Border Window
  let border_opts = {
        \ 'relative': 'editor',
        \ 'row': row - 1,
        \ 'col': col - 2,
        \ 'width': width + 4,
        \ 'height': height + 2,
        \ 'style': 'minimal'
        \ }
  " Terminal Window
  let opts = {
        \ 'relative': 'editor',
        \ 'row': row,
        \ 'col': col,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }
  let top = "╭" . repeat("─", width + 2) . "╮"
  let mid = "│" . repeat(" ", width + 2) . "│"
  let bot = "╰" . repeat("─", width + 2) . "╯"
  let lines = [top] + repeat([mid], height) + [bot]
  let bbuf = nvim_create_buf(v:false, v:true)
  call nvim_buf_set_lines(bbuf, 0, -1, v:true, lines)
  let s:float_term_border_win = nvim_open_win(bbuf, v:true, border_opts)
  let buf = nvim_create_buf(v:false, v:true)
  let s:float_term_win = nvim_open_win(buf, v:true, opts)
  " Styling
  call setwinvar(s:float_term_border_win, '&winhl', 'Normal:Normal')
  call setwinvar(s:float_term_win, '&winhl', 'Normal:Normal')
  if a:0 == 0
    terminal
  else
    call termopen(a:1)
  endif
  startinsert
  " Close border window when terminal window close
  autocmd TermClose * ++once :bd! | call nvim_win_close(s:float_term_border_win, v:true)
endfunction

" Open terminal
nnoremap <Leader>at :call FloatTerm()<CR>
" Open node REPL
nnoremap <Leader>an :call FloatTerm('"node"')<CR>
" Open tig, yes TIG, A FLOATING TIGGGG!!!!!!
nnoremap <Leader>ag :call FloatTerm('"tig"')<CR>

" Show the style name of thing under the cursor
" Shamelessly taken from https://github.com/tpope/vim-scriptease
function! FaceNames(...) abort
  if a:0
    let [line, col] = [a:1, a:2]
  else
    let [line, col] = [line('.'), col('.')]
  endif
  return reverse(map(synstack(line, col), 'synIDattr(v:val,"name")'))
endfunction

function! DescribeFace(count) abort
  if a:count
    let name = get(FaceNames(), a:count-1, '')
    if name !=# ''
      return 'syntax list '.name
    endif
  else
    echo join(FaceNames(), ' ')
  endif
  return ''
endfunction

nnoremap zs :<C-U>exe DescribeFace(v:count)<CR>
