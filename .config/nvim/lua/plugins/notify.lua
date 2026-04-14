return {
	"rcarriga/nvim-notify",
	config = function()
		local function set_notify_bg()
			local bg = vim.api.nvim_get_hl(0, { name = "Normal" }).bg
			if bg then
				vim.api.nvim_set_hl(0, "NotifyBackground", { bg = bg })
			end
		end

		set_notify_bg()

		vim.api.nvim_create_autocmd("ColorScheme", {
			callback = set_notify_bg,
		})

		require("notify").setup({
			background_colour = "#000000",
		})

		vim.notify = require("notify")
	end,
}
