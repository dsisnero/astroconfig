return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- {
  --   "jcdickinson/http.nvim",
  --   build = "cargo build --workspace --release",
  -- },
  -- {
  --   "jcdickinson/codeium.nvim",
  --   dependencies = {
  --     "jcdickinson/http.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "hrsh7th/nvim-cmp",
  --   },
  --   config = function() require("codeium").setup {} end,
  --   event = "User AstroFile",
  -- },
  { "mfussenegger/nvim-dap", enabled = true },
  { "suketa/nvim-dap-ruby" },
  {
    "tpope/vim-abolish",
    event = "User AstroFile",
  },
  {
    "vim-crystal/vim-crystal",
    event = "User AstroFile",
  },
  {
    "nvim-treesitter/playground",
    dependencies = "nvim-treesitter/nvim-treesitter",
    event = "User AstroFile",
  },
  "vim-syntastic/syntastic",
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "plugins.configs.luasnip" (plugin, opts)                                       -- include the default astronvim config that calls the setup call
      require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } } -- load snippets paths
    end,
  },
}
