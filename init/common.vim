set nocompatible
set encoding=UTF-8
set relativenumber
set number
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set title
set mouse=a
set cursorline
set cmdheight=1
set noshowmode
set ignorecase
set smartcase
set shortmess=aFc
set termguicolors
set timeout
set foldmethod=manual
set foldcolumn=1
set spell!
set spelllang=en_us,it
set matchpairs+=<:>
set inccommand=nosplit
" set inccommand=""

" disable comment on new line.
set formatoptions-=cro

" setlocal cursorcolumn
setlocal nowrap
set nowrap
syntax on
filetype plugin on
filetype indent on
set hidden
imap jj <Esc>
let mapleader=" "
" enable italis in tmux
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
let &t_ut=''

autocmd FileType qf setlocal nowrap

" vim commentary for rego files.
autocmd FileType rego setlocal commentstring=#\ %s
" autocmd BufEnter * :set nu relativenumber 
" autocmd BufLeave * :set nu norelativenumber

au BufNewFile,BufRead *.module set filetype=php

augroup PHP
  autocmd!
  autocmd FileType php setlocal iskeyword+=$
augroup END

" in insert mode delteting with ctrl-u or ctrl-w can be recovered.
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

"copy to clipboard
nnoremap <leader>y "+y
nnoremap <leader>Y "+p
" move among windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
"use jj to escaper from term 
" tnoremap jj <C-\><C-n> 

"Enable Minimap
let g:minimap_auto_start = 0

command! PU PlugClean | PlugUpdate | PlugUpgrade|   " :PU updates/cleans plugins and vim-plug.
map <leader>feU :PU<cr>
map <leader>feI :PlugInstall<cr>

set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
map <leader>hl :set list!<cr>
" allow toggling between local and default mode
" set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
function TabToggle()
  if &expandtab
    set tabstop=4
    set shiftwidth=4
    set softtabstop=0
    set noexpandtab
    echo 'Tab set'
  else
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set smarttab
    set autoindent
    set expandtab
    echo 'Space set'
  endif
endfunction
map <Leader>ht mz:execute TabToggle()<Cr>'z
map <Leader>hr :%retab!<CR>
" highlight jsxAttrib cterm=italic
" highlight jsxTag cterm=italic
" highlight tsxTag cterm=italic
" highlight jsxElement cterm=italic
" highlight tsxElement cterm=italic
" highlight typescriptBlock cterm=italic
" highlight typescriptParenExp cterm=italic

" remap s to Nop for vim-sandwitch
" extends surround keybings for sandwich
" use cl to replace s
" nmap s <Nop>
" xmap s <Nop>
" nmap ss cl



" autocmd FileType cpp set makeprg=clang++\ -std=c++2a\ -o\ '%<'\ '%'

" function! CreateCenteredFloatingWindow()
"     let width = min([&columns - 4, max([80, &columns - 20])])
"     let height = min([&lines - 4, max([20, &lines - 10])])
"     let top = ((&lines - height) / 2) - 1
"     let left = (&columns - width) / 2
"     let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

"     let top = "╭" . repeat("─", width - 2) . "╮"
"     let mid = "│" . repeat(" ", width - 2) . "│"
"     let bot = "╰" . repeat("─", width - 2) . "╯"
"     let lines = [top] + repeat([mid], height - 2) + [bot]
"     let s:buf = nvim_create_buf(v:false, v:true)
"     call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
"     call nvim_open_win(s:buf, v:true, opts)
"     set winhl=Normal:Floating
"     let opts.row += 1
"     let opts.height -= 2
"     let opts.col += 2
"     let opts.width -= 4
"     call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
"     au BufWipeout <buffer> exe 'bw '.s:buf
" endfunction

" let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }

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
nnoremap <leader>hh :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls!<CR>

" Replace word under the cursor.
nnoremap <Leader>xr :%s/\<<C-r><C-w>\>//g<Left><Left>



" Nuake
nnoremap <leader>an :Nuake<CR>
inoremap <F7> <C-\><C-n>:Nuake<CR>
tnoremap <F7> <C-\><C-n>:Nuake<CR>


" let g:tmux_navigator_no_mappings = 1
" nnoremap <silent> <C-w>h :TmuxNavigateLeft<cr>
" nnoremap <silent> <C-w>j :TmuxNavigateDown<cr>
" nnoremap <silent> <C-w>k :TmuxNavigateUp<cr>
" nnoremap <silent> <C-w>l :TmuxNavigateRight<cr>
" nnoremap <silent> <c-w><c-w> :TmuxNavigatePrevious<cr>
" nnoremap <silent> <c-a><c-h> :TmuxNavigateLeft<cr>
" nnoremap <silent> <c-a><c-j> :TmuxNavigateDown<cr>
" nnoremap <silent> <c-a><c-k> :TmuxNavigateUp<cr>
" nnoremap <silent> <c-a><c-l> :TmuxNavigateRight<cr>

