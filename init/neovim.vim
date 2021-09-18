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

call plug#begin('~/.config/nvim/plugged')
" Plug 'glepnir/galaxyline.nvim', {'branch': 'main'}
" Plug 'mhinz/vim-signify'
Plug 'rktjmp/lush.nvim'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'rhysd/git-messenger.vim'
Plug 'windwp/nvim-spectre'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'kyazdani42/nvim-web-devicons' " lua
Plug 'ryanoasis/vim-devicons' " vimscript
Plug 'hoob3rt/lualine.nvim'
Plug 'junegunn/gv.vim'
Plug 'tversteeg/registers.nvim'
Plug 'lewis6991/gitsigns.nvim'

Plug 'tanvirtin/vgit.nvim'
" Colorschemes
Plug 'shaunsingh/moonlight.nvim'
Plug 'savq/melange'
Plug 'mcchrish/zenbones.nvim'
Plug 'ntk148v/vim-horizon'
Plug 'npxbr/gruvbox.nvim'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'elianiva/gruvy.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'franbach/miramare'
Plug 'folke/tokyonight.nvim'
Plug 'nxvu699134/vn-night.nvim'

Plug 'Pocco81/Catppuccino.nvim'
Plug 'kyazdani42/blue-moon'
Plug 'rose-pine/neovim', { 'as': 'rose-pine'}
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'jsit/toast.vim'
" Plug 'rafamadriz/neon'
" Plug 'mnishz/colorscheme-preview.vim'
" <-- colorschemes


" Plug 'folke/trouble.nvim'
Plug 'vim-test/vim-test'
Plug 'rcarriga/vim-ultest', { 'do': ':UpdateRemotePlugins' }
Plug 'preservim/vimux'
Plug 's1n7ax/nvim-comment-frame'
" Plug 'AckslD/nvim-neoclip.lua'
Plug 'ironhouzi/starlite-nvim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'camspiers/snap'

" Plug 'haringsrob/nvim_context_vt'
Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'
Plug 'AckslD/nvim-revJ.lua'
Plug 'windwp/nvim-ts-autotag'

Plug 'Pablo1107/codi.vim'
Plug 'psliwka/vim-smoothie'
Plug 'micmine/jumpwire.nvim'
Plug 'phaazon/hop.nvim'
Plug 'andymass/vim-matchup'
Plug 'sindrets/diffview.nvim'
Plug 'voldikss/vim-floaterm'
" Plug 'rbong/vim-flog'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'Shougo/echodoc'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'meain/vim-package-info', { 'do': 'npm install' }
Plug 'liuchengxu/vim-which-key'
Plug 'rbgrouleff/bclose.vim'
Plug 'Asheq/close-buffers.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'pechorin/any-jump.vim'
Plug 'liuchengxu/vista.vim'
Plug 'ton/vim-bufsurf'
" Plug 'w0rp/ale'
" Plug 'AndrewRadev/splitjoin.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-fugitive'
" Plug 'TimUntersberger/neogit'
Plug 'kdheepak/lazygit.nvim'
Plug 'tpope/vim-unimpaired'
Plug 'dstein64/vim-win'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'tpope/vim-commentary'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'unblevable/quick-scope'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'matze/vim-move'
Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'
Plug 'SmiteshP/nvim-gps'
Plug 'sindrets/winshift.nvim'

" Plug 'rmagatti/goto-preview' " requires lsp
" Plug 'romgrk/barbar.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'mbbill/undotree'
Plug 'simnalamburt/vim-mundo'
" Plug 'camspiers/animate.vim'
" Plug 'camspiers/lens.vim'
" Plug 'morhetz/gruvbox'
Plug 'puremourning/vimspector', { 'do': './install_gadget.py --force-enable-node --force-enable-chrome --force-enable-php' }
Plug 'szw/vim-maximizer'
" Plug 'vim-vdebug/vdebug'
" Plug 'tsandall/vim-rego'
" Plug 'dhruvasagar/vim-zoom'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'

" Plug 'evanleck/vim-svelte'
" Plug 'terryma/vim-expand-region'
" Plug 'mxw/vim-jsx'
" Plug 'ianks/vim-tsx'
" Plug 'Yggdroot/indentLine'
" Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'emilsoman/indent-highlight.vim'
Plug 'gelguy/wilder.nvim'
Plug 'francoiscabrol/ranger.vim'
Plug 'kevinhwang91/rnvimr'
" Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'norcalli/nvim-colorizer.lua'
" Plug 'glepnir/dashboard-nvim'
call plug#end()


