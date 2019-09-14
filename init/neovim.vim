if !has('nvim')
  finish
endif

call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'chriskempson/base16-vim'
Plug 'dhruvasagar/vim-zoom'
Plug 'NLKNguyen/papercolor-theme'
Plug 'swalladge/paper.vim'
" Plug 'flrnprz/candid.vim'
" Plug 'tomasr/molokai'
" Plug 'zxqfl/tabnine-vim'
" Plug 'flrnprz/plastic.vim'
" Plug 'dunstontc/vim-vscode-theme'
Plug 'shapeoflambda/dark-purple.vim'
Plug 'nightsense/snow'

" Plug 'yous/vim-open-color'
Plug 'lifepillar/vim-wwdc17-theme'
" Plug 'lifepillar/vim-wwdc16-theme'


Plug 'nightsense/cosmic_latte'
" Plug 'ajmwagar/vim-deus'
Plug 'liuchengxu/vista.vim'
" Plug 'jlanzarotta/bufexplorer'
" Plug 'mhinz/vim-startify'
Plug 'ton/vim-bufsurf'

Plug 'dracula/vim'
Plug 'haishanh/night-owl.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'joshdick/onedark.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim/' }
Plug 'jacoborus/tender.vim'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'
Plug 'severij/vadelma'
Plug 'rakr/vim-two-firewatch'
" Plug 'tjammer/blayu.vim'

Plug 'lifepillar/vim-solarized8'
" Plug 'jaredgorski/SpaceCamp'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" Plug 'aonemd/kuroi.vim'
Plug 'reedes/vim-colors-pencil'
Plug '3N4N/vim-fault'

Plug 'cocopon/iceberg.vim'
Plug 'ayu-theme/ayu-vim'
" Plug 'ntk148v/vim-horizon'
Plug 'liuchengxu/space-vim-dark'
Plug 'liuchengxu/space-vim-theme'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/lightline_foobar.vim'
Plug 'mengelbrecht/lightline-bufferline'
" Plug 'taigacute/spaceline.vim'
" Plug 'liuchengxu/eleline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
" Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" Plug 'reasonml-editor/vim-reason-plus'
" Plug 'jez/vim-better-sml'
Plug 'michaeljsmith/vim-indent-object'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'haya14busa/incsearch.vim'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'airblade/vim-gitgutter'
" Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'justinmk/vim-syntax-extra'
Plug 'terryma/vim-expand-region'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'mxw/vim-jsx'
" Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'ryanoasis/vim-devicons'
Plug 'matze/vim-move'
call plug#end()

source ~/.config/nvim/init/common.vim
source ~/.config/nvim/init/fzf.vim
source ~/.config/nvim/init/coc.vim
source ~/.config/nvim/init/ale.vim
" source ~/.config/nvim/init/airline.vim
source ~/.config/nvim/init/lightline.vim
source ~/.config/nvim/init/vista.vim
" source ~/.config/nvim/init/spaceline.vim
" source ~/.config/nvim/init/eleline.vim
source ~/.config/nvim/init/colors.vim
