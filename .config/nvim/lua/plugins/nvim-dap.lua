return {
	"mfussenegger/nvim-dap",
	keys = {
		{
			"<leader>db",
			function()
				require("dap").toggle_breakpoint()
			end,
			desc = "DAP Breakpoint",
		},
		{
			"<leader>dB",
			function()
				require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end,
			desc = "DAP Conditional breakpoint",
		},

		{
			"<leader>dc",
			function()
				require("dap").continue()
			end,
			desc = "DAP Continue",
		},
		{
			"<leader>di",
			function()
				require("dap").step_into()
			end,
			desc = "DAP Step into",
		},
		{
			"<leader>do",
			function()
				require("dap").step_over()
			end,
			desc = "DAP Step over",
		},
		{
			"<leader>dO",
			function()
				require("dap").step_out()
			end,
			desc = "DAP Step out",
		},

		{
			"<leader>dr",
			function()
				require("dap").repl.open()
			end,
			desc = "DAP Open REPL",
		},
		{
			"<leader>dl",
			function()
				require("dap").run_last()
			end,
			desc = "DAP Run last",
		},
		{
			"<leader>dt",
			function()
				require("dap").terminate()
			end,
			desc = "DAP Terminate",
		},
	},
}
