local dirman = require('neorg-config.load.dirman').dirman
local completion = require('neorg-config.load.completion').completion
local concealer = require('neorg-config.load.concealer').concealer
local keybinds = require('neorg-config.load.keybinds').keybinds

local gtd = require('neorg-config.load.gtd')

require('neorg').setup {
  load = {
    ["core.defaults"] = {},
    ["core.norg.dirman"] = dirman,
    ["core.norg.completion"] = completion,
    ["core.norg.concealer"] = concealer,
    -- Key
    ["core.keybinds"] = keybinds,

    -- Ui
    ["core.ui"] = {},

    -- GTD
    ["core.gtd.ui"] = {},
    ["core.gtd.base"] = gtd.base
  }
}
