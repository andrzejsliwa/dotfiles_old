return {
  {
    {
      "catppuccin/nvim",
      name = "catppuccin",
      opts = {
        flavour = "mocha",
        transparent_background = true,
      },
      priority = 1000,
    },
  
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin",
      },
    },
  },
}
