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

		ts.install({
			"lua",
			"javascript",
			"typescript",
			"go",
			"python",
			"java",
			"html",
			"css",
			"json",
			"tsx",
			"c",
			"vim",
			"vimdoc",
			"rust",
			"markdown",
			"markdown_inline",
			"yaml",
			"bash",
			"dockerfile",
			"gitignore",
			"toml",
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
