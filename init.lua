
require('packer_init')

require('cmp_init')
require('lsp_init')
require('ts_init')

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.o.background = "dark"
vim.cmd([[colorscheme solarized8_flat]])
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]])

