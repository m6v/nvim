return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      -- Если кастомные цвета не нужны, убрать блок on_colors
      on_colors = function(colors)
        colors.bg = "#000000"         -- Main background
        colors.bg_dark = "#000000"    -- Sidebar background
        colors.bg_float = "#000000"   -- Floating window background
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd[[colorscheme tokyonight]]
    end,
  }
}
