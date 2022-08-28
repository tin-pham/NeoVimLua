local null_ls = require('null-ls')
local mason_tool_installer = require('mason-tool-installer')

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

local formatters = { "prettier", "luaformatter" }
local linters = { "sqlfluff" }

mason_tool_installer.setup {
  ensure_installed = {
    unpack(formatters), unpack(linters)
  },

  auto_update = true,
  run_on_start = true
}

null_ls.setup({
  sources = {
    formatting.clang_format, formatting.prettier, formatting.remark, formatting.shfmt,
    formatting.lua_format.with({
      extra_args = {
        '--no-keep-simple-function-one-line', '--no-break-after-operator', '--column-limit=100',
        '--break-after-table-lb', '--indent-width=2'
      }
    }), formatting.sqlfluff,
    diagnostics.sqlfluff.with({
      extra_args = { "--dialect", "postgres" }
    })
  },
  debug = true,
  on_attach = function(client)
    if client.supports_method('textDocument/formatting') then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
    end
    vim.cmd [[
      augroup document_highlight
        autocmd! * <buffer>
      augroup END
    ]]
  end
})
