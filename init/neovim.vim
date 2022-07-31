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
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
Plug 'thinca/vim-quickrun'
Plug 'metakirby5/codi.vim'
Plug 'rhysd/git-messenger.vim'

Plug 'MunifTanjim/nui.nvim'        " it's a dependency
Plug 'xeluxee/competitest.nvim'

Plug 'windwp/nvim-spectre'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'fannheyward/telescope-coc.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'kyazdani42/nvim-web-devicons' " lua
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ryanoasis/vim-devicons' " vimscript
Plug 'nvim-lualine/lualine.nvim'
Plug 'junegunn/gv.vim'
Plug 'kwkarlwang/bufjump.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

" Plug 'pacokwon/onedarkhc.vim'
" Plug 'Everblush/everblush.vim'

" Plug 'kevinhwang91/nvim-hlslens'

" Plug 'tversteeg/registers.nvim'
" Plug 'GustavoKatel/sidebar.nvim'
" Plug 'lewis6991/gitsigns.nvim'

Plug 'shaunsingh/oxocarbon.nvim', { 'do': './install.sh' }
Plug 'tanvirtin/vgit.nvim'
" Colorschemes
" Plug 'wadackel/vim-dogrun'
Plug 'olimorris/onedarkpro.nvim'
Plug 'mangeshrex/everblush.vim'
Plug 'Yazeed1s/minimal.nvim'

" If you are using Vim Plug
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }

" Plug 'shaunsingh/moonlight.nvim'
" Plug 'savq/melange'
" Plug 'mcchrish/zenbones.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }



Plug 'ovidius72/Catppuccino.nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'lambdalisue/glyph-palette.vim'
Plug 'rose-pine/neovim', { 'as': 'rose-pine'}
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" Plug 'nvim-neotest/neotest'
" Plug 'haydenmeade/neotest-jest'
" Plug 'vim-test/vim-test'
" Plug 'rcarriga/vim-ultest', { 'do': ':UpdateRemotePlugins' }
Plug 'kevinhwang91/promise-async'
Plug 'kevinhwang91/nvim-ufo'
Plug 'preservim/vimux'
Plug 's1n7ax/nvim-comment-frame'
Plug 'folke/todo-comments.nvim'
Plug 'github/copilot.vim'
Plug 'ironhouzi/starlite-nvim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'mizlan/iswap.nvim'
Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'
Plug 'AckslD/nvim-trevJ.lua'
Plug 'windwp/nvim-ts-autotag'

Plug 'psliwka/vim-smoothie'
" Plug 'micmine/jumpwire.nvim'
Plug 'phaazon/hop.nvim'
Plug 'LudoPinelli/comment-box.nvim'
" Plug 'rlane/pounce.nvim'
" Plug 'ggandor/lightspeed.nvim'
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
" Plug 'pechorin/any-jump.vim'
Plug 'liuchengxu/vista.vim'
Plug 'ton/vim-bufsurf'
" Plug 'w0rp/ale'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-fugitive'
" Plug 'TimUntersberger/neogit'
Plug 'kdheepak/lazygit.nvim'
Plug 'tpope/vim-unimpaired'
Plug 'dstein64/vim-win'
Plug 'mrjones2014/smart-splits.nvim'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'mrjones2014/legendary.nvim'

" Plug 'https://github.com/p00f/nvim-ts-rainbow'
Plug 'tpope/vim-commentary'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'unblevable/quick-scope'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern.vim', { 'branch': 'main' }
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'yuki-yano/fern-preview.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'matze/vim-move'
Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
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
Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'emilsoman/indent-highlight.vim'
Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'francoiscabrol/ranger.vim'
Plug 'kevinhwang91/rnvimr'
" Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'norcalli/nvim-colorizer.lua'
" Plug 'glepnir/dashboard-nvim'
Plug 'folke/zen-mode.nvim'
call plug#end()


lua <<EOF
require'nvim-treesitter.configs'.setup {
    autotag = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        }
      },
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          ["]m"] = "@function.outer",
          ["]]"] = "@class.outer",
        },
        goto_next_end = {
          ["]M"] = "@function.outer",
          ["]["] = "@class.outer",
        },
        goto_previous_start = {
          ["[m"] = "@function.outer",
          ["[["] = "@class.outer",
        },
        goto_previous_end = {
          ["[M"] = "@function.outer",
          ["[]"] = "@class.outer",
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ["<leader>oa"] = "@parameter.inner",
        },
        swap_previous = {
          ["<leader>oA"] = "@parameter.inner",
        },
      },
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
        enable = false,
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
    -- nvimGPS = { 
    --   enable = true,
    -- },
    indent = {
        enable = false,
    },
}
-- require "nvim-treesitter.highlight"                                              
-- local hlmap = vim.treesitter.highlighter.hl_map                                  
-- hlmap["punctuation.delimiter"] = "Delimiter"
-- hlmap["punctuation.bracket"] = nil
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
" source ~/.config/nvim/init/anyjump.vim
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
" source ~/.config/nvim/init/jumpwire.vim
source ~/.config/nvim/init/signify.vim
source ~/.config/nvim/init/coc.vim
" source ~/.config/nvim/init/barbar.vim
source ~/.config/nvim/init/tagalong.vim
source ~/.config/nvim/init/vimspector.vim
" source ~/.config/nvim/init/vim-test.vim
source ~/.config/nvim/init/nvim-comment-frame.vim
source ~/.config/nvim/init/hop.vim
source ~/.config/nvim/init/dadbod.vim
source ~/.config/nvim/init/git-messenger.vim
" source ~/.config/nvim/init/dashboard.vim
runtime macros/sandwich/keymap/surrounnd.vim

" hi CocErrorVirtualText ctermfg=Black ctermbg=Red guifg=#ff8a7a guibg=bg
" hi CocWarningVirtualText ctermfg=Black ctermbg=Yellow guifg=#ffe9aa guibg=bg
" hi CocWarningInfoText ctermfg=Black ctermbg=Yellow guifg=#95ffa4 guibg=bg
lua init = require('init')
" lua init.setup()
" source ~/.config/nvim/init/colors.vim
