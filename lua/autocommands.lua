vim.api.nvim_create_autocmd({"CursorMoved", "BufWinEnter", "BufFilePost" }, {
    callback = function ()
      local winbar_filetype_exclude = {
        "help", "coc-explorer", "fern", "javascript", "startify", "dashboard", "packer", "nogitstatus", "NvimTree", "Trouble", "alpha", "lir", "Outline", "spectre_panel"
      }
      if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
        vim.opt_local.winbar = nil
      end
      local value = require('winbar').gps()
      if value == nil then
        value = require('winbar').filename()
      end
      vim.opt_local.winbar = value
    end
  })
