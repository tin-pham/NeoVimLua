require'format'.setup {
  html = {{cmd = {"prettier -w"}}},
  css = {{cmd = {"prettier -w"}}},
  json = {{cmd = {"prettier -w"}}},
  javascript = {{cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
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
  }

}

-- Auto Format on Save
vim.cmd('autocmd BufWritePost * FormatWrite')

