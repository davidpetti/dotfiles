return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
  config = function(_, opts)
    require("flash").setup(opts)

    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = function()
        vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#282828", bg = "#fb4934", bold = true })
        -- vim.api.nvim_set_hl(0, "FlashMatch", { fg = "#fabd2f", bold = true })
        -- vim.api.nvim_set_hl(0, "FlashCurrent", { fg = "#fb4934", bold = true })
        -- vim.api.nvim_set_hl(0, "FlashBackdrop", { fg = "#7c6f64" })
      end,
    })

    -- apply immediately too (for startup)
    vim.cmd("doautocmd ColorScheme")
  end,
}
