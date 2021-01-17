"""""""""""""""""""""""""""""""""
"  _   _                 _           
" | \ | | ___  _____   _(_)_ __ ___  
" |  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
" | |\  |  __/ (_) \ V /| | | | | | |
" |_| \_|\___|\___/ \_/ |_|_| |_| |_|
"
"""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""

if !has('nvim')
  finish
endif

call plug#begin()
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rhysd/git-messenger.vim'
" Plug 'raghur/fruzzy', {'do': { -> fruzzy#install()}}
" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'kristijanhusak/defx-icons'
" Plug 'jiangmiao/auto-pairs'
" Plug 'voldikss/vim-floaterm'
Plug 'antoinemadec/coc-fzf'
Plug 'haya14busa/incsearch.vim'
" Plug 'easymotion/vim-easymotion'
" Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'Shougo/echodoc'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'meain/vim-package-info', { 'do': 'npm install' }
Plug 'liuchengxu/vim-which-key'
Plug 'rbgrouleff/bclose.vim'
Plug 'Asheq/close-buffers.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'pechorin/any-jump.vim'
" Plug 'liuchengxu/vista.vim'
Plug 'ton/vim-bufsurf'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'pineapplegiant/spaceduck'
Plug 'NLKNguyen/papercolor-theme'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
" Plug 'w0rp/ale'
" Plug 'AndrewRadev/splitjoin.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'dstein64/vim-win'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'matze/vim-move'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'unblevable/quick-scope'
" Plug 'wfxr/minimap.vim', { 'do': ':!cargo install --locked code-minimap' }
" Plug 'Lenovsky/nuake'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
" Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'mattn/emmet-vim'
" Plug 'rhysd/clever-f.vim'


" Plug 'hardcoreplayers/dashboard-nvim'
" Plug 'mcchrish/nnn.vim'
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}
" Plug 'kyazdani42/nvim-web-devicons' " for file icons
" Plug 'romgrk/barbar.nvim'
" Plug 'kyazdani42/nvim-tree.lua'

"
" Plug 'airblade/vim-gitgutter'
" Plug 'mhinz/vim-startify'
" Plug 'chriskempson/base16-vim'
" Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' } 
" Plug 'mbbill/undotree'
" Plug 'dahu/vim-fanfingtastic'
" Plug 't9md/vim-smalls'
" Plug 'markonm/traces.vim'
" Plug 'justinmk/vim-sneak'
" Plug 'jacks0n/Drupal-Hook-Generator.vim', { 'for': 'php' }

" Plug 'camspiers/animate.vim'
" Plug 'camspiers/lens.vim'
" Plug 'morhetz/gruvbox'
" Plug 'co1ncidence/mountaineer.vim'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'urbainvaes/vim-tmux-pilot'
" Plug 'puremourning/vimspector', { 'do': './install_gadget.py --force-enable-node --enable-chrome --enable-python' }
" Plug 'vim-vdebug/vdebug'
" Plug 'puremourning/vimspector'
" Plug 'tsandall/vim-rego'
" Plug 'dhruvasagar/vim-zoom'
" Plug 'liuchengxu/space-vim-dark'
" Plug 'liuchengxu/space-vim-theme'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'sainnhe/lightline_foobar.vim'
" Plug 'taigacute/spaceline.vim'
" Plug 'liuchengxu/eleline.vim'
" Plug 'neomake/neomake'
" Plug 'reasonml-editor/vim-reason-plus'
" Plug 'jez/vim-better-sml'
" Plug 'nathanaelkane/vim-indent-guides'

" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'peitalin/vim-jsx-typescript'
" Plug 'evanleck/vim-svelte'
" Plug 'leafgarland/typescript-vim'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'justinmk/vim-syntax-extra'
" Plug 'terryma/vim-expand-region'
Plug 'mxw/vim-jsx'
Plug 'ianks/vim-tsx'
" Plug 'majutsushi/tagbar'
" Plug 'mhinz/vim-signify'
" Plug 'Yggdroot/indentLine'
" Plug 'Chiel92/vim-autoformat'
" Plug 'IMOKURI/line-number-interval.nvim'
" Plug 'francoiscabrol/ranger.vim'
" Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
" Plug 'norcalli/nvim-colorizer.lua'
call plug#end()

runtime macros/sandwich/keymap/surround.vim
set nowrap
let g:cursorhold_updatetime = 200
source ~/.config/nvim/init/common.vim
source ~/.config/nvim/init/whichKey.vim
source ~/.config/nvim/init/lightline.vim
source ~/.config/nvim/colors/autoload/lightline/mychallenger_deep.vim
source ~/.config/nvim/init/colors.vim
source ~/.config/nvim/init/vista.vim
" source ~/.config/nvim/init/ale.vim
source ~/.config/nvim/init/fzf.vim
source ~/.config/nvim/init/bufsurf.vim
source ~/.config/nvim/init/close-buffers.vim
" source ~/.config/nvim/init/clap.vim
source ~/.config/nvim/init/vim-sandwich.vim
source ~/.config/nvim/init/echodoc.vim
" source ~/.config/nvim/init/anyjump.vim
source ~/.config/nvim/init/vim-win.vim
source ~/.config/nvim/init/colors.vim
source ~/.config/nvim/init/coc.vim
source ~/.config/nvim/init/vim-doge.vim
" source ~/.config/nvim/init/denite.vim
source ~/.config/nvim/init/quick-scope.vim
source ~/.config/nvim/init/fern.vim
" source ~/.config/nvim/init/barbar.vim
" source ~/.config/nvim/init/nnn.vim
" source ~/.config/nvim/init/float-teminal.vim
" source ~/.config/nvim/init/nvim-lua-tree.vim
source ~/.config/nvim/init/common.vim
runtime macros/sandwich/keymap/surround.vim
