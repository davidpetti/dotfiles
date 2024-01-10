return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({
            capabilities = capabilities,
        })
        lspconfig.tsserver.setup({
            capabilities = capabilities,
        })
        lspconfig.gopls.setup({
            capabilities = capabilities,
        })
        lspconfig.rust_analyzer.setup({
            capabilities = capabilities,
        })
        lspconfig.pyright.setup({
            capabilities = capabilities,
        })
        lspconfig.clangd.setup({
            capabilities = capabilities,
        })

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
    end,
}
