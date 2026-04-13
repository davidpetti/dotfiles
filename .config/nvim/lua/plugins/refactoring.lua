return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	lazy = false,
	opts = {},
    keys = {
		{
			"<leader>re",
			function()
				return require("refactoring").refactor("Extract Function")
			end,
			mode = "x",
            expr = true,
			desc = "Extract Function",
		},
		{
			"<leader>rv",
			function()
				return require("refactoring").refactor("Extract Variable")
			end,
			mode = "x",
            expr = true,
			desc = "Extract Variable",
		},
		{
			"<leader>ri",
			function()
				return require("refactoring").refactor("Inline Variable")
			end,
			mode = "x",
            expr = true,
			desc = "Inline Variable",
		},
		{
			"<leader>rI",
			function()
				return require("refactoring").refactor("Inline Function")
			end,
			mode = "x",
            expr = true,
			desc = "Inline Function",
		},
    },
}
