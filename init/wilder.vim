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
      \ }))

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
