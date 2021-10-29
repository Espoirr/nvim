local null_ls = require("null-ls")

local sources = {
  null_ls.builtins.formatting.prettierd,
  null_ls.builtins.formatting.stylua,
  null_ls.builtins.formatting.eslint_d
}

null_ls.config(
  {
    sources = sources
  }
)

require("lspconfig")["null-ls"].setup(
  {
    on_attach = function()
      vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])
    end
  }
)
