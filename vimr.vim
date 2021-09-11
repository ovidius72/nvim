call plug#begin()
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-commentary'
Plug 'unblevable/quick-scope'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons' " lua
Plug 'ryanoasis/vim-devicons' " vimscript
Plug 'cormacrelf/vim-colors-github'
Plug 'wojciechkepka/vim-github-dark'
Plug 'folke/tokyonight.nvim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'Shougo/echodoc'
Plug 'rbgrouleff/bclose.vim'
Plug 'Asheq/close-buffers.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'pechorin/any-jump.vim'
Plug 'liuchengxu/vista.vim'
Plug 'ton/vim-bufsurf'
Plug 'tpope/vim-fugitive'
Plug 'kdheepak/lazygit.nvim'
Plug 'tpope/vim-unimpaired'
Plug 'dstein64/vim-win'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'matze/vim-move'
Plug 'sheerun/vim-polyglot'
call plug#end()

" source ~/.config/nvim/init/vista.vim
source ~/.config/nvim/init/fzf.vim
" source ~/.config/nvim/init/bufsurf.vim
" source ~/.config/nvim/init/close-buffers.vim
" source ~/.config/nvim/init/vim-sandwich.vim
" source ~/.config/nvim/init/anyjump.vim
" source ~/.config/nvim/init/aerojump.vim
" source ~/.config/nvim/init/lazygit.vim
source ~/.config/nvim/init/vim-win.vim
" source ~/.config/nvim/init/colors.vim
source ~/.config/nvim/init/vim-doge.vim
source ~/.config/nvim/init/common.vim
runtime macros/sandwich/keymap/surround.vim

colorscheme github
