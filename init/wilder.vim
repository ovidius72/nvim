call wilder#enable_cmdline_enter()
set wildcharm=<Tab>
cmap <expr> <C-j> wilder#in_context() ? wilder#next() : "\<Tab>"
cmap <expr> <C-k> wilder#in_context() ? wilder#previous() : "\<S-Tab>"

" only / and ? are enabled by default
call wilder#setup({'modes': ['/', '?', ':']})

call wilder#set_option('renderer', wilder#popupmenu_renderer({
      \ 'highlighter': wilder#basic_highlighter(),
      \ 'highlights': {
      \   'border': 'Normal',
      \   'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#f4468f'}]),
      \ },
      \ 'border': 'rounded',
      \ 'left': [
      \   ' ', wilder#popupmenu_devicons(),
      \ ],
      \ 'right': [
      \   ' ', wilder#popupmenu_scrollbar(),
      \ ],
      \ }))

" 'border'            : 'single', 'double', 'rounded' or 'solid'
"                     : can also be a list of 8 characters,
"                     : see :h wilder#popupmenu_border_theme() for more details
" 'highlights.border' : highlight to use for the border`
" call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
"       \ 'highlights': {
"       \   'border': 'Normal',
"       \ },
"       \ 'border': 'rounded',
"       \ })))

" call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_palette_theme({
"       \ 'border': 'rounded',
"       \ 'max_height': '75%',
"       \ 'min_height': 0,
"       \ 'prompt_position': 'top',
"       \ 'reverse': 0,
"       \ })))

" call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
"       \ 'highlights': {
"       \   'border': 'Normal',
"       \ },
"       \ 'border': 'rounded',
"       \ })))

call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#cmdline_pipeline({
      \       'language': 'python',
      \       'fuzzy': 1,
      \     }),
      \     wilder#python_search_pipeline({
      \       'pattern': wilder#python_fuzzy_pattern(),
      \       'sorter': wilder#python_difflib_sorter(),
      \       'engine': 're',
      \     }),
      \   ),
      \  wilder.result_draw_devicons(),
      \ ])
