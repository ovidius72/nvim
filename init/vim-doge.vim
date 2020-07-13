let g:doge_enable_mappings=0
" let g:ale_open_list = 0
let g:doge_mapping = '<Leader>g/'
noremap <silent>g/ :DogeGenerate<cr>
noremap <silent><Leader>xd :DogeGenerate<cr>
let g:doge_mapping_comment_jump_forward = '<C-l>'
let g:doge_mapping_comment_jump_backward = '<C-h>'
