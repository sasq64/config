
local null_ls = require("null-ls")
local opts = {
  sources = {
    null_ls.builtins.formatting.clang_format,
  }
}

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.offsetEncoding = { "utf-16" }
-- require("lspconfig").clangd.setup({ capabilities = capabilities })

return opts;
