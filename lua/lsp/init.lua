local status_ok, _ = pcall(require, 'lspconfig')
if not status_ok then return end

require('lsp/cmp')
require('lsp/diagnostic_signs').setup()
require('lsp/language-server')
require('lsp/lspsaga')
require('lsp/null-ls')
