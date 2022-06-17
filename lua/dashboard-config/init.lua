-- local g = vim.g
-- g.dashboard_disable_statusline = 0
-- vim.cmd(
--     'autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2')
-- g.dashboard_custom_header = {
--   "                                   ",
--   "                                   ",
--   "                                   ",
--   "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
--   "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
--   "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
--   "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
--   "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
--   "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
--   "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
--   " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
--   " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
--   "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
--   "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
--   "                                   "
-- }
-- g.dashboard_default_executive = 'telescope'
-- g.dashboard_custom_section = {
--   a = {
--     description = {'  Find File          '},
--     command = 'Telescope find_files'
--   },
--   d = {
--     description = {'  Search Text        '},
--     command = 'Telescope live_grep'
--   },
--   b = {
--     description = {'  Recent Files       '},
--     command = 'Telescope oldfiles'
--   },
--   e = {
--     description = {'  Config             '},
--     command = 'edit ~/.config/nvim/init.lua'
--   }
-- }
-- g.dashboard_custom_footer = {
--   'Có làm thì mới có ăn - Huấn Hoa Hồng'
-- }
local db = require('dashboard')

db.preview_file_height = 12
db.preview_file_width = 80
db.hide_tabline = false
db.custom_header = {
  ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝'
}
db.custom_center = {
  {
    icon = '  ',
    desc = 'Recently laset session                  ',
    shortcut = 'SPC s l',
    action = 'SessionLoad'
  }, {
    icon = '  ',
    desc = 'Recently opened files                   ',
    action = 'DashboardFindHistory',
    shortcut = 'SPC f h'
  }, {
    icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f'
  }, {
    icon = '  ',
    desc = 'File Browser                            ',
    action = 'Telescope file_browser',
    shortcut = 'SPC f b'
  }, {
    icon = '  ',
    desc = 'Find  word                              ',
    aciton = 'DashboardFindWord',
    shortcut = 'SPC f w'
  }
}
