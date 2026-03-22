return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			mode = "n",
			desc = "Find files",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").git_files()
			end,
			mode = "n",
			desc = "Find git files",
		},
		{
			"<leader>fs",
			function()
				require("telescope.builtin").live_grep()
			end,
			mode = "n",
			desc = "Grep string",
		},
	},
	opts = {
		extensions = {
			["ui-select"] = require("telescope.themes").get_dropdown({}),
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("ui-select")
	end,
}
