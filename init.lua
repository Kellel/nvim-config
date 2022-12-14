
require('packer_init')

require('cmp_init')
require('lsp_init')
require('ts_init')

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.o.background = "dark"
vim.o.termguicolors = true
vim.cmd([[colorscheme solarized8_flat]])
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]])

vim.cmd([[set clipboard+=unnamedplus]])

vim.opt.laststatus = 3

-- Enable crosshairs
vim.opt.cursorcolumn = true
vim.opt.cursorline = true

vim.g.gui_font_default_size = 12
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "GoMono Nerd Font"

RefreshGuiFont = function()
  vim.opt.guifont = string.format("%s:h%s",vim.g.gui_font_face, vim.g.gui_font_size)
end

ResizeGuiFont = function(delta)
  vim.g.gui_font_size = vim.g.gui_font_size + delta
  RefreshGuiFont()
end

ResetGuiFont = function()
  vim.g.gui_font_size = vim.g.gui_font_default_size
  RefreshGuiFont()
end

-- Call function on startup to set default value
ResetGuiFont()

-- Keymaps

local opts = { noremap = true, silent = true }

vim.keymap.set({'n', 'i'}, "<C-+>", function() ResizeGuiFont(1)  end, opts)
vim.keymap.set({'n', 'i'}, "<C-->", function() ResizeGuiFont(-1) end, opts)
