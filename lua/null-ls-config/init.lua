local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local diagnostic = null_ls.builtins.diagnostics

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(clients)
      -- filter out clients that you don't want to use
      return vim.tbl_filter(function(client)
        return client.name ~= "tsserver"
      end, clients)
    end,
    bufnr = bufnr
  })
end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  sources = {
    formatting.clang_format, formatting.prettier, formatting.remark, formatting.lua_format.with({
      extra_args = {
        '--no-keep-simple-function-one-line', '--no-break-after-operator', '--column-limit=100',
        '--break-after-table-lb', '--indent-width=2'
      }
    })
  },
  on_attach = function(client)
    if client.supports_method('textDocument/formatting') then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()")
    end
    vim.cmd [[
      augroup document_highlight
        autocmd! * <buffer>
      augroup END
    ]]
  end
})
