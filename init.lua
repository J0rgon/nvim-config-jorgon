require("config.lazy")
require("config.keymaps")
require("lazy").setup({{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}})

vim.api.nvim_set_keymap('i', '<C-e>', "emmet#expandAbbrIntelligent('<C-e>')", { noremap = true, silent = true, expr = true })

local o = vim.o

vim.wo.relativenumber = true


o.expandtab = true -- expand tab input with spaces characters
o.smartindent = true -- syntax aware indentations for newline inserts
o.tabstop = 2 -- num of space characters per tab
o.shiftwidth = 2 -- spaces per indentation level