" *********** vim-gitgutter
" autocmd! BufWritePost * GitGutter
" let g:gitgutter_override_sign_column_highlight = 0
" let g:gitgutter_async = 1
" let g:gitgutter_diff_args = '--ignore-all-space'
" let g:gitgutter_grep_command = executable('rg') ? 'rg' : 'grep'
" let g:gitgutter_sign_added='┃'
" let g:gitgutter_sign_modified='┃'
" let g:gitgutter_sign_removed='◢'
" let g:gitgutter_sign_removed_first_line='◥'
" let g:gitgutter_sign_modified_removed='◢'
" let g:gitgutter_highlight_lines = 1
" let g:gitgutter_highlight_linenrs = 1
" let g:gitgutter_preview_win_floating = 1
" au CursorMoved * if gitgutter#hunk#in_hunk(line(".")) | GitGutterPreviewHunk | else | pclose | endif

" ****************** SIGNIFY *************
let g:signify_disable_by_default = 0


" omap ic <Plug>(signify-motion-inner-pending)
" xmap ic <Plug>(signify-motion-outer-visual)
" omap ac <Plug>(signify-motion-outer-pending)
" xmap ia <Plug>(signify-motion-outer-visual)
" nmap <silent>gh :SignifyHunkDiff<CR>
" nmap <silent>gb :SignifyHunkUndo<CR>
" nmap <Leader>ggn <Plug>(signify-next-hunk)
" nmap <Leader>ggp <Plug>(signify-prev-hunk)
" nmap <Leader>ggs <Plug>(GitGutterStageHunk)
" nmap <Leader>ggu :SignifyHunkUndo<CR>
" nmap <Leader>' :pclose<CR>
"
nmap <leader>gl :Gclog<cr>
nmap <leader>gd :Gdiffsplit<cr>
nmap <leader>gD :Ghdiffsplit<cr>

" let g:gitgutter_sign_added = ''
" let g:gitgutter_sign_removed = ''
" let g:gitgutter_sign_modified = ''
" let g:gitgutter_sign_modified_removed = ''
" let g:gitgutter_highlight_lines = 1
" let g:gitgutter_highlight_linenrs = 1
" highlight link GitGutterAddLineNr DiffAdd
" highlight link GitGutterChangeLineNr DiffChange
" highlight link GitGutterDeleteLineNr DiffDelete
" highlight link GitGutterChangeDeleteLineNr SignColumn

" let g:gitgutter_override_sign_column_highlight = 0
" omap igh <Plug>(GitGutterTextObjectInnerPending)
" omap agh <Plug>(GitGutterTextObjectOuterPending)
" xmap igh <Plug>(GitGutterTextObjectInnerVisual)
" xmap agh <Plug>(GitGutterTextObjectOuterVisual)
" nmap gh <Plug>(GitGutterPreviewHunk)
" nmap <Leader>ggn <Plug>(GitGutterNextHunk)
" nmap <Leader>ggp <Plug>(GitGutterPrevHunk)
" nmap <Leader>ggs <Plug>(GitGutterStageHunk)
" nmap <Leader>ggu <Plug>(GitGutterUndoHunk)
" nmap <Leader>' :pclose<CR>

" vim-move mofifier key (default Alt)
let g:move_key_modifier = 'tab'
vmap <M-s> <Plug>MoveBlockDown
vmap <M-w> <Plug>MoveBlockUp
vmap <M-a> <Plug>MoveBlockLeft
vmap <M-d> <Plug>MoveBlockRight

nmap <M-s> <Plug>MoveLineDown
nmap <M-w> <Plug>MoveLineUp
nmap <M-a> <Plug>MoveCharLeft
nmap <M-d> <Plug>MoveCharRight

" save all in various modes
nmap <leader>qq :qa<cr>
nmap <leader>qw :waq<cr>


" buffer
map <Leader>be :source %<cr>
map <Leader>hz :set spell!<cr>
"yank and move the curson to the last yanked line
vnoremap gy y']
" console.log wrapper
" Console log from insert mode; Puts focus inside parentheses

