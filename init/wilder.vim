call wilder#enable_cmdline_enter()
set wildcharm=<Tab>
cmap <expr> <C-j> wilder#in_context() ? wilder#next() : "\<Tab>"
cmap <expr> <C-k> wilder#in_context() ? wilder#previous() : "\<S-Tab>"

" only / and ? are enabled by default
call wilder#set_option('modes', ['/', '?', ':'])
call wilder#set_option('renderer', wilder#popupmenu_renderer({
      \ 'highlighter': wilder#basic_highlighter(),
      \ 'left': [
      \   wilder#popupmenu_devicons(),
      \ ],
      \ 'right': [
      \   ' ', wilder#popupmenu_scrollbar(),
      \ ]
      \ }))
call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
      \ 'highlights': {
      \   'border': 'Normal',
      \ },
      \ 'border': 'rounded',
      \ })))
" call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_palette_theme({
"       \ 'border': 'rounded',
"       \ 'max_height': '75%',
"       \ 'min_height': 0,
"       \ 'prompt_position': 'top',
"       \ 'reverse': 0,
"       \ })))
" 'file_command' : for ripgrep : ['rg', '--files']
"                : for fd      : ['fd', '-tf']
" 'dir_command'  : for fd      : ['fd', '-td']
" 'filters'      : use ['cpsm_filter'] for performance, needs cpsm to be installed
" call wilder#set_option('pipeline', [
"       \   wilder#branch(
"       \     wilder#python_file_finder_pipeline({
"       \       'file_command': ['find', '.', '-type', 'f', '-printf', '%P\n'],
"       \       'dir_command': ['find', '.', '-type', 'd', '-printf', '%P\n'],
"       \       'filters': ['fuzzy_filter', 'difflib_sorter'],
"       \     }),
"       \     wilder#cmdline_pipeline(),
"       \     wilder#python_search_pipeline(),
"       \   ),
"       \ ])

" call wilder#set_option('pipeline', [
"       \   wilder#branch(
"       \     [
"       \       wilder#check({_, x -> empty(x)}),
"       \       wilder#history(),
"       \       wilder#result({
"       \         'draw': [{_, x -> ' ' . x}],
"       \       }),
"       \     ],
"       \     wilder#cmdline_pipeline(),
"       \     wilder#search_pipeline(),
"       \   ),
"       \ ])

call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#cmdline_pipeline({
      \       'fuzzy': 1,
      \     }),
      \     wilder#python_search_pipeline({
      \       'pattern': wilder#python_fuzzy_pattern(),
      \       'sorter': wilder#python_difflib_sorter(),
      \       'engine': 're',
      \     }),
      \   ),
      \ ])

call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#cmdline_pipeline({
      \       'fuzzy': 1,
      \       'set_pcre2_pattern': 1,
      \     }),
      \     wilder#python_search_pipeline({
      \       'pattern': 'fuzzy',
      \     }),
      \   ),
      \ ])

let s:highlighters = [
        \ wilder#pcre2_highlighter(),
        \ wilder#basic_highlighter(),
        \ ]

call wilder#set_option('renderer', wilder#renderer_mux({
      \ ':': wilder#popupmenu_renderer({
      \   'highlighter': s:highlighters,
      \ }),
      \ '/': wilder#wildmenu_renderer({
      \   'highlighter': s:highlighters,
      \ }),
      \ }))
