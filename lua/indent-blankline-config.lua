vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]]

require("indent_blankline").setup {
  enabled = true,
  -- indent_level = 10,
  -- max_indent_increase = 10,
  show_current_context = true,
  show_current_context_start = true,
  show_current_context_start_on_current_line = false,
  use_treesitter = true,
  show_end_of_line = true,
  space_char_blankline = " ",
  -- char = '│',
  -- char = '¦',
  -- char = '┆',
  char = '┊',
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  },
  -- char_highlight_list = {
  --   "IndentBlanklineIndent1",
  --   "IndentBlanklineIndent2",
  -- },
  -- space_char_highlight_list = {
  --   "IndentBlanklineIndent1",
  --   "IndentBlanklineIndent2",
  -- },
  -- show_trailing_blankline_indent = false,
  strict_tabs = true,
  -- context_highlight_list = {
  --   "Include"
  -- },
  context_patterns = {
    "typescriptStatementKeyword",
    "typescriptParenExp",
    "typescriptBlock",
    "tsTag",
    "typeDefinition",
    "tsxElement",
    "tsxTagName",
    "func_literal",
    "try",
    "php",
    "except",
    "argument_list",
    "dictionary",
    "class",
    "function",
    "method",
    "^if",
    "^else",
    "^return",
    "tag",
    "jsx",
    "^while",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "luaTable"
  },
  buftype_exclude = {
    "terminal"
  },
  filetype_exclude = {
    "terminal",
    "help"
  }
  -- test = {
  --   dfix = "ciao"
  -- }
}
