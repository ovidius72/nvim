local gps = require('nvim-gps')

gps.setup({
	icons = {
		["class-name"] = ' ',      -- Classes and class-like objects
		["function-name"] = ' ',   -- Functions
		["method-name"] = ' '      -- Methods (functions inside class-like objects)
	},
	languages = {                    -- You can disable any language individually here
		["bash"] = true,
		["c"] = true,
		["cpp"] = true,
		["javascript"] = true,
		["typescript"] = true,
		["typescriptreact"] = true,
		["tsx"] = true,
		["lua"] = true,
	},
	separator = ' > ',
})
