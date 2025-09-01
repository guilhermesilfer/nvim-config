-- plugins/themery.lua:
return {
  "zaldih/themery.nvim",

  dependencies = {
    { "ellisonleao/gruvbox.nvim" },
    { "Shatur/neovim-ayu" },
    { "catppuccin/nvim" },
    { "Mofiqul/dracula.nvim" },
  },

  lazy = false,

  config = function()
    require("themery").setup({
      themes = {
        { name = "gruvbox", colorscheme = "gruvbox" },
        { name = "ayu", colorscheme = "ayu" },
        { name = "catppuccin", colorscheme = "catppuccin" },
        { name = "dracula", colorscheme = "dracula" },
      },
    })
  end
}
