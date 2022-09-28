call wilder#enable_cmdline_enter()
set wildcharm=<Tab>
cmap <expr> <C-j> wilder#in_context() ? wilder#next() : "\<Tab>"
cmap <expr> <C-k> wilder#in_context() ? wilder#previous() : "\<S-Tab>"

" only / and ? are enabled by default
call wilder#setup({'modes': ['/', '?', ':']})

call wilder#set_option('renderer', wilder#popupmenu_renderer({
      \ 'highlighter': wilder#basic_highlighter(),
      \ 'left': [
      \   ' ', wilder#popupmenu_devicons(),
      \ ],
      \ 'right': [
      \   ' ', wilder#popupmenu_scrollbar(),
      \ ],
      \ }))

call wilder#set_option('renderer', wilder#popupmenu_renderer({
      \ 'highlighter': wilder#basic_highlighter(),
      \ 'highlights': {
      \   'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#f4468f'}]),
      \ },
      \ }))

" call wilder#set_option('pipeline', [
"       \   wilder#branch(
"       \     wilder#cmdline_pipeline({
"       \       'language': 'python',
"       \       'fuzzy': 1,
"       \     }),
"       \     wilder#python_search_pipeline({
"       \       'pattern': wilder#python_fuzzy_pattern(),
"       \       'sorter': wilder#python_difflib_sorter(),
"       \       'engine': 're',
"       \     }),
"       \   ),
"       \ ])
