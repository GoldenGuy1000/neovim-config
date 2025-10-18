return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },

			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<Tab>",
					node_incremental = "<Tab>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},

			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"yaml",
				"html",
				"xml",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"vimdoc",
				"c",
				"cpp",
				"make",
				"c_sharp",
				"rust",
			},
		})
	end,
}
