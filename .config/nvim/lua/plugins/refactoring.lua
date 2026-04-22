return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"lewis6991/async.nvim",
	},
	lazy = false,
	opts = {},
	keys = {
		{
			"<leader>re",
			function()
				return require("refactoring").extract_func()
			end,
			mode = "x",
			expr = true,
			desc = "Extract Function",
		},
		{
			"<leader>rv",
			function()
				return require("refactoring").extract_var()
			end,
			mode = "x",
			expr = true,
			desc = "Extract Variable",
		},
		{
			"<leader>ri",
			function()
				return require("refactoring").inline_var()
			end,
			mode = { "n", "x" },
			expr = true,
			desc = "Inline Variable",
		},
		{
			"<leader>rI",
			function()
				return require("refactoring").inline_func()
			end,
			mode = { "n", "x" },
			expr = true,
			desc = "Inline Function",
		},
		{
			"<leader>rs",
			function()
				require("refactoring").select_refactor()
			end,
			mode = { "n", "x" },
			desc = "Select Refactor",
		},
	},
}
