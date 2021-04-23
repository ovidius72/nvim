augroup ScrollbarInit
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,FocusLost             * silent! lua require('scrollbar').clear()
augroup end

let g:scrollbar_max_size = 5
let g:scrollbar_highlight = {
  \ 'head': 'BufferInactive',
  \ 'body': 'BufferInactive',
  \ 'tail': 'BufferInactive',
  \ }

let g:scrollbar_excluded_filetypes = ['nerdtree', 'tagbar', 'fzf', 'ferm']
