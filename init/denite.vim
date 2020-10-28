" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--color', '--nogroup', '-g'])
call denite#custom#option('default', 'prompt', 'λ')
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep', '--heading', '-S'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/*', '*.pyc', 'node_modules/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/', '*.png'])

"" -u flag to unrestrict (see ag docs)
"" call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-u', '-g', ''])
"" call denite#custom#alias('source', 'file_rec/git', 'file_rec')
"" call denite#custom#var('file_rec/git', 'command',['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

"" optional - but recommended - see below
let g:fruzzy#usenative = 1

"" When there's no input, fruzzy can sort entries based on how similar they are to the current buffer
"" For ex: if you're on /path/to/somefile.h, then on opening denite, /path/to/somefile.cpp
"" would appear on the top of the list.
"" Useful if you're bouncing a lot between similar files.
"" To turn off this behavior, set the variable below  to 0

" "let g:fruzzy#sortonempty = 1 " default value
"" tell denite to use this matcher by default for all sources
" call denite#custom#source('_', 'matchers', ['matcher/fruzzy'])


"" Mappings
"nmap <leader>df :Denite -start-filter file/rec<CR>
"nmap <leader>db :Denite buffer<CR>
"nnoremap <leader>dd :Denite grep<CR>
"" denite file search (c-p uses gitignore, c-o looks at everything)
"map <leader>dp :DeniteProjectDir -buffer-name=git -direction=top file_rec/git<CR>
"map <leader>do :DeniteProjectDir -buffer-name=files -direction=top file_rec<CR>


" === Denite setup ==="
" Use ripgrep for searching current directory for files
" By default, ripgrep will respect rules in .gitignore
"   --files: Print each file that would be searched (but don't search)
"   --glob:  Include or exclues files for searching that match the given glob
"            (aka ignore .git files)
"
try
call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])

" Use ripgrep in place of "grep"
call denite#custom#var('grep', 'command', ['rg'])

" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

" Recommended defaults for ripgrep via Denite docs
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Remove date from buffer list
call denite#custom#var('buffer', 'date_format', '')

" Custom options for Denite
"   auto_resize             - Auto resize the Denite window height automatically.
"   prompt                  - Customize denite prompt
"   direction               - Specify Denite window direction as directly below current pane
"   winminheight            - Specify min height for Denite window
"   highlight_mode_insert   - Specify h1-CursorLine in insert mode
"   prompt_highlight        - Specify color of prompt
"   highlight_matched_char  - Matched characters highlight
"   highlight_matched_range - matched range highlight
let s:denite_options = {'default' : {
\ 'start_filter': 1,
\ 'auto_resize': 1,
\ 'source_names': 'short',
\ 'prompt': 'λ:',
\ 'statusline': 0,
\ 'winrow': 1,
\ 'vertical_preview': 1
\ }}

" \ 'split': 'floating',
" \ 'highlight_matched_char': 'WildMenu',
" \ 'highlight_matched_range': 'Visual',
" \ 'highlight_window_background': 'Visual',
" \ 'highlight_filter_background': 'StatusLine',
" \ 'highlight_prompt': 'StatusLine',
"
" Loop through denite options and enable them
function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction

call s:profile(s:denite_options)
catch
  echo 'Denite not installed. It should work after running :PlugInstall'
endtry

" === Denite shorcuts === "
"   ;         - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
" nmap ; :Denite buffer<CR>
nmap <leader>dt :Denite buffer file/rec<CR>
nnoremap <leader>dg :<C-u>Denite grep:. -no-empty<CR>
nnoremap <leader>dj :<C-u>DeniteCursorWord grep:.<CR>

" Define mappings while in 'filter' mode
"   <C-o>         - Switch to normal mode inside of search results
"   <Esc>         - Exit denite window in any mode
"   <CR>          - Open currently selected file in any mode
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  inoremap <silent><buffer> <C-j> <Esc>
      \:call denite#move_to_parent()<CR>
      \:call cursor(line('.')+1,0)<CR>
      \:call denite#move_to_filter()<CR>A

  inoremap <silent><buffer> <C-k> <Esc>
      \:call denite#move_to_parent()<CR>
      \:call cursor(line('.')-1,0)<CR>
      \:call denite#move_to_filter()<CR>A

  imap <silent><buffer> <C-o>
  \ <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  inoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  inoremap <silent><buffer> <Down>
  \ <Esc><C-w>p:call cursor(line('.')+1,0)<CR><C-w>pA
  inoremap <silent><buffer> <Up>
  \ <Esc><C-w>p:call cursor(line('.')-1,0)<CR><C-w>pA
