require('neotest').setup({
  icons = {
    expanded = "",
    -- child_prefix = "",
    -- child_indent = "",
    -- final_child_prefix = "",
    -- non_collapsible = "",
    collapsed = "",

    passed = "",
    running = "",
    failed = "",
    unknown = "",
  },
  consumers = {
    -- overseer = require("neotest.consumers.overseer"),
    -- always_open_output = function(client)
    --   local async = require("neotest.async")

    --   client.listeners.results = function(adapter_id, results)
    --     local row = async.fn.getpos(".")[2] - 1
    --     if not position then
    --       return
    --     end
    --     if not results[pos_id] then
    --       return
    --     end
    --     neotest.output.open({ position_id = pos_id, adapter = adapter_id })
    --   end
    -- end,
  },
  output = {
    enabled = true,
    -- open_on_run = true,
  },
  adapters = {
    -- require('neotest-vim-test')({ ignore_file_types = { "python", "vim", "lua" } }),
    require('neotest-jest')({
      jestCommand = "npm run test:staged --",
      -- jestCommand = "npm run test:staged:no-watch --",
      -- jestConfigFile = 'apps/ms-user/jest.config.ts',
      cwd = function(path)
        return vim.fn.getcwd()
      end
    })
  }
})

require("coverage").setup({
  auto_reload = true,
  auto_reload_timeout_ms = 1000,
  -- lcov_file = 'coverage/lcov.info',
  signs = {
    covered = { priority = 100 }, -- use a higher value than diagnostics or gitsigns
    uncovered = { priority = 100 },
  },
})
require("coverage").setup({
  commands = true, -- create commands
  highlights = {
    -- customize highlight groups created by the plugin
    covered = { fg = "#339900" }, -- supports style, fg, bg, sp (see :h highlight-gui)
    uncovered = { fg = "#ff5468" },
    partial = { fg = "#ffcc00" },
  },
  signs = {
    -- use your own highlight groups or text markers
    covered = { hl = "CoverageCovered", text = "▎" },
    uncovered = { hl = "CoverageUncovered", text = "▎" },
    partial = { hl = "CoverageUncovered", text = "▎" },
  },
  summary = {
    -- customize the summary pop-up
    min_coverage = 80.0, -- minimum coverage threshold (used for highlighting)
  },
  lang = {
    -- customize language specific settings
  },
})

vim.api.nvim_create_autocmd("ColorScheme", {
  desc = "Add nvim-coverage highlight",
  callback = function()
    vim.cmd([[
        hi CoverageCovered guifg=#339900
        hi CoverageUncovered guifg=#ff5468
        hi CoveragePartial guifg=#ffcc00
        hi CoverageSummaryHeader gui=bold,underline guisp=fg
        hi! link CoverageSummaryBorder FloatBorder
        hi! link CoverageSummaryNormal NormalFloat
        hi! link CoverageSummaryCursorLine CursorLine
        hi! link CoverageSummaryPass CoverageCovered
        hi! link CoverageSummaryFail CoverageUncovered
      ]])
  end,
})
