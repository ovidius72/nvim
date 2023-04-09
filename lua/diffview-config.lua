local action = require('diffview.actions')

require'diffview'.setup {
  diff_binaries = false,    -- Show diffs for binaries
  file_panel = {
    win_config = {
      position = "left",      -- One of 'left', 'right', 'top', 'bottom'
      width = 35,             -- Only applies when position is 'left' or 'right'
      height = 10,            -- Only applies when position is 'top' or 'bottom'
    }
  },
  use_icons = true,        -- Requires nvim-web-devicons
  keymaps = {
    disable_defaults = false,                   -- Disable the default key bindings
    -- The `view` bindings are active in the diff buffers, only when the current
    -- tabpage is a Diffview.
    view = {
      ["<tab>"]     = action.select_next_entry,  -- Open the diff for the next file
      ["<s-tab>"]   = action.select_prev_entry,  -- Open the diff for the previous file
      ["<leader>e"] = action.focus_files,        -- Bring focus to the files panel
      ["<leader>b"] = action.toggle_files,       -- Toggle the files panel.
      ["[g"] = action.next_entry,       -- Toggle the files panel.
      ["]g"] = action.prev_entry,       -- Toggle the files panel.
    },
    file_panel = {
      ["j"]             = action.next_entry,         -- Bring the cursor to the next file entry
      ["<down>"]        = action.next_entry,
      ["k"]             = action.prev_entry,         -- Bring the cursor to the previous file entry.
      ["<up>"]          = action.prev_entry,
      ["<cr>"]          = action.select_entry,       -- Open the diff for the selected entry.
      ["o"]             = action.select_entry,
      ["<2-LeftMouse>"] = action.select_entry,
      ["-"]             = action.toggle_stage_entry, -- Stage / unstage the selected entry.
      ["S"]             = action.stage_all,          -- Stage all entries.
      ["U"]             = action.unstage_all,        -- Unstage all entries.
      ["X"]             = action.restore_entry,      -- Restore entry to the state on the left side.
      ["R"]             = action.refresh_files,      -- Update stats and entries in the file list.
      ["<tab>"]         = action.select_next_entry,
      ["<s-tab>"]       = action.select_prev_entry,
      ["<leader>e"]     = action.focus_files,
      ["<leader>b"]     = action.toggle_files,
    }
  }
}
