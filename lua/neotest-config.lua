require("neotest").setup({
  adapters = {
    -- require("neotest-jest")({
    --   jestCommand = "npm test --",
    --   jest_test_discovery = false,
    -- }),
    require("neotest-plenary"),
    require("neotest-vim-test")({
      ignore_file_types = { "python", "vim", "lua" },
    }),
  },
})
