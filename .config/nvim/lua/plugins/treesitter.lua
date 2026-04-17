return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local ts = require("nvim-treesitter")

		ts.setup({
			install_dir = vim.fn.stdpath("data") .. "/site",
		})

		vim.api.nvim_create_autocmd("FileType", {
			callback = function(ev)
				local lang = vim.treesitter.language.get_lang(vim.bo[ev.buf].filetype)
				if lang and vim.treesitter.language.add(lang) then
					vim.treesitter.start(ev.buf, lang)
				end
			end,
		})
	end,
}
