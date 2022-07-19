local lspsaga = require 'lspsaga'
lspsaga.init_lsp_saga({ -- defaults ...
  border_style = 'single',
  -- diagnostic sign
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  diagnostic_header_icon = "   ",
  -- code action title icon
  code_action_icon = " ",
  code_action_prompt = {enable = true, sign = true, sign_priority = 40, virtual_text = true},
  finder_definition_icon = "  ",
  finder_reference_icon = "  ",
  max_preview_lines = 10,
  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    tabe = "t",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>" -- quit can be a table
  },

  code_action_keys = {quit = "q", exec = "<CR>"},
  rename_action_keys = {quit = "<C-c>", exec = "<CR>"},

  definition_preview_icon = "  ",
  rename_prompt_prefix = "➤",

  rename_output_qflist = {enable = false, auto_open_qflist = false},
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. ",
  diagnostic_message_format = "%m %c",
  highlight_prefix = false

})