endfunction

" Define mappings while in denite window
"   <CR>        - Opens currently selected file
"   q or <Esc>  - Quit Denite window
"   d           - Delete currenly selected file
"   p           - Preview currently selected file
"   <C-o> or i  - Switch to insert mode inside of filter prompt
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-o>
  \ denite#do_map('open_filter_buffer')
endfunction





""defx
"autocmd FileType defx call s:defx_my_settings()
"function! s:defx_my_settings() abort
"  " Define mappings
"  nnoremap <silent><buffer><expr> <CR>
"  \ defx#do_action('open')
"  nnoremap <silent><buffer><expr> c
"  \ defx#do_action('copy')
"  nnoremap <silent><buffer><expr> m
"  \ defx#do_action('move')
"  nnoremap <silent><buffer><expr> p
"  \ defx#do_action('paste')
"  nnoremap <silent><buffer><expr> o
"  \ defx#do_action('open')
"  nnoremap <silent><buffer><expr> E
"  \ defx#do_action('open', 'vsplit')
"  nnoremap <silent><buffer><expr> P
"  \ defx#do_action('preview')
"  nnoremap <silent><buffer><expr> l
"  \ defx#do_action('open_tree', 'toggle')
"  nnoremap <silent><buffer><expr> K
"  \ defx#do_action('new_directory')
"  nnoremap <silent><buffer><expr> N
"  \ defx#do_action('new_file')
"  nnoremap <silent><buffer><expr> M
"  \ defx#do_action('new_multiple_files')
"  nnoremap <silent><buffer><expr> C
"  \ defx#do_action('toggle_columns',
"  \                'mark:indent:icon:filename:type:size:time')
"  nnoremap <silent><buffer><expr> S
"  \ defx#do_action('toggle_sort', 'time')
"  nnoremap <silent><buffer><expr> d
"  \ defx#do_action('remove')
"  nnoremap <silent><buffer><expr> r
"  \ defx#do_action('rename')
"  nnoremap <silent><buffer><expr> !
"  \ defx#do_action('execute_command')
"  nnoremap <silent><buffer><expr> x
"  \ defx#do_action('execute_system')
"  nnoremap <silent><buffer><expr> yy
"  \ defx#do_action('yank_path')
"  nnoremap <silent><buffer><expr> .
"  \ defx#do_action('toggle_ignored_files')
"  nnoremap <silent><buffer><expr> ;
"  \ defx#do_action('repeat')
"  nnoremap <silent><buffer><expr> h
"  \ defx#do_action('close_tree')
"  " \ defx#do_action('cd', ['..'])
"  nnoremap <silent><buffer><expr> ~
"  \ defx#do_action('cd')
"  nnoremap <silent><buffer><expr> q
"  \ defx#do_action('quit')
"  nnoremap <silent><buffer><expr> <Space>
"  \ defx#do_action('toggle_select') . 'j'
"  nnoremap <silent><buffer><expr> *
"  \ defx#do_action('toggle_select_all')
"  nnoremap <silent><buffer><expr> j
"  \ line('.') == line('$') ? 'gg' : 'j'
"  nnoremap <silent><buffer><expr> k
"  \ line('.') == 1 ? 'G' : 'k'
"  nnoremap <silent><buffer><expr> R
"  \ defx#do_action('redraw')
"  nnoremap <silent><buffer><expr> <C-g>
"  \ defx#do_action('print')
"  nnoremap <silent><buffer><expr> cd
"  \ defx#do_action('change_vim_cwd')
"  nnoremap <buffer><nowait><C-l> :wincmd p<CR>
"  nnoremap <buffer><nowait><leader>] :wincmd p<CR>
"endfunction

"let g:defx_icons_enable_syntax_highlight = 1
"let g:defx_icons_column_length = 1
"let g:defx_icons_directory_icon = ''
"let g:defx_icons_mark_icon = '*'
"let g:defx_icons_copy_icon = ''
"let g:defx_icons_move_icon = ''
"let g:defx_icons_parent_icon = ''
"let g:defx_icons_default_icon = ''
"let g:defx_icons_directory_symlink_icon = ''
"" Options below are applicable only when using "tree" feature
"let g:defx_icons_root_opened_tree_icon = ''
"let g:defx_icons_nested_opened_tree_icon = ''
"let g:defx_icons_nested_closed_tree_icon = ''


