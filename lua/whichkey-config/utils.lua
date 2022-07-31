local action = require('lspsaga.action')
local Terminal = require('toggleterm.terminal').Terminal
local M = {}
M.toggle_float = function()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end

M.toggle_lazygit = function()
  local lazygit = Terminal:new({cmd = 'lazygit', direction = "float"})
  return lazygit:toggle()
end

M.scroll_down_hover = function()
  action.smart_scroll_with_saga(1, '<C-f>')
end

M.scroll_up_hover = function()
  action.smart_scroll_with_saga(-1, '<C-b>')
end

return M
