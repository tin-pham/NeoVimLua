require 'format'.setup {
  html = { { cmd = { "prettier -w" } } },
  ejs = { { cmd = "prettier -w" } },
  css = { { cmd = { "prettier -w" } } },
  scss = { { cmd = { "prettier -w" } } },
  json = { { cmd = { "prettier -w" } } },
  javascript = { { cmd = { "prettier -w", "./node_modules/.bin/eslint --fix" } } },
  typescript = { { cmd = { "prettier -w", "./node_modules/.bin/eslint --fix" } } },
  javascriptreact = { { cmd = { "prettier -w", "./node_modules/.bin/eslint --fix" } } },
  typescriptreact = { { cmd = { "prettier -w", "./node_modules/.bin/eslint --fix" } } },
  lua = {
    {
      cmd = {
        function(file)
          return string.format(
            'lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=70 --break-after-table-lb --indent-width=2 %s',
            file)
        end
      }
    }
  },

  sql = {
    {
      cmd = {
        function(file)
          return string.format('prettier-sql -o /tmp/**/*test*-query* -l postgresql', file)
        end
      }
    }
  }

}

-- Auto Format on Save
vim.cmd('autocmd BufWritePost * FormatWrite')
-- vim.cmd('autocmd BufWritePre * FormatWrite')
-- vim.cmd('autocmd BufWritePost * noau FormatWrite')
