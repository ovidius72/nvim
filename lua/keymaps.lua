vim.cmd [[
" toggle quickfix list
function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction
" clear quickfix
command! ClearQuickFixList cexpr []
command! ToggleQuickFixWindow call ToggleQuickFix()
function! TabToggle()
  if &expandtab
    set tabstop=4
    set shiftwidth=4
    set softtabstop=0
    set noexpandtab
    echo 'Tab set'
  else
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set smarttab
    set autoindent
    set expandtab
    echo 'Space set'
  endif
endfunction
]]

local keymaps = {
  { '<leader>:', ':Legendary<CR>',                                                                                                   description = 'Legendary',                   opts = {} },
  -- FERN
  { '<leader>[', ':Fern . -drawer -toggle -width=35<CR>',                                                                            description = 'Toggle Fern (File Explorer)', opts = {} },
  { '<leader>]', ':Fern . -drawer -reveal=% -width=35<CR>',                                                                          description = 'Focus Fern (File Explorer)',  opts = {} },
  -- float terminal
  { '<M-m>',     ':FloatermNew --width=1.0 --height=0.3 --wintype=float --name=t1 --position=bottom --autoclose=0 pfetch & zsh<CR>', description = 'Focus Fern (File Explorer)',  opts = { silent = true } },
  { '<M-/>',
    {
      t = { '<C-\\><C-n>::FloatermUpdate --height=0.3<CR>', description = 'Floaterm Short', opts = { silent = true } } }
  },
  { '<M-,>', { t = { '<C-\\><C-n>:FloatermUpdate --height=0.8<CR>', description = 'Floaterm Tall', opts = { silent = true } } } },
  { '<M-[>', { t = { "<C-\\><C-n>:FloatermNext<CR>", description = 'Floatterm Next', opts = { silent = true } } } },
  { '<M-]>', { t = { "<C-\\><C-n>:FloatermPrev<CR>", description = 'Floatterm Prev', opts = { silent = true } } } },
  { '<M-x>', { t = { "<C-\\><C-n>:FloatermKill<CR>", description = 'Floatterm Prev', opts = { silent = true } } } },
  { '<M-o>',
    {
      n = { ':RnvimrToggle<CR>', description = 'RnvimrToggle Ranger Toggle', opts = { silent = true } },
    }
  },
  { '<M-o> <C-\\><C-n>',
    {
      t = { ':RnvimrToggle<CR>', description = 'RnvimrToggle Ranger Toggle', opts = { silent = true } },
    }
  },

  --> toggle terminal

  { '<leader><Tab>', '<C-^>',                                                                               description = 'Alternate Buffer',                     opts = { silent = true } },

  -- apps
  { '<leader>auu',   ':MundoToggle<CR>:UndotreeFocus<CR>',                                                  description = 'Mundo/UndoTree Focus',                 opts = {} },
  { '<leader>auf',   ':MundoShow<CR>:UndotreeFocus<CR>',                                                    description = 'Mundo/UndoTree Show',                  opts = {} },
  { '<leader>aut',   ':UndotreeFocus<CR>',                                                                  description = 'UndoTree Focus',                       opts = {} },

  -- buffers
  { '<leader>bc',    ':DB<CR>',                                                                             description = 'Peek and close Buffer (fzf)',          opts = {} },
  { '<leader>bn',    ':bn<CR>',                                                                             description = 'Next Buffer',                          opts = {} },
  { '<leader>bp',    ':bp<CR>',                                                                             description = 'Previous Buffer',                      opts = {} },
  { '<leader>l',     ':Buffers<CR>',                                                                        description = 'Open Buffers',                         opts = {} },
  { '<leader>i',     ':HFiles<CR>',                                                                         description = 'Files in Project',                     opts = {} },
  -- bclose
  { '<leader>ba',    ':Bdelete all<CR>',                                                                    description = 'Buffer Delete All',                    opts = {} },
  { '<leader>bS',    ':Bdelete select<CR>',                                                                 description = 'Buffer Delete Select',                 opts = {} },
  { '<leader>bk',    ':Bclose<CR>',                                                                         description = 'Buffer Close',                         opts = {} },
  { '<leader>bK',    ':Bdelete! this<CR>',                                                                  description = 'Buffer Delete This',                   opts = {} },
  { '<leader>bh',    ':Bdelete hidden<CR>',                                                                 description = 'Buffer Delete Hidden',                 opts = {} },
  { '<leader>bm',    ':Bdelete menu<CR>',                                                                   description = 'Buffer Delete Menu',                   opts = {} },
  { '<leader>bo',    ':Bdelete other<CR>',                                                                  description = 'Buffer Delete Other',                  opts = {} },
  -- windows
  { '<leader>ws',    ':sp<CR>',                                                                             description = 'Split Horizontal',                     opts = {} },
  { '<leader>wv',    ':vs<CR>',                                                                             description = 'Split Vertical',                       opts = {} },
  { '<leader>wd',    '<C-W>c',                                                                              description = 'Close Window',                         opts = {} },
  { '<leader>;',     ':Win<CR>',                                                                            description = 'WinVim',                               opts = { silent = true } },
  { '<leader>.',     ':call win#Win(1)<CR>',                                                                description = 'WinVim Once',                          opts = { silent = true } },
  { '<leader>M',     ':MaximizerToggle<CR>',                                                                description = 'Maximizer Toggle',                     opts = {} },
  -- d - debug
  --
  -- -- DBUI
  { '<leader>doo',   ':DBUIToggle<CR>',                                                                     description = 'DBUI Toggle',                          opts = {} },
  { '<leader>dor',   ':DBUI_Redraw<CR>',                                                                    description = 'DBUI Redraw',                          opts = {} },
  { '<leader>doi',   ':DBUILastQueryInfo<CR>',                                                              description = 'DBUI Last Query Info',                 opts = {} },
  { '<leader>doE',   '<Plug>(DBUI_EditBindParameters)',                                                     description = 'DBUI Edit Bing Parameters',            opts = {} },
  { '<leader>dot',   '<Plug>(DBUI_ToggleResultLayout)',                                                     description = 'DBUI Toggle Result Layout',            opts = {} },
  --> DBUI


  -- e - errors
  { '<leader>el',    ':<C-u>CocList diagnostics<CR>',                                                       description = 'Coc Diagnostics',                      opts = {} },
  -- f
  -- - files
  { '<leader>fs',    ':wa<CR>',                                                                             description = 'Save All',                             opts = {} },
  { '<leader>fc',    ":CocSearch <C-R>=expand('<cword>')<CR><CR>",                                          description = 'Coc Search Word (new Window)',         opts = { silent = true } },
  { '<leader>fx',    ":CocSearch -w <C-R>=expand('<cword>')<CR><CR>",                                       description = 'Coc Search Word (new Window)',         opts = { silent = true } },
  { '<leader>fer',   ':so ~/.config/nvim/init.vim<CR>',                                                     description = 'Source Neovim Configuration',          opts = {} },
  { '<leader>fed',   ':e ~/.config/nvim/neovim.vim<CR>',                                                    description = 'Open Neovim Configuration',            opts = {} },
  { '<leader>feU',   ':PU<CR>',                                                                             description = 'Plug Update',                          opts = {} },
  { '<leader>feI',   ':PlugInstall<CR>',                                                                    description = 'Plug Install',                         opts = {} },
  { '<leader>fi',    ':<C-u>CocList --interactive --ignore-case --numbe-select --auto-preview symbols<CR>', description = 'Coc Find Symbols',                     opts = {} },

  -- - fzf
  { '<leader>fF',    ':Files<CR>',                                                                          description = 'Files (fzf)',                          opts = {} },
  { '<leader>fG',    ':GFiles<CR>',                                                                         description = 'Git Files (fzf)',                      opts = {} },
  { '<leader>fg',    ':GFiles?<CR>',                                                                        description = 'Git Changed Files (fzf)',              opts = {} },
  { '<leader>fr',    ':History?<CR>',                                                                       description = 'Recent Files / Files History (fzf)',   opts = {} },
  { '<leader>f/',    ':History/<CR>',                                                                       description = 'Search History (fzf)',                 opts = {} },
  { '<leader>f;',    ':History:<CR>',                                                                       description = 'Command History (fzf)',                opts = {} },
  { '<leader>fm',    ':Marks<CR>',                                                                          description = 'Marks (fzf)',                          opts = {} },
  { '<leader>ft',    ':Tags<CR>',                                                                           description = 'Tags (fzf)',                           opts = {} },
  { '<leader>fw',    ':Find<CR>',                                                                           description = 'Find Work at caret (fzf)',             opts = {} },

  -- g - git
  { '<leader>gs',    ':Git<CR>',                                                                            description = 'Git Status (fugitive)',                opts = { silent = true } },
  { '<leader>gc',    ':Commits<CR>',                                                                        description = 'Git Commits (fzf)',                    opts = { silent = true } },
  { '<leader>gP',    ':Git push<CR>',                                                                       description = 'Git Push (fugitive)',                  opts = { silent = true } },
  { '<leader>gg',    ':LazyGit<CR>',                                                                        description = 'LazyGit',                              opts = { silent = true } },

  -- g - Goto...
  { 'gd',            '<Plug>(coc-definition)',                                                              description = 'Coc go to definition',                 opts = { silent = true } },
  { 'gd',            '<Plug>(coc-definition)',                                                              description = 'Coc go to definition',                 opts = { silent = true } },
  { 'gD',            ":call CocAction('definitionHover')<CR>",                                              description = 'Definition Hover',                     opts = { silent = true } },
  { 'gS',            ":call CocAction('jumpDefinition', 'split')<CR>",                                      description = 'Jump Definition Horizontal Split',     opts = { silent = true } },
  { 'gV',            ":call CocAction('jumpDefinition', 'vsplit')<CR>",                                     description = 'Jump Definition Vertical Split',       opts = { silent = true } },
  { 'gO',            ":call CocAction('showOutgoingCalls', 'split')<CR>",                                   description = 'Coc Show Outgoing Calls',              opts = { silent = true } },
  { 'gL',            ":call CocAction('showIncomingCalls', 'split')<CR>",                                   description = 'Coc Show Incoming Calls',              opts = { silent = true } },
  { 'gy',            "<Plug>(coc-type-definition)",                                                         description = 'Coc Type Definition',                  opts = { silent = true } },
  { 'gT',            "<Plug>(coc-type-implementation)",                                                     description = 'Coc Type Implementation',              opts = { silent = true } },
  { 'gI',            "<Plug>(coc-implementation)",                                                          description = 'Coc Implementation',                   opts = { silent = true } },
  { 'gr',            "<Plug>(coc-references)",                                                              description = 'Coc References',                       opts = { silent = true } },
  { 'gU',            "<Plug>(coc-references-used)",                                                         description = 'Coc References Used',                  opts = { silent = true } },
  { 'gR',            "<Plug>(coc-refactor)",                                                                description = 'Coc Refactor',                         opts = { silent = true } },
  -- h
  { '<leader>hl',    ':set list!<CR>',                                                                      description = 'Toggle Whitespace',                    opts = {} },
  -- { '<leader>hS', ':set list!<CR>', description = 'Toggle Whitespace', opts = {} },
  { '<leader>ht',    "mz:execute TabToggle()<CR>'z",                                                        description = 'Toggle Tab/Spaces',                    opts = {} },
  { '<leader>hr',    ":%retab!<CR>",                                                                        description = 'Retab',                                opts = {} },
  -- j
  -- j -- hop
  { '<leader>j1',    ':HopChar1MW<CR>',                                                                     description = 'HopChar1MW',                           opts = { silent = true } },
  { '<leader>j2',    ':HopChar2MW<CR>',                                                                     description = 'HopChar2MW',                           opts = { silent = true } },
  { '<leader>ja',    ':HopChar1!<CR>',                                                                      description = 'HopChar1',                             opts = { silent = true } },
  { '<leader>jl',    ':HopChar1CurrentLine<CR>',                                                            description = 'HopChar1 CurrentLine',                 opts = { silent = true } },
  { '<leader>jw',    ':HopWord<CR>',                                                                        description = 'HopWord',                              opts = { silent = true } },
  { '<leader>jp',    ':HopPattern<CR>',                                                                     description = 'HopPattern',                           opts = { silent = true } },
  { '<leader>jp',    ':HopPattern<CR>',                                                                     description = 'HopPattern',                           opts = { silent = true } },
  { '<leader>jv',    ':TSJJoin<CR>',                                                                        description = 'Join',                                 opts = { silent = true } },
  { '<leader>js',    ':TSJSplit<CR>',                                                                       description = 'Split',                                opts = { silent = true } },
  { '<leader>jj',    ':TSJToggle<CR>',                                                                      description = 'Toggle Join',                          opts = { silent = true } },
  { '<M-p>',         ':HopWord<CR>',                                                                        description = 'HopWord',                              opts = { silent = true } },


  -- o
  { '<leader>ff',    ':FM<CR>',                                                                             description = 'Format',                               opts = {} },
  -- { '<leader>oF', ':Fold<CR>', description = 'Fold', opts = {} },
  { '<leader>fo',    ':OR<CR>',                                                                             description = 'Organize Imports',                     opts = {} },
  { '<leader>fO',    ':ORGANIZEIMPORTS<CR>',                                                                description = 'Organize Imports',                     opts = {} },
  -- p
  { '<leader>pp',    ':CocList project<CR>',                                                                description = 'Coc Projects',                         opts = {} },
  -- { '<leader>oo', ':OR<CR>', description = 'Organize Imports', opts = {} },
  -- q
  { '<leader>qq',    ':wa<CR>',                                                                             description = 'Save All',                             opts = {} },
  -- s
  -- s -- search
  { '<leader>ss',    ':BLines<CR>',                                                                         description = 'Search Lines in Buffer (fzf)',         opts = {} },
  { '<leader>sl',    ':Lines<CR>',                                                                          description = 'Search Lines in Workspace (fzf)',      opts = {} },
  { '<leader>sw',    ':Windows<CR>',                                                                        description = 'Search Windows (fzf)',                 opts = {} },
  { '<leader>sr',    ':Rg<CR>',                                                                             description = 'Search With RG (fzf)',                 opts = {} },
  { '<leader>sR',    ':Rg!<CR>',                                                                            description = 'Search With RG Full Widht (fzf)',      opts = {} },
  { '<leader>sg',    ':GGrep<CR>',                                                                          description = 'Search file content With GGrep (fzf)', opts = {} },
  { '<leader>sa',    ':AGP<CR>',                                                                            description = 'Search file content With Ag (fzf)',    opts = {} },
  -- s -- spectre
  { '<leader>sv',
    {
      v = { ":lua require('spectre').open_visual()<CR>", description = 'Spectre Search & Replace Selection', opts = { noremap = true } },
      n = { ":lua require('spectre').open_visual()<CR>", description = 'Spectre Search & Replace Selection', opts = { noremap = true } }
    }
  },
  { '<leader>sw',  ":lua require('spectre').open_visual({ select_word = true })<CR>", description = 'Spectre Search & Replace Word At caret', opts = {} },
  { '<leader>sp',  ":lua require('spectre').open_file_search()<CR>",                  description = 'Spectre Search & Replace current file',  opts = {} },
  { '<leader>so',  ":lua require('spectre').open()<CR>",                              description = 'Spectre Search & Replace Open',          opts = {} },

  -- t
  -- test
  -- { '<leader>tn', ':TestNearest<CR>', description = 'Test Nearest', opts = { silent = true } },
  -- { '<leader>ti', ':TestNearest -strategy=floaterm<CR>', description = 'Test Nearest (floaterm)', opts = { silent = true } },
  -- { '<leader>tf', ':TestFile<CR>', description = 'Test File', opts = { silent = true } },
  -- { '<leader>ts', ':TestSuite<CR>', description = 'Test Suite', opts = { silent = true } },
  -- { '<leader>tl', ':TestLast<CR>', description = 'Test Last', opts = { silent = true } },
  -- { '<leader>tv', ':TestVisit<CR>', description = 'Test Visit', opts = { silent = true } },
  -- { '<leader>to', ':UltestSummary<CR>', description = 'Test UltestSummary', opts = { silent = true } },
  -- { '<leader>tu', ':Ultest<CR>', description = 'Test Ultest', opts = { silent = true } },
  -- { '<leader>tj', '<Plug>(ultest-output-jump)', description = 'Test Ultest Jump', opts = { silent = true } },
  -- { '<leader>tN', '<Plug>(ultest-run-nearest)', description = 'Test Ultest Nearest', opts = { silent = true } },
  -- { '<leader>tF', '<Plug>(ultest-run-file)', description = 'Test Ultest File', opts = { silent = true } },
  -- { '[t', '<Plug>(ultest-prev-fail)', description = 'Test Ultest Prev Failed', opts = { silent = true } },
  -- { ']t', '<Plug>(ultest-next-fail)', description = 'Test Ultest Next Failed', opts = { silent = true } },
  { '<leader>tf',  ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>',         description = 'Neotest File',                           opts = { silent = true } },
  { '<leader>tn',  ':lua require("neotest").run.run()<CR>',                           description = 'Neotest Nearest',                        opts = { silent = true } },
  { '<leader>tS',  ':lua require("neotest").run.stop()<cr>',                          description = 'Neotest Stop',                           opts = { silent = true } },
  { '<leader>ta',  ':lua require("neotest").run.attach()',                            description = 'Neotest Attach',                         opts = { silent = true } },
  { '<leader>ts',  ':Neotest summary<CR>',                                            description = 'Neotest summary',                        opts = { silent = true } },
  { '<leader>to',  ':Neotest output-panel<cr>',                                       description = 'Neotest Output Panel',                   opts = { silent = true } },
  { '<leader>tO',  ':Neotest output<cr>',                                             description = 'Neotest Output',                         opts = { silent = true } },
  { '<leader>tcc', ':Coverage<cr>',                                                   description = 'Coverage',                               opts = { silent = true } },
  { '<leader>tcl', ':CoverageLoad<cr>',                                               description = 'Coverage Load',                          opts = { silent = true } },
  { '<leader>tcs', ':CoverageShow<cr>',                                               description = 'Coverage Show',                          opts = { silent = true } },
  { '<leader>tcS', ':CoverageSummary<cr>',                                            description = 'Coverage Summary',                       opts = { silent = true } },
  { '<leader>tcT', ':CoverageToggle<cr>',                                             description = 'Coverage Toggle',                        opts = { silent = true } },
  { '<leader>tcC', ':CoverageClear<cr>',                                              description = 'Coverage Clear',                         opts = { silent = true } },
  -- { '<leader>to', ':UltestSummary<CR>',                                              description = 'Test UltestSummary',                     opts = { silent = true } },
  -- { '<leader>tu', ':Ultest<CR>',                                                     description = 'Test Ultest',                            opts = { silent = true } },
  -- { '<leader>tj', '<Plug>(ultest-output-jump)',                                      description = 'Test Ultest Jump',                       opts = { silent = true } },
  -- { '<leader>tN', '<Plug>(ultest-run-nearest)',                                      description = 'Test Ultest Nearest',                    opts = { silent = true } },
  -- { '<leader>tF', '<Plug>(ultest-run-file)',                                         description = 'Test Ultest File',                       opts = { silent = true } },
  -- { '[t',         '<Plug>(ultest-prev-fail)',                                        description = 'Test Ultest Prev Failed',                opts = { silent = true } },
  -- { ']t',         '<Plug>(ultest-next-fail)',                                        description = 'Test Ultest Next Failed',                opts = { silent = true } },

  -- x
  { '<leader>xj',  ':SplitjoinJoin<CR>',                                              description = 'Splitjoin Join',                         opts = {} },
  { '<leader>xs',  ':SplitjoinSplit<CR>',                                             description = 'Splitjoin Split',                        opts = {} },
  -- Y
  { '<leader>y',   '"+y',                                                             description = 'Yank to clipboard',                      opts = {} },
  { '<leader>Y',   '"+p',                                                             description = 'Paste from clipboard',                   opts = {} },
  -- C (Code)
  { '<leader>cz',  ':CocRestart<CR>',                                                 description = 'Coc Restart',                            opts = { silent = true } },
  { '<leader>cu',  ':CocUpdate<CR>',                                                  description = 'Coc Update',                             opts = { silent = true } },
  { '<leader>cr',  '<Plug>(coc-rename)',                                              description = 'Coc Rename',                             opts = { silent = true } },
  { '<leader>cw',  ":exe 'CocList -I --input='.expand('<cword>').' grep'<CR>",        description = 'Coc Find Word At Caret',                 opts = { silent = true } },
  { '<leader>cF',
    {
      v = { '<Plug>(coc-format-selected)', description = 'Coc Code Format Selected', opts = { silent = true } },
      n = { '<Plug>(coc-format-selected)', description = 'Coc Code Format Selected', opts = { silent = true } }
    }
  },
  { '<leader>co',
    {
      v = { '<Plug>(coc-codeaction-line)', description = 'Coc Code action line', opts = { silent = true } },
      n = { '<Plug>(coc-codeaction-line)', description = 'Coc Code action line', opts = { silent = true } }
    }
  },
  { '<leader>cv',
    {
      v = { '<Plug>(coc-codeaction-selected)', description = 'Coc Code action selected', opts = { silent = true } },
      n = { '<Plug>(coc-codeaction-selected)', description = 'Coc Code action selected', opts = { silent = true } }
    }
  },
  { '<leader>cll', ':CocList<CR>',                         description = 'CocList',             opts = { silent = true } },
  { '<leader>cls', ':<C-u>CocList -I symbols<CR>',         description = 'Coc Symbols',         opts = { silent = true, nowait = true } },
  { '<leader>cld', ':CocList diagnostics<CR>',             description = 'CocList Diagnostics', opts = { silent = true, nowait = true } },
  { '<leader>cle', ':CocList extensions<CR>',              description = 'CocList Extensions',  opts = { silent = true, nowait = true } },
  { '<leader>clc', ':CocList commands<CR>',                description = 'CocList Commands',    opts = { silent = true, nowait = true } },
  { '<leader>clo', ':CocList outline<CR>',                 description = 'CocList Outline',     opts = { silent = true, nowait = true } },
  { '<leader>cls', ':CocList -I symbols<CR>',              description = 'CocList Symbols',     opts = { silent = true, nowait = true } },
  { '<leader>cln', ':CocNext<CR>',                         description = 'CocList Next',        opts = { silent = true, nowait = true } },
  { '<leader>clp', ':CocPrev<CR>',                         description = 'CocList Previous',    opts = { silent = true, nowait = true } },
  { '<leader>clr', ':CocListResume<CR>',                   description = 'CocList Resume',      opts = { silent = true, nowait = true } },
  { '<leader>cpl', ':CocList project<CR>',                 description = 'Coc List Projects',   opts = {} },
  { '<leader>css', ':CocCommand session.save<CR>',         description = 'Coc Session Save',    opts = {} },
  { '<leader>csl', ':CocCommand session.load<CR>',         description = 'Coc Session Load',    opts = {} },
  { '<leader>cL',  '<Plug>(coc-codelens-action)',          description = 'CocCodelens Actions', opts = { silent = true, nowait = true } },
  { '<leader>ci',  '<Plug>(coc-diagnostic-info)',          description = 'Coc Diagnostic Info', opts = { silent = true, nowait = true } },
  { '<leader>u',   '<Plug>(coc-diagnostic-info)',          description = 'Coc Diagnostic Info', opts = { silent = true, nowait = true } },
  { '<leader>ce',  '<Plug>(coc-float-hide)',               description = 'Coc Float Hide',      opts = { silent = true, nowait = true } },
  { '<leader>cj',  '<Plug>(coc-float-jump)',               description = 'Coc Float Jump',      opts = { silent = true, nowait = true } },
  { '<leader>cO',  '<Plug>(coc-openlink)',                 description = 'Coc Open Link',       opts = { silent = true, nowait = true } },
  { '<leader>ck',  ':CocCommand docthis.documentThis<cr>', description = 'Document this',       opts = { silent = true, nowait = true } },
  { '<leader>cf',  ':CocList files<cr>',                   description = 'Coc Files',           opts = { silent = true, nowait = true } },
  { "<A-'>",
    n = { '<Plug>(coc-range-select)', description = 'Coc Range Select', opts = { silent = true, nowait = true } },
    v = { '<Plug>(coc-range-select)', description = 'Coc Range Select', opts = { silent = true, nowait = true } },
  },
  { "<A-;>",
    n = { '<Plug>(coc-range-select)', description = 'Coc Range Select', opts = { silent = true, nowait = true } },
    v = { '<Plug>(coc-range-select-backward)', description = 'Coc Range Select Backward', opts = { silent = true, nowait = true } },
  },
  { '<leader>ca',
    {
      n = { '<Plug>(coc-codeaction)', description = 'Coc Code Action', opts = { silent = true, nowait = true } },
      v = { '<Plug>(coc-codeaction-selected)', description = 'Coc Code Action Selected', opts = { silent = true, nowait = true } }
    }
  },
  { '<leader>cP',         'yap<S-}p',                                                                                                      description = 'Paste from clipboard',                       opts = {} },
  -- Telescope
  -- { '<leader>fb', ":lua require('telescope.builtin').live_grep()<CR>", description = 'Telescope LiveGrep', opts = {} },
  { '<leader><leader>gb', ":lua require('telescope.builtin').git_branches()<CR>",                                                          description = 'Telescope GitBranches',                      opts = {} },
  { '<leader><leader>gs', ":lua require('telescope.builtin').git_status()<CR>",                                                            description = 'Telescope GitStatus',                        opts = {} },
  { '<leader><leader>gS', ":lua require('telescope.builtin').git_stash()<CR>",                                                             description = 'Telescope GitStashes',                       opts = {} },
  { '<leader><leader>gc', ":lua require('telescope.builtin').git_commits()<CR>",                                                           description = 'Telescope GitCommits',                       opts = {} },
  { '<leader><leader>gC', ":lua require('telescope.builtin').git_bcommits()<CR>",                                                          description = 'Telescope GitCommits Buffer',                opts = {} },
  { '<leader><leader>/',  ":lua require('telescope.builtin').search_history()<CR>",                                                        description = 'Telescope Search History',                   opts = {} },
  { '<leader><leader>:',  ":lua require('telescope.builtin').command_history()<CR>",                                                       description = 'Telescope Command History',                  opts = {} },
  { '<leader><leader>p',  ":lua require('telescope.builtin').live_grep()<CR>",                                                             description = 'Telescope Live Grep',                        opts = {} },
  { '<leader><leader>a',  ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>",                                             description = 'Telescope Current Buffer Fuzzy Find',        opts = {} },
  { '<leader><leader>d',  ":lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>", description = 'Telescope Find Files Dropdown',              opts = {} },
  { '<leader><leader>f',  ":lua require('telescope.builtin').find_files()<CR>",                                                            description = 'Telescope Find Files',                       opts = {} },
  { '<leader><leader>s',  ":lua require('telescope.builtin').grep_string()<CR>",                                                           description = 'Telescope Grep String',                      opts = {} },
  { '<leader><leader>S',  ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For')})<CR>",                       description = 'Telescope Grep String (input word)',         opts = {} },
  { '<leader><leader>w',  ":lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>')})<CR>",                       description = 'Telescope Grep String (word at caret)',      opts = {} },
  { '<leader><leader>l',  ":lua require('telescope.builtin').buffers()<CR>",                                                               description = 'Telescope Buffers',                          opts = {} },
  -- { '<leader><leader>B', ":lua require('telescope.builtin').file_browser()<CR>", description = 'Telescope File Browser', opts = {} },
  { '<leader><leader>b',  ":lua require('telescope.builtin').builtin()<CR>",                                                               description = 'Telescope Builtins',                         opts = {} },
  { '<leader><leader>c',  ":lua require('telescope.builtin').commands()<CR>",                                                              description = 'Telescope Commands',                         opts = {} },
  { '<leader><leader>o',  ":lua require('telescope.builtin').oldfiles()<CR>",                                                              description = 'Telescope OldFiles',                         opts = {} },
  { '<leader><leader>r',  ":lua require('telescope.builtin').oldfiles({ cwd_only = true })<CR>",                                           description = 'Telescope OldFiles CWD current working dir', opts = {} },
  { '<leader><leader>P',  ":lua require('telescope.builtin').spell_suggest()<CR>",                                                         description = 'Telescope Spell Suggest',                    opts = {} },
  { '<leader><leader>j',  ":lua require('telescope.builtin').jumplist()<CR>",                                                              description = 'Telescope JumpList',                         opts = {} },
  { '<leader><leader>m',  ":lua require('telescope.builtin').marks()<CR>",                                                                 description = 'Telescope Marks',                            opts = {} },
  { '<leader><leader>E',  ":lua require('telescope.builtin').symbols()<CR>",                                                               description = 'Telescope Symbols',                          opts = {} },
  { '<leader><leader>t',  ":TodoTelescope<CR>",                                                                                            description = 'Telescope Todos',                            opts = {} },
  { '<leader><leader>e',  ":lua require('telescope-config').search_vim_files()<CR>",                                                       description = 'Telescope Vim Files',                        opts = {} },
  { '<leader><leader>e',  ":lua require('telescope-config').search_vim_files()<CR>",                                                       description = 'Telescope Vim Files',                        opts = {} },
  { '<leader><leader>gb', 'yap<S-}p',                                                                                                      description = 'Paste from clipboard',                       opts = {} },
  { '[s',                 '[s',                                                                                                            description = 'Next Spell',                                 opts = {} },
  { ']s',                 ']s',                                                                                                            description = 'Prev Spell',                                 opts = {} },

};


require('legendary').keymaps(keymaps)