"" nnoremap <leader>[ :Defx -split=vertical -winwidth=40 -direction=topleft -toggle -columns=icons:indent:filename:type<CR>
"" nnoremap <leader>] :Defx -split=vertical -winwidth=40 -direction=topleft -focus -columns=icons:indent:filename:type<CR>



" " :h denite.txt
" " ---
" " Problems? https://github.com/Shougo/denite.nvim/issues

" " Don't reload Denite twice (on vimrc reload)
" if exists('*denite#start')
" 	finish
" endif

" " Denite general settings
" call denite#custom#option('_', {
" 	\ 'prompt': '❯',
" 	\ 'start_filter': v:true,
" 	\ 'smartcase': v:true,
" 	\ 'source_names': 'short',
" 	\ 'highlight_preview_line': 'CursorColumn',
" 	\ 'max_candidate_width': 512,
" 	\ 'max_dynamic_update_candidates': 50000,
" 	\ })

" " Use Neovim's floating window
" " if has('nvim-0.4')
" " 	call denite#custom#option('_', {
" " 		\ 'split': 'floating',
" " 		\ 'filter_split_direction': 'floating',
" " 		\ 'floating_preview': v:true,
" " 		\ 'preview_height': &lines / 3,
" " 		\ 'preview_width': &columns / 2 - 4,
" " 		\ 'match_highlight': v:false,
" " 		\ 'highlight_filter_background': 'NormalFloat',
" " 		\ 'highlight_matched_char': 'CursorLineNr',
" " 		\ 'highlight_matched_range': 'Comment',
" " 		\ })
" " else
" " 	call denite#custom#option('_', {
" " 		\ 'vertical_preview': v:true,
" " 		\ 'preview_width': &columns / 2,
" " 		\ })
" " endif

" " Interactive grep search
" call denite#custom#var('grep', 'min_interactive_pattern', 2)
" call denite#custom#source('grep', 'args', ['', '', '!'])

" " Allow customizable window positions: top, bottom, center (default)
" function! s:denite_resize(position)
" 	if a:position ==# 'top'
" 		call denite#custom#option('_', {
" 			\ 'winwidth': &columns - 1,
" 			\ 'winheight': &lines / 3,
" 			\ 'wincol': 0,
" 			\ 'winrow': 1,
" 			\ })
" 	elseif a:position ==# 'bottom'
" 		call denite#custom#option('_', {
" 			\ 'winwidth': &columns - 1,
" 			\ 'winheight': &lines / 3,
" 			\ 'wincol': 0,
" 			\ 'winrow': (&lines - 2) - (&lines / 3),
" 			\ })
" 	elseif a:position ==# 'centertop'
" 		call denite#custom#option('_', {
" 			\ 'winwidth': &columns / 2,
" 			\ 'winheight': &lines / 3,
" 			\ 'wincol': &columns / 4,
" 			\ 'winrow': (&lines / 12),
" 			\ })
" 	else
" 		" Use Denite default, which is centered.
" 	endif
" endfunction

" " Set Denite's window position
" let g:denite_position = get(g:, 'denite_position', 'centertop')
" call s:denite_resize(g:denite_position)

" " MATCHERS
" " Default is 'matcher/fuzzy'
" call denite#custom#source('tag', 'matchers', ['matcher/substring'])
" call denite#custom#source('file/old', 'matchers', [
" 	\ 'matcher/project_files', 'matcher/ignore_globs' ])

" " call denite#custom#source('file/rec', 'converters', ['converter/truncate_abbr'])

" " Use vim-clap's rust binary, called maple
" " if dein#tap('vim-clap')
" " 	let s:clap_path = dein#get('vim-clap')['path']
" " 	if executable(s:clap_path . '/target/release/maple')
" " 		call denite#custom#filter('matcher/clap', 'clap_path', s:clap_path)
" " 		call denite#custom#source('file/rec', 'matchers', [ 'matcher/clap' ])
" " 	endif
" " endif

" " SORTERS
" " Default is 'sorter/rank'
" call denite#custom#source('z', 'sorters', ['sorter/z'])

" " CONVERTERS
" " Default is none
" call denite#custom#source(
" 	\ 'buffer,file_mru,file/old',
" 	\ 'converters', ['converter/relative_word'])

" " FIND and GREP COMMANDS
" " ---
" " Ripgrep
" if executable('rg')
" 	call denite#custom#var('file/rec', 'command',
" 		\ ['rg', '--hidden', '--files', '--glob', '!.git', '--color', 'never'])

