return {
	"tpope/vim-fugitive",
    keys = {
        {
            "<leader>gg",
            function() vim.cmd.Git() end,
            mode = "n",
            desc = "Git Status",
        },
    },
}
