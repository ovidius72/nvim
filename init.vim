" set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h18:style=Regular
" set guifont=JetBrainsMono\ Nerd\ Font:size=16
" set guicursor += a:blinkon333

" if has("gui_running")
"   if has("gui_gtk2") || has("gui_gtk3")
"     set guifont=Courier\ New\ 11
"   elseif has("gui_photon")
"     set guifont=Courier\ New:s11
"   elseif has("gui_kde")
"     set guifont=Courier\ New/11/-1/5/50/0/0/0/1/0
"   elseif has("x11")
"     set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
"   else
"     set guifont=Courier_New:h11:cDEFAULT
"   endif
" endif
if exists('g:goneovim')
  source ~/.config/nvim/init-goneovim.vim
  source ~/.config/nvim/init/neovim.vim
" elseif has('gui_vimr')
"   source ~/.config/nvim/vimr.vim
elseif exists('g:fvim_loaded')
    source ~/.config/nvim/init/neovim.vim
    " good old 'set guifont' compatibility with HiDPI hints...
    if g:fvim_os == 'windows' || g:fvim_render_scale > 1.0
      set guifont=Iosevka\ Slab:h14
      set guifont=JetBrainsMono\ Nerd\ Font:size=16
    else
      set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h18:style=Regular
      set guifont=JetBrainsMono\ Nerd\ Font:size=16
    endif
      
    " Ctrl-ScrollWheel for zooming in/out
    nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>
    nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>
    nnoremap <A-CR> :FVimToggleFullScreen<CR>
elseif exists('g:vscode')
  source ~/.config/nvim/init-vscode.vim
else
  source ~/.config/nvim/init/neovim.vim
endif
" source ~/.config/nvim/init/veonim.vim