" 	call denite#custom#var('grep', {
" 		\ 'command': ['rg'],
" 		\ 'default_opts': ['--hidden', '-i', '--vimgrep', '--no-heading'],
" 		\ 'recursive_opts': [],
" 		\ 'pattern_opt': ['--regexp'],
" 		\ })

" " The Silver Searcher (ag)
" elseif executable('ag')
" 	call denite#custom#var('file/rec', 'command',
" 		\ ['ag', '--hidden', '--follow', '--nocolor', '--nogroup', '-g', ''])

" 	" Setup ignore patterns in your .agignore file!
" 	" https://github.com/ggreer/the_silver_searcher/wiki/Advanced-Usage
" 	call denite#custom#var('grep', {
" 		\ 'command': ['ag'],
" 		\ 'default_opts': ['--vimgrep', '-i', '--hidden'],
" 		\ 'recursive_opts': [],
" 		\ 'pattern_opt': [],
" 		\ })

" " Ack command
" elseif executable('ack')
" 	call denite#custom#var('grep', {
" 		\ 'command': ['ack'],
" 		\ 'default_opts': [
" 		\   '--ackrc', $HOME.'/.config/ackrc', '-H', '-i',
" 		\   '--nopager', '--nocolor', '--nogroup', '--column',
" 		\ ],
" 		\ 'recursive_opts': [],
" 		\ 'pattern_opt': ['--match'],
" 		\ })
" endif

" " Denite EVENTS
" augroup user_plugin_denite
" 	autocmd!

" 	autocmd FileType denite call s:denite_settings()
" 	autocmd FileType denite-filter call s:denite_filter_settings()
" 	autocmd User denite-preview call s:denite_preview()

" 	autocmd VimResized * call s:denite_resize(g:denite_position)
" augroup END

" " Denite main window settings
" function! s:denite_settings() abort
" 	" Window options
" 	setlocal signcolumn=no cursorline

" 	" Use a more vibrant cursorline for Denite
" 	highlight! link CursorLine WildMenu
" 	autocmd user_plugin_denite BufDelete <buffer> highlight! link CursorLine NONE

" 	" Denite selection window key mappings
" 	nmap <silent><buffer> <C-j> j
" 	nmap <silent><buffer> <C-k> k
" 	nmap <silent><buffer> <C-n> j
" 	nmap <silent><buffer> <C-p> k
" 	nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
" 	nnoremap <silent><buffer><expr> i    denite#do_map('open_filter_buffer')
" 	nnoremap <silent><buffer><expr> /    denite#do_map('open_filter_buffer')
" 	nnoremap <silent><buffer><expr> dd   denite#do_map('do_action', 'delete')
" 	nnoremap <silent><buffer><expr> p    denite#do_map('do_action', 'preview')
" 	nnoremap <silent><buffer><expr> st   denite#do_map('do_action', 'tabopen')
" 	nnoremap <silent><buffer><expr> sg   denite#do_map('do_action', 'vsplit')
" 	nnoremap <silent><buffer><expr> sv   denite#do_map('do_action', 'split')
" 	nnoremap <silent><buffer><expr> '    denite#do_map('quick_move')
" 	nnoremap <silent><buffer><expr> q    denite#do_map('quit')
" 	nnoremap <silent><buffer><expr> r    denite#do_map('redraw')
" 	nnoremap <silent><buffer><expr> yy   denite#do_map('do_action', 'yank')
" 	nnoremap <silent><buffer><expr> <Esc>   denite#do_map('quit')
" 	nnoremap <silent><buffer><expr> <Tab>   denite#do_map('choose_action')
" 	nnoremap <silent><buffer><expr><nowait> <Space> denite#do_map('toggle_select').'j'
" endfunction

" " Denite-preview window settings
" function! s:denite_preview() abort
" 	" Window options
" 	setlocal colorcolumn= signcolumn=no nolist nospell
" 	setlocal nocursorline nocursorcolumn number norelativenumber

" 	" Clear indents
" 	if exists('*indent_guides#clear_matches')
" 		call indent_guides#clear_matches()
" 	endif
" endfunction

" " Denite-filter window settings
" function! s:denite_filter_settings() abort
" 	" Window options
" 	setlocal signcolumn=yes nocursorline nonumber norelativenumber

" 	" Disable Deoplete auto-completion within Denite filter window
" 	if exists('*deoplete#custom#buffer_option')
" 		call deoplete#custom#buffer_option('auto_complete', v:false)
" 	endif

