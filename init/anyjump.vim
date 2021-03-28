let g:any_jump_disable_default_keybindings = 1
let g:any_jump_grouping_enabled = 0
let g:any_jump_preview_lines_count = 8
" let g:any_jump_ignored_files = ['.tmp', '.temp'] 

nnoremap <leader>rr :AnyJump<CR>
xnoremap <leader>rv :AnyJumpVisual<CR>
nnoremap <leader>rb :AnyJumpBack<CR>
nnoremap <leader>rl :AnyJumpLastResults<CR>
 let g:any_jump_colors = {
      \"plain_text":         "Comment",
      \"preview":            "Comment",
      \"preview_keyword":    "Operator",
      \"heading_text":       "Function",
      \"heading_keyword":    "Identifier",
      \"group_text":         "Comment",
      \"group_name":         "Function",
      \"more_button":        "Operator",
      \"more_explain":       "Comment",
      \"result_line_number": "Comment",
      \"result_text":        "Statement",
      \"result_path":        "String",
      \"help":               "Comment"
      \}
  
