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
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = "~/.local/bin/python3"
      require("dap-python").setup(path)
      -- require("core.utils").load_mappings("dap_python")
    end,
  },
  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    config = function(_, _)
      require("core.utils").load_mappings("dap")
      vim.api.nvim_set_hl(0, 'DapBreakpoint', { ctermbg = 0, fg = '#993939' })
      vim.fn.sign_define('DapBreakpoint',{ text ='●', texthl ='DapBreakpoint', linehl ='', numhl =''})
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "debugpy",
        "mypy",
        "ruff",
        "pyright",
        "clangd",
        "clang-format",
        "codelldb"
      }
    }
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {}
    },
  },
  -- {
  --   "Darazaki/indent-o-matic",
  --   event = "VeryLazy",
  -- },
  {
    "nmac427/guess-indent.nvim",
    event = "VeryLazy",
    config = function() require('guess-indent').setup {} end
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
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = { { "<leader>tt",  function() require("trouble").open() end, "Toggle Trouble" } },
    opts = {
    }
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
      })
    end
  },
  {
    'Wansmer/sibling-swap.nvim',
    event = "VeryLazy",
    requires = { 'nvim-treesitter' },
    config = function()
      require('sibling-swap').setup({--[[ your config ]]})
    end,
  }
}
return plugins

