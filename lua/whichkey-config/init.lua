local wk = require("which-key")

local opts = {
  mode = 'n',
  prefix = '<leader>',
  silent = true,
  noremap = true,
  nowait = false,
}

local mappings = {
  q = {":wq", "Save & Quit"},
  Q = {":q!", "Quit without save"},
  w = {":w", "Save"},
  x = {":bdelete<cr>", "Close"},
  E = {":e ~/.config/nvim/init.lua<cr>", "Edit config"},
  f = {
    name = 'Telescope',
    f = {"<cmd>Telescope find_files<cr>", "Find File"},
    g = {"<cmd>Telescope live_grep<cr>", "Find Word"}
  },
  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Connected Language Servers"},
    A = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
    R = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
    l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', "List workspace folder"},
    D = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
    r = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"},
    a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
    e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
    q = {'<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', "Show loclist"}
  },
}



wk.register(mappings, opts)
