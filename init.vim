" set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h18:style=Regular
" set guifont=JetBrainsMono\ Nerd\ Font:size=14
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
if exists('g:vscode')
  source ~/.config/nvim/init-vscode.vim
else
  source ~/.config/nvim/init/neovim.vim
endif
" source ~/.config/nvim/init/veonim.vim
