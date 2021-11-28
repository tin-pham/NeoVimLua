require('plugins')
require('options')
require('keybindings')

require('themes')
require('treesitter-config') -- Highlight Syntax
require('autopair-config') -- Autopair
require('lualine-config') -- Status Line
require('bufferline-config') -- Buffer Line
require('nvim-tree-config') -- Directory Tree
require('telescope-config')
require('whichkey-config')
require('colorizer-config')
require('gitsigns-config')
require('dashboard-config')
require('format-config')
require('toggleterm-config')
require('comment-config')
require('lsp')

vim.cmd('colorscheme rose-pine')

