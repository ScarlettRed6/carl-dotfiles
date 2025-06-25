return {
  -- gruvbox theme
  -- { "ellisonleao/gruvbox.nvim" },

  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "gruvbox",
  --   },
  -- },

  -- cyberpunk theme

  {
    "samueljoli/cyberpunk.nvim",
    name = "cyberpunk",
    priority = 1000, -- make sure it loads before LazyVim UI
    config = function()
      require("cyberpunk").setup({
        theme = "dark", -- or "light" if available
      })
      --vim.cmd.colorscheme("cyberpunk")
    end,
  },
}
