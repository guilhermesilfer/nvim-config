-- plugins/treesitter.lua:
return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",

    opts = {
      ensure_installed = {
        "c", "c_sharp", "javascript", "html", "css", "java",
        "lua", "vim", "vimdoc", "query", "elixir", "heex"
      },
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
      indent = { enable = true, disable = { "yaml" } },
      rainbow = {
        enable = true,
        extended_mode = true,
      },
    },

    config = function (_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end
  },
}
