-- plugins/lspconfig.lua:
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "williamboman/mason.nvim",
        config = true,
      },
      {
        "williamboman/mason-lspconfig.nvim",
        config = true,
      },
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      require("mason").setup()

      require("mason-lspconfig").setup({
        automatic_installation = true,
      })

      require("mason-lspconfig").setup({
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
      })
    end,
  }
}
