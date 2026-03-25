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
                require("telescope.builtin").current_buffer_fuzzy_find()
			end,
			mode = "n",
			desc = "fuzzy find string in current buffer",
		},
		{
			"<leader>fS",
			function()
				require("telescope.builtin").live_grep()
			end,
			mode = "n",
			desc = "Grep string",
		},
		{
			"<leader>gd",
			function()
				require("telescope.builtin").lsp_definitions()
			end,
			mode = "n",
			desc = "LSP get definitions",
		},
		{
			"<leader>gr",
			function()
				require("telescope.builtin").lsp_references()
			end,
			mode = "n",
			desc = "LSP get references",
		},
		{
			"<leader>ge",
			function()
                require("telescope.builtin").diagnostics()
			end,
			mode = "n",
			desc = "LSP get diagnostics",
		},
		{
			"<leader>g?",
			function()
                require("telescope.builtin").keymaps()
			end,
			mode = "n",
			desc = "Keymaps",
		},
		{
			"<leader>gx",
			function()
                require("telescope.builtin").commands()
			end,
			mode = "n",
			desc = "Commands",
		},
		{
			"<leader>gs",
			function()
                require("telescope.builtin").git_status()
			end,
			mode = "n",
			desc = "Git status",
		},
		{
			"<leader>gb",
			function()
                require("telescope.builtin").git_branches()
			end,
			mode = "n",
			desc = "Git branches",
		},
		{
			"<leader>gc",
			function()
                require("telescope.builtin").git_commits()
			end,
			mode = "n",
			desc = "Git commits",
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
