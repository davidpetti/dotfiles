return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	keys = {
		{ "<leader>e", "<cmd>NvimTreeToggle<cr>", mode = "n", desc = "Toggle file tree" },
	},
	opts = {
		sort = {
			sorter = "case_sensitive",
		},
		view = {
			width = 30,
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			dotfiles = false,
		},
	},
}
