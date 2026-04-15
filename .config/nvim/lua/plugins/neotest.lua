return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"antoinemadec/FixCursorHold.nvim",
		"orjangj/neotest-ctest",
	},

	config = function()
		local neotest = require("neotest")

		neotest.setup({
			adapters = {
				require("neotest-ctest").setup({
					build_dir = "build",
				}),
			},
		})
	end,

	keys = {
		{
			"<leader>tn",
			function()
				require("neotest").run.run()
			end,
			desc = "Test: Run nearest",
		},
		{
			"<leader>tf",
			function()
				require("neotest").run.run(vim.fn.expand("%"))
			end,
			desc = "Test: Run file",
		},
		{
			"<leader>ts",
			function()
				require("neotest").run.run(vim.loop.cwd())
			end,
			desc = "Test: Run suite",
		},
		{
			"<leader>tl",
			function()
				require("neotest").run.run_last()
			end,
			desc = "Test: Run last",
		},
		{
			"<leader>to",
			function()
				require("neotest").output.open({ enter = true })
			end,
			desc = "Test: Show output",
		},
		{
			"<leader>tO",
			function()
				require("neotest").output_panel.toggle()
			end,
			desc = "Test: Toggle output panel",
		},
		{
			"<leader>tt",
			function()
				require("neotest").summary.toggle()
			end,
			desc = "Test: Toggle summary",
		},
	},
}
