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

		-- Enable servers
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("clangd")
		vim.lsp.enable("rust_analyzer")
		vim.lsp.enable("gopls")
		vim.lsp.enable("pyright")

		-- Keymaps
		local opts = { noremap = true, silent = true }

        -- Following use telescope with same binds
		-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        -- vim.keymap.set("n", "gr", vim.lsp.buf.references)

        vim.keymap.set("n", "gI", vim.lsp.buf.implementation)
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition)

		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)

		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

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
