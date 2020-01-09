if !has('nvim')
  finish
endif

call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'chriskempson/base16-vim'
" Plug 'dhruvasagar/vim-zoom'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'swalladge/paper.vim'
" Plug 'lifepillar/vim-colortemplate'
" Plug 'meain/vim-package-info', { 'do': 'npm install' }
Plug 'Lenovsky/nuake'
" Plug 'JarrodCTaylor/spartan'
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'liuchengxu/vim-clap'
" Plug 'wellle/targets.vim'
" Plug 'wellle/context.vim'

" Plug 'liuchengxu/vim-which-key'
Plug 'AlessandroYorba/Alduin'
Plug 'nightsense/cosmic_latte'
Plug 'ajmwagar/vim-deus'
Plug 'liuchengxu/vista.vim'
" Plug 'jlanzarotta/bufexplorer'
Plug 'mhinz/vim-startify'
Plug 'ton/vim-bufsurf'

Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'liuchengxu/space-vim-theme'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/lightline_foobar.vim'
Plug 'mengelbrecht/lightline-bufferline'
" Plug 'taigacute/spaceline.vim'
" Plug 'liuchengxu/eleline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" Plug 'reasonml-editor/vim-reason-plus'
" Plug 'jez/vim-better-sml'
Plug 'michaeljsmith/vim-indent-object'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'airblade/vim-gitgutter'
" Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'pangloss/vim-javascript'
" Plug 'sheerun/vim-polyglot'
" Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'justinmk/vim-syntax-extra'
" Plug 'terryma/vim-expand-region'
Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'mxw/vim-jsx'
" Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'ryanoasis/vim-devicons'
Plug 'matze/vim-move'
" Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

source ~/.config/nvim/init/common.vim
source ~/.config/nvim/init/vista.vim
source ~/.config/nvim/init/ale.vim
source ~/.config/nvim/init/fzf.vim
" source ~/.config/nvim/init/spaceline.vim
source ~/.config/nvim/init/coc.vim
source ~/.config/nvim/init/lightline.vim
source ~/.config/nvim/init/colors.vim
" source ~/.config/nvim/init/eleline.vim
" source ~/.config/nvim/init/airline.vim
