if !has('nvim')
  finish
endif

call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'Shougo/echodoc'
Plug 'mhinz/vim-startify'

" Plug 'camspiers/animate.vim'
" Plug 'camspiers/lens.vim'
Plug 'liuchengxu/vim-which-key'
" Plug 'arzg/vim-colors-xcode'
" Plug 'bluz71/vim-moonfly-colors'
" Plug 'bluz71/vim-nightfly-guicolors'
" Plug 'franbach/miramare'
" Plug 'chase/focuspoint-vim'
" Plug 'jacoborus/tender.vim'
" Plug 'axvr/photon.vim'
" Plug 'owickstrom/vim-colors-paramount'
" Plug 'gkeep/iceberg-dark'
" Plug 'cocopon/iceberg.vim'
" Plug 'AlessandroYorba/Alduin'
" Plug 'ntk148v/vim-horizon'
" Plug 'ayu-theme/ayu-vim'
" Plug 'davidosomething/vim-colors-meh'

" Plug 'christoomey/vim-tmux-navigator'
" Plug 'urbainvaes/vim-tmux-pilot'
" Plug 'puremourning/vimspector', { 'do': './install_gadget.py --force-enable-node --enable-chrome --enable-python' }
Plug 'vim-vdebug/vdebug'
Plug 'puremourning/vimspector'
Plug 'rbgrouleff/bclose.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'chriskempson/base16-vim'
Plug 'tsandall/vim-rego'
Plug 'unblevable/quick-scope'
Plug 'pechorin/any-jump.vim'
" Plug 'dhruvasagar/vim-zoom'
Plug 'Lenovsky/nuake'
Plug 'liuchengxu/vim-clap' 
Plug 'liuchengxu/vista.vim'
Plug 'ton/vim-bufsurf'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" Plug 'liuchengxu/space-vim-dark'
" Plug 'liuchengxu/space-vim-theme'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/lightline_foobar.vim'
Plug 'mengelbrecht/lightline-bufferline'
" Plug 'taigacute/spaceline.vim'
" Plug 'liuchengxu/eleline.vim'
Plug 'w0rp/ale'
" Plug 'neomake/neomake'
" Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" Plug 'reasonml-editor/vim-reason-plus'
" Plug 'jez/vim-better-sml'
Plug 'michaeljsmith/vim-indent-object'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'

" Plug 'mattn/emmet-vim'
" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'dstein64/vim-win'
Plug 'AndrewRadev/splitjoin.vim'
" Plug 'pangloss/vim-javascript'
" Plug 'sheerun/vim-polyglot'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'leafgarland/typescript-vim'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'justinmk/vim-syntax-extra'
" Plug 'terryma/vim-expand-region'
Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'mxw/vim-jsx'
Plug 'ianks/vim-tsx'
" Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'ryanoasis/vim-devicons'
Plug 'matze/vim-move'
Plug 'airblade/vim-gitgutter'
" Plug 'Yggdroot/indentLine'
" Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-commentary'
" Plug 'IMOKURI/line-number-interval.nvim'
Plug 'francoiscabrol/ranger.vim'
call plug#end()

runtime macros/sandwich/keymap/surround.vim

source ~/.config/nvim/init/common.vim
source ~/.config/nvim/init/whichKey.vim
source ~/.config/nvim/colors/autoload/lightline/mychallenger_deep.vim
" source ~/.config/nvim/init/lens.vim
source ~/.config/nvim/init/vista.vim
source ~/.config/nvim/init/ale.vim
" source ~/.config/nvim/init/neomake.vim
source ~/.config/nvim/init/fzf.vim
" source ~/.config/nvim/colors/challenger_deep_spaceline.vim
" source ~/.config/nvim/init/spaceline.vim
source ~/.config/nvim/init/lightline.vim
" source ~/.config/nvim/init/airline.vim
" source ~/.config/nvim/init/eleline.vim
source ~/.config/nvim/init/bufsurf.vim
source ~/.config/nvim/init/clap.vim
source ~/.config/nvim/init/ranger.vim
" source ~/.config/nvim/init/nerdtree.vim
source ~/.config/nvim/init/common.vim
source ~/.config/nvim/init/vim-sandwich.vim
source ~/.config/nvim/init/colors.vim
source ~/.config/nvim/init/easymotion.vim
source ~/.config/nvim/init/echodoc.vim
source ~/.config/nvim/init/anyjump.vim
" source ~/.config/nvim/init/dotoo.vim
source ~/.config/nvim/init/vim-win.vim
source ~/.config/nvim/init/vimspector.vim
source ~/.config/nvim/init/colors.vim
source ~/.config/nvim/init/coc.vim
runtime macros/sandwich/keymap/surround.vim
" source ~/.config/nvim/init/line-number-interval.vim
