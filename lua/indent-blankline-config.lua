require("indent_blankline").setup {
  enabled = true,
  -- indent_level = 10,
  -- max_indent_increase = 10,
  show_current_context = true,
  show_current_context_start = false,
  show_current_context_start_on_current_line = false,
  use_treesitter = true,
  char = '│',
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


