return {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    opts = {},
    keys = {
		{
			"<leader>te",
			function()
				require("lsp_lines").toggle()
			end,
			mode = "n",
			desc = "LSP lines toggle",
		},
    },
    config = function()
        vim.diagnostic.config({
            virtual_text = false,
        })
    end,
}
