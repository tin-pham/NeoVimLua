local actions = require('telescope.actions')
-- require('telescope').load_extension('dap')
-- require('telestope').setup {}
require('telescope').setup {
  defaults = {
    layout_config = {
      horizontal = {prompt_position = "top", preview_width = 0.55, results_width = 0.8},
      vertical = {mirror = false},
      width = 0.8,
      height = 0.8,
      preview_cutoff = 120

    },
    find_command = {
      'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case'
    },
    find_browser = {
      theme = 'ivy',
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        }
      }
    },
    prompt_prefix = " ",
    selection_caret = "  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    file_sorter = require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {
      "./node_modules/*", "node_modules", "^node_modules/*", "node_modules/*", "build", "dist",
      "yarn.lock"
    },
    generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
    path_display = {},
    winblend = 0,
    border = {},
    borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    color_devicons = true,
    use_less = true,
    set_env = {['COLORTERM'] = 'truecolor'}, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker,
    extensions = {media_files = {filetypes = {"png", "jpg", "pdf", "jpeg"}, find_cmd = "rg"}},
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default + actions.center
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist
      }
    }
  }
}
-- require('telescope').load_extension('file_browser')
-- require('telescope').load_extension('media_files')
-- require('telescope').extensions.media_files.media_files()
