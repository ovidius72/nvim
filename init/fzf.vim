" *************** fzf
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
" let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }
" let g:fzf_layout = { 'window': '10split enew' }

" Centered floating window with rounded borders.
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Todo', 'rounded': v:true } }
" bottom aligned floating not pushing screen. 
let g:fzf_layout = {
      \'window': {
        \ 'width': 1, 
        \ 'height': 0.4,
        \ 'yoffset': 1,
        \ 'border': 'horizontal' 
      \}
    \}

" let g:animate#duration = 200.0
" let g:animate#easing_func = 'animate#ease_linear'
" let g:fzf_layout = {
"  \ 'window': 'new | wincmd J | resize 1 | call animate#window_percent_height(0.5)'
" \ }

" Customize fzf colors to match your color scheme
" let g:fzf_colors =
"       \ { 'fg':      ['fg', 'Normal'],
"       \ 'bg':      ['bg', 'Normal'],
"       \ 'hl':      ['fg', 'Comment'],
"       \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"       \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"       \ 'hl+':     ['fg', 'Statement'],
"       \ 'info':    ['fg', 'PreProc'],
"       \ 'border':  ['fg', 'Normal'],
"       \ 'prompt':  ['fg', 'Conditional'],
"       \ 'pointer': ['fg', 'Exception'],
"       \ 'marker':  ['fg', 'Keyword'],
"       \ 'spinner': ['fg', 'Label'],
"       \ 'header':  ['fg', 'Comment'] }
  

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" Mapping selecting mappings
" nmap <leader>Hm <plug>(fzf-maps-n)
" xmap <leader>Hm <plug>(fzf-maps-x)
" omap <leader>Hm <plug>(fzf-maps-o)


" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" function! s:fzf_statusline()
"   " Override statusline as you like
"   highlight fzf1 ctermfg=161 ctermbg=251
"   highlight fzf2 ctermfg=23 ctermbg=251
"   highlight fzf3 ctermfg=237 ctermbg=251
"   setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
" endfunction

" autocmd! User FzfStatusLine call <SID>fzf_statusline()

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" nmap <Leader>ph :History<CR>
" nmap <Leader>hw :Windows<CR>
" nmap <Leader>hcb :Commits<CR>
" nmap <Leader>hf :Files<CR>
nmap <Leader>Hc :Colors<CR>
nmap <Leader>Ht :Helptags<CR>
nmap <Leader>Hf :Filetypes<CR>
nmap <leader>Hm :Maps<CR>
nmap <leader>Hk :Commands<CR>
nmap <Leader>th :Helptags<CR>

" Marks keybinding
nmap <Leader>mm :Marks<CR>

" Files keybinding
map <Leader>ff :Files<cr>
map <Leader>fo :GFiles<cr>
map <Leader>fg :GFiles?<cr>
map <Leader>fr :History<cr>

" Git keybinding
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gS :GFiles?<CR>
nmap <Leader>gc :Commits<CR>
nmap <Leader>gf :GFiles<CR>
nmap <Leader>gP :Gpush<CR>
nmap <Leader>gF :call fzf#vim#gitfiles('', fzf#vim#with_preview('right'))<CR>

" Project keybinding
nmap <Leader>ph :Files<CR>
nmap <Leader>tt :Tags<CR>
nmap <Leader>pg :GFiles<CR>
nmap <Leader>pz :Tags<CR>
nmap <Leader>pa :Ag<CR>
"
" Buffers keybinding
nmap <Leader>bb :Buffers<CR>
nmap <Leader>bn :bn<CR>
nmap <Leader>bp :bp<CR>
" nmap <Leader>bd :bp<CR>:bd#<CR>
nmap <Leader>bd :Bclose<CR>
nmap <Leader>bk :Bclose!<CR>
nmap <Leader>tb :BTags<CR>
nmap <Leader>bt :BTags<CR>

" Search keybinding
" current buffer lines
nmap <Leader>ss :BLines<CR>
" loaded buffers lines
nmap <Leader>sl :Lines<CR>
" Windows
nmap <Leader>sw :Windows<CR>
" Buffer Tags
nmap <Leader>st :BTags<CR>
" Rg Preview
nmap <Leader>sr :Rg<CR>
" Rg select
nmap <Leader>sR :Rg!<CR>

" RG Fuzzy
nmap <Leader>sf :RG<CR>
nmap <Leader>sF :RG!<CR>
" git grep
nmap <Leader>sg :GGrep<CR> 
" search history
nmap <Leader>sh :History/<CR>
" command history
nmap <Leader>sc :History:<CR>
nmap <Leader>sa :Ag<CR>
nmap <Leader>sA :Ag!<CR>


" neovim config
command! -bang NeovimConfigFiles call fzf#vim#files('~/.config/nvim', <bang>0)
nmap <Leader>fef :NeovimConfigFiles<CR>

autocmd! FileType fzf
autocmd  FileType fzf set noshowmode noruler nonu

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--info=inline']}), <bang>0)

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)


command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

command! -nargs=* Ag2 call fzf#run({
\ 'source':  printf('ag --nogroup --column --color "%s"',
\                   escape(empty(<q-args>) ? '^(?=.)' : <q-args>, '"\')),
\ 'sink*':    function('<sid>ag_handler'),
\ 'options': '--ansi --expect=ctrl-t,ctrl-v,ctrl-x --delimiter : --nth 4.. '.
\            '--multi --bind=ctrl-a:select-all,ctrl-d:deselect-all '.
\            '--color hl:68,hl+:110',
\ 'down':    '50%'
\ })

command! -bang -nargs=* AGP
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

nnoremap <silent> <Leader>HC :call fzf#run({
\   'source':
\     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
\         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
\   'sink':    'colo',
\   'options': '+m',
\   'left':    50
\ })<CR>

function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader>br :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>

" if has('nvim') && exists('&winblend') && &termguicolors
"   set winblend=0

"   hi NormalFloat guibg=None
"   if exists('g:fzf_colors.bg')
"     call remove(g:fzf_colors, 'bg')
"   endif

"   if stridx($FZF_DEFAULT_OPTS, '--border') == -1
"     let $FZF_DEFAULT_OPTS .= ' --border'
"   endif

"   function! FloatingFZF()
"     let width = float2nr(&columns * 0.8)
"     let height = float2nr(&lines * 0.6)
"     let opts = { 'relative': 'editor',
"                \ 'row': (&lines - height) / 2,
"                \ 'col': (&columns - width) / 2,
"                \ 'width': width,
"                \ 'height': height }

"     call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
"   endfunction

"   let g:fzf_layout = { 'window': 'call FloatingFZF()' }
" endif
