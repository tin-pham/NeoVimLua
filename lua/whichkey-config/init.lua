local wk = require("which-key")
local mappings = require('whichkey-config.mappings')

local opts_with_leader = {
  mode = 'n',
  prefix = '<leader>',
  silent = true,
  noremap = true,
  nowait = false
}
local opts = {mode = 'n', prefix = '', silent = true, noremap = true, nowait = false}
local opts_with_g = {mode = 'n', prefix = 'g', silent = true, noremap = true, nowait = false}

wk.register(mappings.general, opts_with_leader)
wk.register(mappings.vim, opts_with_leader)
wk.register(mappings.telescope, opts_with_leader)
wk.register(mappings.dadbod, opts_with_leader)
wk.register(mappings.lsp, opts_with_leader)
wk.register(mappings.neorg, opts_with_g)
