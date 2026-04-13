return {
	"rcarriga/nvim-dap-ui",
	event = "VeryLazy",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
	},
	keys = {
		{
			"<leader>du",
			function()
				require("dapui").toggle()
			end,
			desc = "DAP UI toggle",
		},
		{
			"<leader>de",
			function()
				require("dapui").eval()
			end,
			mode = { "n", "v" },
			desc = "DAP eval",
		},
		{
			"<leader>df",
			function()
				require("dapui").float_element()
			end,
			desc = "DAP float element",
		},
	},
	opts = {
		icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
		controls = {
			enabled = true,
		},
		layouts = {
			{
				elements = {
					{ id = "scopes", size = 0.55 },
					{ id = "breakpoints", size = 0.15 },
					{ id = "stacks", size = 0.15 },
					{ id = "watches", size = 0.15 },
				},
				size = 40,
				position = "left",
			},
			{
				elements = {
					{ id = "repl", size = 0.5 },
					{ id = "console", size = 0.5 },
				},
				size = 10,
				position = "bottom",
			},
		},
		floating = {
			max_height = 0.8,
			max_width = 0.8,
			border = "rounded",
			mappings = {
				close = { "q", "<Esc>" },
			},
		},
	},
	config = function(_, opts)
		local dap = require("dap")
		local dapui = require("dapui")

		dapui.setup(opts)

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end

		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
			pcall(vim.cmd, "NvimTreeClose")
		end

		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end

		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}
