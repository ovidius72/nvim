require("neotest").setup({
  adapters = {
    require("neotest-jest")({
        jestCommand = "npm test --"
    }),
    require("neotest-plenary"),
    require("neotest-vim-test")({
      ignore_file_types = { "python", "vim", "lua" },
    }),
  },
})
