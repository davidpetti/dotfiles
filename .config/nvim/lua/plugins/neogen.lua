return {
	"danymat/neogen",
	keys = {
		{
			"<leader>nf",
			function()
				require("neogen").generate()
			end,
			desc = "Generate doc comment",
		},
	},
	opts = {
		snippet_engine = "luasnip",
	},
}
