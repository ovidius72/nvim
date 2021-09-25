require("sidebar-nvim").setup({
    disable_default_keybindings = 0,
    bindings = { ["q"] = function() require("sidebar-nvim").close() end },
    open = true,
    side = "left",
    initial_width = 35,
    update_interval = 1000,
    sections = { "datetime", "git-status", },
    section_separator = "-----"
})

