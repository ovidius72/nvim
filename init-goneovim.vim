call plug#begin()
Plug 'akiyosi/gonvim-fuzzy'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'unblevable/quick-scope'
call plug#end()
