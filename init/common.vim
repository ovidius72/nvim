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
set shortmess=aFc
set termguicolors
set timeout
set foldmethod=manual
set foldcolumn=1

" setlocal cursorcolumn
setlocal nowrap
syntax on
filetype plugin on
filetype indent on
set hidden
imap jj <Esc>
let mapleader=" "
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
let &t_ut=''
autocmd FileType qf setlocal wrap

" vim commentary for rego files.
autocmd FileType rego setlocal commentstring=#\ %s


" in insert mode delteting with ctrl-u or ctrl-w can be recovered.
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>


" save all in various modes
" nnoremap <c-s> :wa<CR>
" inoremap <c-s> <Esc>:wa<CR>a
" vnoremap <c-s> <Esc>:wa<CR>gv

command! PU PlugClean | PlugUpdate | PlugUpgrade|   " :PU updates/cleans plugins and vim-plug.
map <leader>feU :PU<cr>
map <leader>feI :PlugInstall<cr>

" set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
" set list
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

" vim-qick-scope
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff6f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

let g:qs_lazy_highlight = 1
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" let g:qs_accepted_chars = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':', ',', ';', '{', '}', '(', ')', '[', ']', '.', '/', '"', '|', '\', '$', '#', '_']


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
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_async = 1
let g:gitgutter_diff_args = '--ignore-all-space'
let g:gitgutter_grep_command = executable('rg') ? 'rg' : 'grep'
" let g:gitgutter_sign_added='┃'
" let g:gitgutter_sign_modified='┃'
" let g:gitgutter_sign_removed='◢'
" let g:gitgutter_sign_removed_first_line='◥'
" let g:gitgutter_sign_modified_removed='◢'

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
omap igh <Plug>(GitGutterTextObjectInnerPending)
omap agh <Plug>(GitGutterTextObjectOuterPending)
xmap igh <Plug>(GitGutterTextObjectInnerVisual)
xmap agh <Plug>(GitGutterTextObjectOuterVisual)
nmap <Leader>ggh <Plug>(GitGutterPreviewHunk)
nmap <Leader>ggn <Plug>(GitGutterNextHunk)
nmap <Leader>ggp <Plug>(GitGutterPrevHunk)
nmap <Leader>ggs <Plug>(GitGutterStageHunk)
nmap <Leader>ggu <Plug>(GitGutterUndoHunk)
nmap <Leader>' :pclose<CR>

"bufsurf
" nmap <F9> :BufSurfBack<CR>
" nmap <F10> :BufSurfForward<CR>
" vim-move mofifier key (default Alt)
let g:move_key_modifier = 'C'

" save all in various modes
nmap <leader>qq :qa<cr>
nmap <leader>qw :waq<cr>


"yank and move the curson to the last yanked line
vnoremap gy y']

" console.log wrapper
" Console log from insert mode; Puts focus inside parentheses

imap cll console.log();<Esc>==f(a
imap gll console.log();<Esc>==f(a"<Esc>pa", <Esc>a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap <silent><c-c><c-l> yogll<Esc>pviw
" Console log from normal mode, inserted on next line with word your on inside parentheses
" nmap <silent><c-c><c-l> yiwogll<Esc>pviw<Esc>
nmap <Leader>ol yiwogll<Esc>pviw<Esc>

nmap gcy Ygccp

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

function! s:noregexp(pattern) abort
  return '\V' . escape(a:pattern, '\')
endfunction

function! s:config() abort
  return {'converters': [function('s:noregexp')]}
endfunction

noremap <silent><expr> zz/ incsearch#go(<SID>config())
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zz <Plug>(incsearch-fuzzy-stay)

map <leader>z/ <Plug>(incsearch-fuzzy-/)
map <leader>z? <Plug>(incsearch-fuzzy-?)
map <leader>zz <Plug>(incsearch-fuzzy-stay)

map <leader>zs/ <Plug>(incsearch-fuzzyspell-/)
map <leader>zs? <Plug>(incsearch-fuzzyspell-?)
map <leader>zss <Plug>(incsearch-fuzzyspell-stay)

map <leader>zm/ <Plug>(incsearch-easymotion-/)
map <leader>zm? <Plug>(incsearch-easymotion-?)
map <leader>zmm <Plug>(incsearch-easymotion-stay)

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
" nnoremap <Leader>j i<cr><Esc>

" inoremap zm <c-w>_\|<c-w>\|
" voremap zm <c-w>_\|<c-w>\|
" nnoremap zo <c-w>=
" inoremap zo <c-w>=
" vnoremap zo <c-w>=
" nerdtree
map <leader>pt :NERDTreeToggle<CR>
map <leader>pf :NERDTreeFocus<CR>
map <leader>pn :NERDTreeFind<CR>

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
