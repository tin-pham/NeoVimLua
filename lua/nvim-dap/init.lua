require('nvim-dap/nvim-dap-config')
require('nvim-dap/nvim-dap-virtual-text-config')
require('nvim-dap/nvim-dap-ui-config')

local dap = require('dap')

local function attach()
  print("attaching")
  dap.run({
    type = 'node2',
    request = 'attach',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    skipFiles = {'<node_internals>/**/*.js'}
  })
end

return {attach = attach}