imap _cll console.log();<Esc>==F(a
imap _gll console.log();<Esc>==F(a'<Esc>pa', <Esc>a
" Console log from visual mode on next line, puts visual selection inside parentheses
" vmap <silent><c-c><c-l> yogll<Esc>pviw
" Console log from normal mode, inserted on next line with word your on inside parentheses
" nmap <silent><c-c><c-l> yiwogll<Esc>pviw<Esc>
nmap <Leader>ol yiwo_gll<Esc>pviw<Esc>
vmap <Leader>ol y<Esc>o_gll<Esc>pviw<Esc>F,vt)

function! PrintLog()
  let l:fType = expand("%:e")
  echo l:fType
  if l:fType == 'js'
    execute "normal yiwo_gll"
    normal pviw
  elseif l:fType== 'py'
    execute "normal yiwoprint()"
    normal ==F(
    normal a"
    normal pa", 
    normal pviw
  elseif l:fType == 'rs'
    execute "normal yiwoprintln!();"
    normal ==F(
    normal a"
    normal pa {}", 
    normal pviw
  elseif l:fType == 'java'
    execute "normal yiwoSystem.out.println();"
    normal ==F(
    normal a"
    normal pa", 
    normal pviw
  endif
endfunction

map <leader>op :call PrintLog()<CR>

" comment and yank to the next line
nmap gcy Ygccp
" nmap cgc <Plug>ChangeCommentary
nmap <leader>xcc gc
nmap <leader>xcy gcy

" *************** inc serach
augroup vimrc-incsearch-highlight
 autocmd!
 autocmd CmdlineEnter /,\? :set hlsearch
 autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

" incserach-easymotion
" map z/ <Plug>(incsearch-easymotion-/)
" map z? <Plug>(incsearch-easymotion-?)
" map zg/ <Plug>(incsearch-easymotion-stay)

function! s:noregexp(pattern) abort
  return '\V' . escape(a:pattern, '\')
endfunction

function! s:config() abort
  return {'converters': [function('s:noregexp')]}
endfunction

" noremap <silent><expr> <space>/ incsearch#go(<SID>config())
" map z/ <Plug>(incsearch-fuzzy-/)
" map z? <Plug>(incsearch-fuzzy-?)
" map z<space> <Plug>(incsearch-fuzzy-stay)

" map <leader>z/ <Plug>(incsearch-forward)
" map <leader>z? <Plug>(incsearch-backward)
" map <leader>zz <Plug>(incsearch-stay)
" map <leader>zf/ <Plug>(incsearch-fuzzy-/)
" map <leader>zf? <Plug>(incsearch-fuzzy-?)
" map <leader>zff <Plug>(incsearch-fuzzy-stay)

" map <leader>zs/ <Plug>(incsearch-fuzzyspell-/)
" map <leader>zs? <Plug>(incsearch-fuzzyspell-?)
" map <leader>zss <Plug>(incsearch-fuzzyspell-stay)

" map <leader>zm/ <Plug>(incsearch-easymotion-/)
" map <leader>zm? <Plug>(incsearch-easymotion-?)
" map <leader>zmm <Plug>(incsearch-easymotion-stay)

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


let g:splitjoin_split_mapping ='<space>xs'
let g:splitjoin_join_mapping ='<space>xj'
nmap <leader>xj :SplitjoinJoin<CR>
nmap <leader>xs :SplitjoinSplit<CR>

noremap <leader>hs :set hlsearch!<CR>
" Tab navigation
nnoremap <silent> <leader>Tp :tabprevious<cr>
nnoremap <silent> <leader>Tn :tabnext<cr>
nnoremap <silent> <leader>TN :tabnew<cr>
nnoremap <silent> <leader>Tc :tabclose<cr>
" nnoremap <silent> <leader><bs> :exec 'set showtabline='.string(!&showtabline)<cr>

" zoom
noremap <leader>wmm <c-w>_<c-w>\|
noremap <leader>wmi <c-w>_ \| <c-w>\|
noremap <leader>wmo <c-w>=


" put right side of the cursor to new line
nnoremap <Leader>xo i<cr><Esc>


" inoremap zm <c-w>_\|<c-w>\|
" voremap zm <c-w>_\|<c-w>\|
" nnoremap zo <c-w>=
" inoremap zo <c-w>=
" vnoremap zo <c-w>=

" INCSEARCH
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlsearch
set hlsearch
" let g:incsearch#auto_nohlsearch = 1
" map n  <Plug>(incsearch-nohl-n)
" map N  <Plug>(incsearch-nohl-N)
" map *  <Plug>(incsearch-nohl-*)
" map #  <Plug>(incsearch-nohl-#)
" map g* <Plug>(incsearch-nohl-g*)
" map g# <Plug>(incsearch-nohl-g#)





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
let g:indentLine_enabled = 0
" let g:indentLine_concealcursor = 1
" let g:indentLine_char = '┆'
" let g:indentLine_faster = 1
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
nnoremap <Leader>af :call FloatTerm()<CR>
" Open node REPL
nnoremap <Leader>ae :call FloatTerm('"node"')<CR>
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

nnoremap <leader>Hz :<C-U>exe DescribeFace(v:count)<CR>
" open last closed buffer
function! OpenLastClosed()
    let last_buf = bufname('#')

    if empty(last_buf)
        echo "No recently closed buffer found"
        return
    endif
    let result = input("Open ". last_buf . " in (n)ormal (v)split, (t)ab or (s)plit ? (n/v/t/s) : ")
    if empty(result) || (result !=# 'v' && result !=# 't' && result !=# 's' && result !=# 'n')
        return
    endif
    if result ==# 't'
        execute 'tabnew'
    elseif result ==# 'v'
        execute "vsplit"
    elseif result ==# 's'
        execute "split"
    endif
    execute 'b ' . last_buf
endfunction
map <Leader>bu :call OpenLastClosed()<CR>
