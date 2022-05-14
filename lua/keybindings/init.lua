local map = vim.api.nvim_set_keymap
-- <Leader> key is <Space>
vim.g.mapleader = ' '
map('n', '<Space>', '<NOP>', {noremap = true, silent = true})

-- jk to switch to NORMAL MODE
map("i", "jk", "<esc>", {noremap = true})
map("i", "kj", "<esc>", {noremap = true})

-- Buffer navigation
map('n', 'gn', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
map('n', 'gb', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})
map('n', 'gp', ':BufferLinePick<CR>', {noremap = true, silent = true})
map('n', 'gc', ':BufferLinePickClose<CR>', {noremap = true, silent = true})

-- Lua Tree Navigation
map('n', '<C-f>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- Move around split
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

-- Telescope
-- map('n', '<leader>ff' ':Telescope find_files<cr>', {noremap = true, silent = true})
-- map('n', '<leader>fg' ':Telescope live_grep<cr>', {noremap = true, silent = true})
