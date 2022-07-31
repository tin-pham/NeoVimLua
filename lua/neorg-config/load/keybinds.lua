local M = {}

M.keybinds = {
  config = {
    default_keybinds = true,
    hook = function(keybinds)
      -- keybinds.remap_event("norg", "n", "<Leader>tu", "core.norg.qol.todo_items.todo.task_undone")
      -- keybinds.remap_event("norg", "n", "<Leader>tp", "core.norg.qol.todo_items.todo.task_pending")
      -- keybinds.remap_event("norg", "n", "<Leader>td", "core.norg.qol.todo_items.todo.task_done")
      -- keybinds.remap_event("norg", "n", "<Leader>th", "core.norg.qol.todo_items.todo.task_on_hold")
      -- keybinds.remap_event("norg", "n", "<Leader>tc",
      --                      "core.norg.qol.todo_items.todo.task_on_cancelled")
      -- keybinds.remap_event("norg", "n", "<Leader>tr", "core.norg.qol.todo_items.todo.task_recurring")
      -- keybinds.remap_event("norg", "n", "<Leader>tC", "core.norg.qol.todo_items.todo.task_cycle")
      keybinds.remap_event("norg", "n", "gtv", "core.gtd.base.views")
      keybinds.remap_event("norg", "n", "gtn", "core.gtd.base.capture")
      keybinds.remap_event("norg", "n", "gte", "core.gtd.base.edit")
    end
  }
}

return M
