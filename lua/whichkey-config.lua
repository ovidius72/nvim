local mappings = {
  ["<leader>"] = {
    a = { "ACTIONS"},
    b = { "+BUFFERS"},
    c = {
      name = "+CODE",
      a = { "Code Actions" },
      o = { "Code Actions" },
      c = { "<cmd>CocInfo<cr>", "Coc Info"},
      e = { "Hide Float" },
      F = { "Fix Selcted" },
      u = { "Coc Update" },
      g = {
        name = "git",
        c = "Commits",
        i = "Hunk Info",
        u = "Hunk Undo",
        f = "Fold Unchanged",
        d = "Diff Cached",
        s = "Show Commits",
        t = "Toggle Gutters",
      },
    },
    e = {
      name = "+DIAGNOSTIC",
      l = "Coc Diagnostic",
    },
    d = { name = "+DEBUG" },
    g = {
      name = "+GIT",
      ["3"] = { ":Gvdiffsplit!", "Split 3 W"},
      ["2"] = { ":diffget //2", "Get Left"},
      ["u"] = { ":diffget //3", "Get Right"},
      b = { "<cmd>Git blame<cr>", "blame" },
      c = { "FZF Git Commits" },
      -- n = { "<cmd>VGit actions<cr>", "VGIT" },
      m = { "Git Messenger Popup" },
      F = { "FZF git files preview" },
      P = { "GIT PUSH" },
      r = { "<cmd>GV<cr>", "Commit Browser" },
      t = { "<cmd>GV!<cr>", "Commit Browser(Current)" },
      R = { "<cmd>GV?<cr>", "Commit Browser(LocationList)" },
    },
    h = {
      name = "+HIGHLIGHT",
      h = "Toggle Search Highlight",
    },
    H = {
      name = "+HELP",
      C = { 'FZF Colors Left' },
      z = { 'Describe Face' },
    },
    i = { "Files..."},
    l = { "<cmd>Buffers<cr>", "Buffers..."},
    o = {
      name = "+CUSTOM",
      a =  { "ISwap Next Inner" },
      A =  {"ISwap Previous Inner"},
      s =  { "ISwap"},
      w =  { "ISwapWith"},
      l =  { "js-console.log"},
      p =  { "language log"},
      o =  { "organize import"},
      f =  { "format"},
      F =  { "fold"},
    },
    p = {
      name =  '+PROJECT',
      S = 'Add Session',
      p = 'Projects',
      o = 'toggle explorer',
      s = 'Sessions',
    },
    q = {
      name =  '+LIST',
      q = { "<cmd>ToggleQuickFixWindow<cr>", 'Toggle QuickList'},
      x = { '<cmd>ClearQuickFixList<cr>', "Clear QuickList" },
      p = {"<cmd>cnext", "Next QuickList Item" },
      n = {"<cmd>cprev", "Prev QuickList Item" },
    },
    r = { name = "+REPLACE"},
    j = {
      name = '+JUMP',
    },
    u = { "Diagnostic Info"},
    y = { "Copy to clipboard" },
    Y = { "Paste from clipboard" },
    M = { "Maximizer Toggle" },
    ["Tab"] = { "Alternate Buffer" },
    ["/"] = { 'which_key_ignore'},
    ["1"] = { 'which_key_ignore'},
    ["2"] = { 'which_key_ignore'},
    ["3"] = { 'which_key_ignore'},
    ["4"] = { 'which_key_ignore'},
    ["5"] = { 'which_key_ignore'},
    ["6"] = { 'which_key_ignore'},
    ["7"] = { 'which_key_ignore'},
    ["8"] = { 'which_key_ignore'},
    ["9"] = { 'which_key_ignore'},
    ["0"] = { 'which_key_ignore'},
    ["<F9>"] = {'which_key_ignore'},
    ["0..9"] = { "Switch buffers"},
    [" "] = { "Telescope"},
    f = {
      name = "+FILE",
      -- f = { "Format" },
      -- r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
      n = { "<cmd>enew<cr>", "New File" },
    },
    s = {
      name = "+SEARCH",
      v = "Spectre Open",
    },
    t = {
      name = "+TESTS",
      c = {
      name = "+Coverage",
      }
    },
    T = {
      name = "+TABS",
      p = "Previous",
      n = "Next",
      N = "New",
      c = "Close",
    },
    v = {
      name = "+VISUAL",
      s = {
        name = "+SANDWICH",
        a = "Add...",
        d = "Delete...",
        r = "Replace...",
      }
    },
    x = {
      name = "+CODE-EXTRA",
      s = { "<CMD>TSJSplit<cr>", "Split" },
      j = {"<CMD>TSJJoin<cr>", "Join"},
      o = {"New Line In Normal Mode" },
      t = {"<CMD>TSJToggle<cr>", "Toggle"},
      r = {"Replace Under Caret" }
    },
    z = {
      name = "+SEARCH IN BUFFER",
      ["/"] = { "Incsearch-f"},
      ["?"] = {"incsearch-j" },
      z = {"insearch-stay" },
      i = {'<cmd>set noignorecase! | echo "Changed ignorecase"<cr>', "Toggle Ignorecase" },
      f = {
        name = "+FUZZY",
        ["/"] =  { 'incsearch-fuzzy-/' },
        ["?"] =  { 'incsearch-fuzzy-?' },
        ["f"] =  { 'incsearch-fuzzy-stay' },
      },
    },
    w = {
      name = "+WINDOWS",
      ["1..7"] = { "Switch Windows" },
      ["1"] = { "which_key_ignore" },
      ["2"] = { "which_key_ignore"  },
      ["3"] = { "which_key_ignore"  },
      ["4"] = { "which_key_ignore"  },
      ["5"] = { "which_key_ignore"  },
      ["6"] = { "which_key_ignore"  },
      ["7"] = { "which_key_ignore"  },
      [";"] = { "VimWin" },
      ["w"] = { "<C-W>c", "delete-window" },
      ["e"] = { "<C-W>v", "split-window-right" },
      ["d"] = {"<C-W>c", "delete-window"},
      ["-"] = {"<C-W>s", "split-window-below"},
      ["|"] = {"<C-W>v", "split-window-right"},
      ["h"] = {"<C-W>h", "window-left"},
      ["j"] = {"<C-W>j", "window-below"},
      ["l"] = {"<C-W>l", "window-right"},
      ["k"] = {"<C-W>k", "window-up"},
      ["H"] = {"<C-W>5<", "expand-window-left"},
      ["J"] = {"<cdm>resize +5", "expand-window-below"},
      ["L"] = {"<C-W>5>", "expand-window-right"},
      ["K"] = {"<cdm>resize -5", "expand-window-up"},
      ["="] = {"<C-W>=", "balance-window"},
      ["q"] = {"<C-W>c", "delete-window"},
      ["Q"] = { "exit" },
      ["s"] = {"<C-W>s", "split-window-below"},
      ["v"] = {"<C-W>v", "split-window-below"},
      ["?"] = {"Windows", "fzf-window"},
      ["m"] = {
        ["name"]= "+zoom",
        ["m"] = "zoom",
        ["i"] = "zoom-in",
        ["o"] = "zoom-out",
      }
    },
  }
}
local opts = {
  mode = "n", -- NORMAL mode
  -- prefix: use "<leader>f" for example for mapping everything related to finding files
  -- the prefix is prepended to every mapping part of `mappings`
  prefix = "",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}
local wk = require("which-key")
wk.register(mappings, opts)

wk.setup({
      plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
          operators = false, -- adds help for operators like d, y, ...
          motions = false, -- adds help for motions
          text_objects = false, -- help for text objects triggered after entering an operator
          windows = false, -- default bindings on <c-w>
          nav = false, -- misc bindings to work with windows
          z = false, -- bindings for folds, spelling and others prefixed with z
          g = false, -- bindings for prefixed with g
        },
        spelling = { enabled = true, suggestions = 20 }, -- use which-key for spelling hints
      },
    window = { border = 'single' }
  })
