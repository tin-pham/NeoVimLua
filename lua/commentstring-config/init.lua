vim.cmd [[augroup temporary_test]]
vim.cmd [[autocmd CursorMoved <buffer>]]
vim.cmd [[\ echo map(synstack(line('.'), col('.'))]]
vim.cmd [[\\ 'synIDattr(v:val, "name")')]]
