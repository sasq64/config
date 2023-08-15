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

M.debugging = {
  n = {
    ["<F5>"] = {
      function() require('dap').continue() end,
      "Start/Pause Debugging",
    },
    ["<F17>"] = {
      function() require('dap').terminate() end,
      "Stop Debugging",
    },
    ["<F9>"] = {
      function() require('dap').toggle_breakpoint() end,
      "Toggle Breakpoint",
    },
    ["<F10>"] = {
      function() require('dap').step_over() end,
      "Step over",
    },
    ["<F11>"] = {
      function() require('dap').step_into() end,
      "Step into",
    },
    ["<F23>"] = {
      function() require('dap').step_out() end,
      "Step out",
    }
  }
}

M.mine = {
    n = {
        ["<tab>"] = { "<cmd> bnext <CR>", "Next buffer"},
        ["<S-tab>"] = { "<cmd> bprev <CR>", "Previous buffer"},
        ["<c-b>"] = { "<cmd> Telescope buffers <CR>", "Find buffers" },
        ["<F12>"] = {
          function() vim.lsp.buf.definition() end,
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
