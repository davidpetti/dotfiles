return {
    "mfussenegger/nvim-dap",
    config = function()
        vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
        vim.keymap.set("n", "<leader>dr", ":DapContinue<CR>")
    end,
}
