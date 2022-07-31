local M = {}
local project = os.getenv('PROJECT')

M.dirman = {
  config = {
    workspaces = {
      home = "/media/shin/Extenal Storage/notes/home",
      project = project,
      server = project .. '/server',
      client = project .. '/client'
    },
    autochdir = true,
    index = "TODO.norg"
  }
}

return M
