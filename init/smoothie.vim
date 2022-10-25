function! ToggleSmoothie() abort
  let state = get(g:, 'smoothie_enabled', 0)
  if (state == 0)
    let g:smoothie_enabled = 1
    echo "Smoothie enabled"
  else
    let g:smoothie_enabled = 0
    echo "Smoothie disabled"
  end
endfunction
let g:smoothie_experimental_mappings = 1
command! -nargs=? TOGGLESMOOTHIE : call ToggleSmoothie()
" nmap <leader>hS :TOGGLESMOOTHIE<cr>
