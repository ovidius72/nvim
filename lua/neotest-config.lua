require('neotest').setup({
  icons       = {
    expanded = "",
    -- child_prefix = "",
    -- child_indent = "",
    -- final_child_prefix = "",
    non_collapsible = "-",
    collapsed = "",
    passed = "",
    running = "",
    failed = "",
    unknown = "",
  },
  consumers   = {
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
  diagnostics = {
    enabled = true,
    severity = 1
  },
  state       = {
    enabled = true
  },
  output      = {
    enabled = true,
    open_on_run = true,
  },
  status      = {
    virtual_text = true,
  },
  adapters    = {
    require('neotest-vitest')({
      vitestCommand = "npm run test:staged:no-watch --",
      cwd = function()
        return vim.fn.getcwd()
      end

    }),
    -- require('neotest-vim-test')({ ignore_file_types = { "python", "vim", "lua" } }),
    require('neotest-jest')({
      -- jestCommand = "npm run test:staged --",
      jestCommand = "npm run test:staged:no-watch --",
      -- jestConfigFile = 'apps/ms-user/jest.config.ts',
      cwd = function()
        return vim.fn.getcwd()
      end
    }),
    require('neotest-java')({})
  }
})

require("coverage").setup({
  commands = true, -- create commands
  auto_reload = true,
  auto_reload_timeout_ms = 1000,
  highlights = {
    -- customize highlight groups created by the plugin
    covered = { fg = "#339900" }, -- supports style, fg, bg, sp (see :h highlight-gui)
    uncovered = { fg = "#ff5468" },
    partial = { fg = "#ffcc00" },
  },
  signs = {
    -- use your own highlight groups or text markers
    covered = { priority = 100, hl = "CoverageCovered", text = "▎" },
    uncovered = { priority = 100, hl = "CoverageUncovered", text = "▎" },
    partial = { priority = 100, hl = "CoveragePartial", text = "▎" },
  },
  summary = {
    -- customize the summary pop-up
    min_coverage = 80.0, -- minimum coverage threshold (used for highlighting)
  },
  lang = {
    -- customize language specific settings
  },
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" }, -- any file extension you're interested in
  callback = function()
    -- place (show) the signs immediately after loading
    require("coverage").load(true)
  end,
})
