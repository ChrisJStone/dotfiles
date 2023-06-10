local set = vim.opt

set.smarttab = true
set.shiftwidth = 4 -- the number of spaces inserted for each indentation
set.tabstop = 4 -- insert 4 spaces for a tab
set.expandtab = true -- convert tabs to spaces
set.ignorecase = true -- ignore case in search patterns
set.smartcase = true -- smart case
set.cursorline = false -- highlight the current line
set.number = true -- set numbered lines
set.relativenumber = true -- set relative numbered lines
set.termguicolors = true -- set term gui colors (most terminals support this)
set.smartindent = true -- Insert indents automatically
set.fileencoding = "utf-8" -- the encoding written to a file
vim.cmd("colorscheme carbonfox")

