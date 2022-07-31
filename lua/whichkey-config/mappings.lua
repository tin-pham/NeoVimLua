local whichkey_utils = require('whichkey-config.utils')

local M = {}

M.vim = {
  q = {":q<cr>", "Quit"},
  Q = {":wq<cr>", "Save & Quit"},
  w = {":w<cr>", "Save"},
  x = {":bdelete<cr>", "Close"},
  E = {":e ~/.config/nvim/init.lua<cr>", "Edit config"}
}

M.telescope = {
  f = {
    name = 'Telescope',
    f = {"<cmd>Telescope find_files<cr>", "Find File"},
    g = {"<cmd>Telescope live_grep<cr>", "Find Word"},
    b = {"<cmd>Telescope file_browser<cr>", "Find Browser"}
  }
}

-- TODO: try
M.dadbod = {
  d = {
    name = 'Dadbod/Debug',
    t = {":DBUIToggle<CR>", "Dadbod Toggle"},
    g = {":DogeGenerate<CR>", "Document Genrerat"},
    b = {":lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint"},
    n = {":lua require'dap'.step_over()<cr>", "Step Over"},
    l = {":lua require'dap'.step_into()<cr>", "Step Into"},
    o = {":lua require'dap'.step_out()<cr>", "Step Out"},
    c = {":lua require'dap'.continue()<cr>", "Continue"},
    j = {":lua require'dap'.down()<cr>", "Go down the callstack"},
    k = {":lua require'dap'.up()<cr>", "Go up the callstack"},
    a = {":lua require'nvim-dap'.attach()<cr>", "Attach Debugger"},
    i = {':lua require"dap.ui.widgets".hover()<CR>', 'Inspect Element'},
    f = {':Telescope dap frames<CR>', 'Open Stack Frame'},
    B = {':Telescope dap list_breakpoints<CR>', 'List of breakpoint'},
    u = {":lua require('dapui').toggle()<CR>", 'Open Debug UI'}
  }
}

M.lsp = {
  l = {
    name = "LSP",
    i = {":Mason<CR>", "Connected Language Servers"},
    h = {"<cmd>Lspsaga lsp_finder<CR>", "Async LSP Finder"},
    k = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},
    K = {'<cmd>Lspsaga hover_doc<cr>', "Hover Command"},
    f = {whichkey_utils.scroll_down_hover, 'Scroll down hover doc'},
    b = {whichkey_utils.scroll_up_hover, 'Scroll up hover doc'},
    w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
    W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
      "List workspace folder"
    },
    t = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
    d = {'<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition"},
    -- d = {'<cmd>Lspsaga preview_definition<CR>', 'Preview Definition'},
    D = {'<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration"},
    -- r = {'<cmd>lua vim.lsp.buf.references()<CR>', "References"},
    r = {'<cmd>Lspsaga rename<cr>', "Rename"},
    a = {'<cmd>Lspsaga code_action<cr>', "Code actions"},
    e = {'<cmd>Lspsaga show_line_diagnostics<cr>', "Show line diagnostics"},
    n = {'<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic"},
    N = {'<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Previous Diagnostic"},
    q = {'<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', "Show loclist"}
  }
}

M.neorg = {
  t = {
    name = 'Neorg',
    -- Neorg
    s = {':NeorgStart silent=true<CR>', 'Start Adding Note'},
    u = {'', 'Task Undone'},
    p = {'', 'Task Pending'},
    d = {'', 'Task Done'},
    h = {'', 'Task On Hold'},
    c = {'', 'Task Cancelled'},
    r = {'', 'Task Recurring'},
    i = {'', 'Task as Important'},
    v = {'', 'Task Views'},
    e = {'', 'Task Edit'},
    n = {'', 'Create new task'}
  }
}

M.general = {
  g = {t = {"<Plug>Titlecase", "Capitalize text"}},
  r = {"<Plug>ReplaceWithRegisterOperator", "Replace with Register Operator"},
  R = {"<Plug>RestNvim", "Rest Request"},
  t = {
    -- Term
    t = {":ToggleTerm<cr>", "Split Below"},
    f = {whichkey_utils.toggle_float, "Floating Terminal"},
    l = {whichkey_utils.toggle_lazygit, "Lazygit"}
  },
  z = {name = "Focus Mode", z = {":ZenMode<cr>", "Zen Mode"}, t = {":Twilight<cr>", "Twilight"}},
  p = {
    name = "Packer",
    r = {":PackerClean<cr>", "Remove Unused Plugins"},
    c = {":PackerCompile profile=true<cr>", "Recompile Plugins"},
    i = {":PackerInstall<cr>", "Install Plugins"},
    p = {":PackerProfile<cr>", "Packer Profile"},
    s = {":PackerSync<cr>", "Sync Plugins"},
    S = {":PackerStatus<cr>", "Packer Status"},
    u = {":PackerUpdate<cr>", "Update Plugins"}
  },
  m = {
    name = "Neorg Mode",
    n = {":Neorg mode norg<CR>", "Norg mode"},
    h = {":Neorg mode traverse-heading<CR>", "Traverse Heading"},
    a = {":Neorg mode all<CR>", "All mode"}
  }
}

return M
