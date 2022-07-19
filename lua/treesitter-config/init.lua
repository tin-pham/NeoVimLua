local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then return end

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  ignore_install = {""}, -- List of parsers to ignore installing
  highlight = {enable = true, additional_vim_regex_highlighting = false},

  -- Auto Tag Plugin
  autotag = {enable = true},

  -- Rainbow Plugin
  rainbow = {
    enable = false,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil -- Do not enable for files with more than n lines, int
    -- Auto Indent when <CR>
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  indent = {enable = true},
  context_commentstring = {enable = true, enable_autocmd = false},

  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner"
      }
    }
  }

}

-- LSP fix
