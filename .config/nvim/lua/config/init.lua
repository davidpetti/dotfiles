vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("config.set")
require("config.remap")

local opts = {
	rtp = {
		disabled_plugins = {
			"netrw",
			"netrwPlugin",
		},
	},
}

local plugins = "plugins"

require("lazy").setup(plugins, opts)
