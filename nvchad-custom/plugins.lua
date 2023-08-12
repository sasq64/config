local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "mypy",
        "ruff",
        "pyright",
        "clangd",
        "clang-format"
      }
    }
  },
  {
    "folke/which-key.nvim",
     opts = {
            key_labels = {
                ["<cr>"] = "⏎",
                ["<leader>"] = "󱁐 ",
            }
        }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {
          -- defaults 
          "vim",
          "lua",

          -- web dev 
          "html",
          "css",
          "javascript",
          "typescript",
          "tsx",
          "json",
          -- "vue", "svelte",
          "ruby",
          "python",

         -- low level
          "c_sharp",
          "cpp"
      },
    },
  }
}

return plugins

