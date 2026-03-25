return {
	"tpope/vim-fugitive",
	keys = {
		{
			"<leader>gg",
			function()
				vim.cmd("tab Git")
			end,
			mode = "n",
			desc = "Git Status",
		},
	},
}
