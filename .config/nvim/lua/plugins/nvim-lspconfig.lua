return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- Server Definitions
		vim.lsp.config("lua_ls", {
			capabilities = capabilities,
		})

		vim.lsp.config("clangd", {
			capabilities = capabilities,
		})

		vim.lsp.config("rust_analyzer", {
			capabilities = capabilities,
		})

		vim.lsp.config("gopls", {
			capabilities = capabilities,
		})

		vim.lsp.config("pyright", {
			capabilities = capabilities,
		})

		vim.lsp.config("zls", {
			capabilities = capabilities,
		})

		vim.lsp.config("cmake", {
			capabilities = capabilities,
			cmd = { "cmake-language-server" },
			filetypes = { "cmake" },
			root_markers = { "CMakeLists.txt", ".git" },
			init_options = {
				buildDirectory = "build",
			},
		})

		-- Enable servers
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("clangd")
		vim.lsp.enable("rust_analyzer")
		vim.lsp.enable("gopls")
		vim.lsp.enable("pyright")
		vim.lsp.enable("cmake")
		vim.lsp.enable("zls")

		-- Buffer-local LSP keymaps
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(ev)
				local opts = { buffer = ev.buf, noremap = true, silent = true }

				-- Following use telescope with same binds
				-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				-- vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

				vim.keymap.set("n", "gI", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)

				vim.keymap.set("n", "K", function()
					vim.lsp.buf.hover()
				end, vim.tbl_extend("force", opts, { desc = "LSP Hover" }))

				-- vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)

				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
			end,
		})

		vim.o.updatetime = 250
		vim.api.nvim_create_autocmd("CursorHold", {
			callback = function()
				vim.diagnostic.open_float(nil, {
					focusable = false,
					close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
					border = "rounded",
					source = "if_many",
					scope = "cursor",
				})
			end,
		})
	end,
}
