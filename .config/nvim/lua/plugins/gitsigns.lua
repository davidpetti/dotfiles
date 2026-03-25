return {
	"lewis6991/gitsigns.nvim",
	opts = {
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns
			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
			end

			map("n", "]c", gs.next_hunk, "Jump to next hunk")
			map("n", "[c", gs.prev_hunk, "Jump to prev hunk")
			map("n", "<leader>hs", gs.stage_hunk, "Stage hunk")
			map("n", "<leader>hr", gs.reset_hunk, "Reset hunk (discard changes)")
			map("n", "<leader>hp", gs.preview_hunk, "Preview hunk")
			map("n", "<leader>hb", gs.blame_line, "Current line blame")
		end,
	},
}
