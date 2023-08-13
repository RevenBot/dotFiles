vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
local nvimtree= require("nvim-tree")
nvimtree.setup()
vim.keymap.set('n', '<leader>n', ':NvimTreeFindFileToggle<CR>')
