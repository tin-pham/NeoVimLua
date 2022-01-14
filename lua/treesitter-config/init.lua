require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "html", "css", "scss", "json", "javascript", "lua", "vim", "dot",
    "http", "regex", "jsdoc", "comment", "markdown", "query"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },

  -- Auto Tag Plugin
  autotag = {enable = true},

  -- Rainbow Plugin
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil -- Do not enable for files with more than n lines, int
    -- Auto Indent when <CR> 
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  indent = {enable = true}
}

-- LSP fix
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
                                                          vim.lsp
                                                              .diagnostic
                                                              .on_publish_diagnostics,
                                                          {
      underline = true,
      virtual_text = {spacing = 5, severity_limit = 'Warning'},
      update_in_insert = true
    })
