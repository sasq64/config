local M = {}
M.disabled = {
  n = {
      ["<leader>f"] = "",
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    }
  }
}

M.mine = {
    n = {
        ["<tab>"] = { "<cmd> :bnext <CR>", "Next buffer"},
        ["<S-tab>"] = { "<cmd> :bprev <CR>", "Previous buffer"},
        ["<c-b>"] = { "<cmd> Telescope buffers <CR>", "Find buffers" },
        ["<F12>"] = {
          function()
            vim.lsp.buf.definition()
          end,
          "Goto definition",
        },
        ["<leader>do"] = {
          function()
            vim.diagnostic.open_float { border = "rounded" }
          end,
          "Floating diagnostic",
        },
    }
}
return M
