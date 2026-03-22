return {
	"mbbill/undotree",
	lazy = false,
    keys = {
        {
            "<leader>u",
            function() vim.cmd.UndotreeToggle() end,
            mode = "n",
            desc = "Undo tree toggle",
        },
    },
}