lua <<EOF
require'nvim-treesitter.configs'.setup {
    context_commentstring = {
      enable = true
    },
    autotag = {
      enable = true,
    },
    ensure_installed = {
      'javascript',
      'lua',
      'html',
      'scss',
      'json',
      'graphql',
      'vue',
      'jsonc',
      'comment',
      'regex',
      'json5',
      'css',
      'bash',
      'yaml',
      'ql',
      'typescript',
      'tsx',
      'php',
      'toml',
      'python',
      'dockerfile'
    },
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "gnd",
          scope_incremental = "gni",
          node_decremental = "gnu"
        }
    },
    matchup = {
        enable = false,
    },
    nvimGPS = { 
      enable = true,
    },
    indent = {
        enable = false,
    },
}
EOF

runtime macros/sandwich/keymap/surround.vim
set nowrap
let g:cursorhold_updatetime = 200
source ~/.config/nvim/init/common.vim
source ~/.config/nvim/init/whichKey.vim
" source ~/.config/nvim/init/lightline.vim
" source ~/.config/nvim/colors/autoload/lightline/mychallenger_deep.vim
" source ~/.config/nvim/colors/autoload/lightline/onehalfdark.vim
" source ~/.config/nvim/init/colors.vim
source ~/.config/nvim/init/vista.vim
" source ~/.config/nvim/init/ale.vim
source ~/.config/nvim/init/fzf.vim
source ~/.config/nvim/init/bufsurf.vim
source ~/.config/nvim/init/close-buffers.vim
" source ~/.config/nvim/init/clap.vim
source ~/.config/nvim/init/vim-sandwich.vim
source ~/.config/nvim/init/anyjump.vim
source ~/.config/nvim/init/aerojump.vim
source ~/.config/nvim/init/lazygit.vim
source ~/.config/nvim/init/vim-win.vim
" source ~/.config/nvim/init/colors.vim
source ~/.config/nvim/init/vim-doge.vim
" source ~/.config/nvim/init/denite.vim
source ~/.config/nvim/init/quick-scope.vim
source ~/.config/nvim/init/fern.vim
source ~/.config/nvim/init/ranger.vim
source ~/.config/nvim/init/rnvimr.vim
" source ~/.config/nvim/init/nnn.vim
source ~/.config/nvim/init/float-teminal.vim
" source ~/.config/nvim/init/nvim-lua-tree.vim
source ~/.config/nvim/init/telescope.vim
" luafile ~/.config/nvim/init/telescope.lua
source ~/.config/nvim/init/spectre.vim
" source ~/.config/nvim/init/context.vim
" source ~/.config/nvim/lua/galaxyline.lua
source ~/.config/nvim/init/common.vim
source ~/.config/nvim/init/echodoc.vim
source ~/.config/nvim/init/undotree.vim
" source ~/.config/nvim/init/scrollbar.vim
source ~/.config/nvim/init/wilder.vim
source ~/.config/nvim/init/smoothie.vim
source ~/.config/nvim/init/jumpwire.vim
source ~/.config/nvim/init/signify.vim
source ~/.config/nvim/init/coc.vim
" source ~/.config/nvim/init/barbar.vim
source ~/.config/nvim/init/tagalong.vim
source ~/.config/nvim/init/vimspector.vim
source ~/.config/nvim/init/vim-test.vim
source ~/.config/nvim/init/nvim-comment-frame.vim
source ~/.config/nvim/init/hop.vim
source ~/.config/nvim/init/dadbod.vim
" source ~/.config/nvim/init/dashboard.vim
runtime macros/sandwich/keymap/surround.vim

" hi CocErrorVirtualText ctermfg=Black ctermbg=Red guifg=#ff8a7a guibg=bg
" hi CocWarningVirtualText ctermfg=Black ctermbg=Yellow guifg=#ffe9aa guibg=bg
" hi CocWarningInfoText ctermfg=Black ctermbg=Yellow guifg=#95ffa4 guibg=bg
lua init = require('init')
lua init.setup()
" source ~/.config/nvim/init/colors.vim
