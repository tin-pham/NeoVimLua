vim.cmd('filetype plugin indent on')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.pumheight = 10
vim.o.fileencoding = 'utf-8'
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.termguicolors = true
vim.o.conceallevel = 0
vim.o.showtabline = 2
vim.o.showmode = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 100
-- vim.o.clipboard = 'unnamedplus'
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.scrolloff = 8
vim.o.sidescrolloff = 5
vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.cursorline = true
vim.o.signcolumn = 'yes'

vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.wildmenu = true

vim.opt.fillchars = { eob = " " }

-- Change file type
vim.cmd('au BufNewFile,BufRead *.ejs set filetype=html')
vim.cmd('au BufNewFile,BufRead *.hbs set filetype=html')
vim.cmd('au BufNewFile,BufRead *.handlebars set filetype=html')
vim.cmd('au BufNewFile,BufRead .env.development set filetype=.env')
vim.cmd('au BufNewFile,BufRead *.env.production set filetype=.env')

-- vim.cmd('au FileType javascript set filetype=javascriptreact')
vim.cmd('set path+=**')
vim.cmd('set tags=tags;/')
vim.cmd('set guicursor=i:block')

-- Disable automatic commenting
vim.cmd('autocmd FileType * setlocal formatoptions-=cro')