" 	" Denite Filter window key mappings
" 	imap <silent><buffer> jj          <Plug>(denite_filter_update)
" 	nmap <silent><buffer> <Esc>       <Plug>(denite_filter_update)
" 	imap <silent><buffer> <Esc>       <Plug>(denite_filter_update)
" 	nmap <silent><buffer> <C-c>       <Plug>(denite_filter_update)
" 	imap <silent><buffer> <C-c>       <Plug>(denite_filter_update)
" 	imap <silent><buffer> <C-p>       <Up>
" 	imap <silent><buffer> <C-n>       <Down>

" 	imap <silent><buffer> <Tab>   <Plug>(denite_filter_update)ji
" 	imap <silent><buffer> <S-Tab> <Plug>(denite_filter_update)ki
" endfunction

" nnoremap <silent><LocalLeader>r :<C-u>Denite -resume -refresh -no-start-filter<CR>
" nnoremap <silent><LocalLeader>f :<C-u>Denite file/rec<CR>
" nnoremap <silent><LocalLeader>g :<C-u>Denite grep -start-filter<CR>
" nnoremap <silent><LocalLeader>b :<C-u>Denite buffer -default-action=switch<CR>
" nnoremap <silent><LocalLeader>i :<C-u>Denite file/old file_mru<CR>
" nnoremap <silent><LocalLeader>d :<C-u>Denite directory_rec directory_mru -default-action=cd<CR>
" nnoremap <silent><LocalLeader>v :<C-u>Denite neoyank -buffer-name=register<CR>
" xnoremap <silent><LocalLeader>v :<C-u>Denite neoyank -buffer-name=register -default-action=replace<CR>
" nnoremap <silent><LocalLeader>l :<C-u>Denite location_list -buffer-name=list -no-start-filter<CR>
" nnoremap <silent><LocalLeader>q :<C-u>Denite quickfix -buffer-name=list -no-start-filter<CR>
" nnoremap <silent><LocalLeader>m :<C-u>Denite mark<CR>
" nnoremap <silent><LocalLeader>n :<C-u>Denite dein<CR>
" nnoremap <silent><LocalLeader>j :<C-u>Denite jump change file/point -no-start-filter<CR>
" nnoremap <silent><LocalLeader>u :<C-u>Denite junkfile:new junkfile -buffer-name=list<CR>
" nnoremap <silent><LocalLeader>o :<C-u>Denite outline -no-start-filter<CR>
" nnoremap <silent><LocalLeader>s :<C-u>Denite session -buffer-name=list<CR>
" nnoremap <silent><LocalLeader>t :<C-u>Denite tag<CR>
" nnoremap <silent><LocalLeader>p :<C-u>Denite jump<CR>
" nnoremap <silent><LocalLeader>h :<C-u>Denite help<CR>
" nnoremap <silent><LocalLeader>w :<C-u>Denite file/rec -buffer-name=memo -path=~/docs/blog<CR>
" nnoremap <silent><LocalLeader>z :<C-u>Denite z -buffer-name=list<CR>
" nnoremap <silent><LocalLeader>; :<C-u>Denite command_history command<CR>
" nnoremap <silent><expr><LocalLeader>/ wordcount().chars > 10000 ?
"   \ ":\<C-u>Denite -search line/external\<CR>"
"   \ : ":\<C-u>Denite -search line\<CR>"
" nnoremap <silent><expr><LocalLeader>* wordcount().chars > 10000 ?
"   \ ":\<C-u>DeniteCursorWord -no-start-filter -search line/external\<CR>"
"   \ : ":\<C-u>DeniteCursorWord -no-start-filter -search line\<CR>"

" " Open Denite with word under cursor or selection
" nnoremap <silent> <Leader>gt :DeniteCursorWord tag:include -no-start-filter -immediately<CR>
" nnoremap <silent> <Leader>gf :DeniteCursorWord file/rec -no-start-filter<CR>
" nnoremap <silent> <Leader>gg :DeniteCursorWord grep -no-start-filter<CR>
" vnoremap <silent> <Leader>gg
"   \ :<C-u>call <SID>get_selection('/')<CR>
"   \ :execute 'Denite -no-start-filter grep:::'.@/<CR><CR>

" function! s:get_selection(cmdtype)
"   let temp = @s
"   normal! gv"sy
"   let @/ = substitute(escape(@s, '\' . a:cmdtype), '\n', '\\n', 'g')
"   let @s = temp
" endfunction

