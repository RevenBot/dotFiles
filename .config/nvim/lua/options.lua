--global options
local o = vim.opt
--buffer-local options
local bo = vim.bo
--window-local options
local wo = vim.wo

-- for newtree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


--global options
o.syntax = 'on'
o.smartcase = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4 
o.termguicolors = true
o.encoding="utf-8"
o.mouse = ""

-- buffer-local options
bo.autoindent = true 


-- window-local options
wo.relativenumber = true 

