local map = vim.api.nvim_set_keymap


--map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables

--here other maps :)
--disable arrow keys
map('', '<up>', '<nop>',{})
map('', '<down>', '<nop>',{})
map('', '<left>', '<nop>',{})
map('', '<right>', '<nop>',{})
--jk to exit from v - i mode
map('i', 'jk', '<ESC>',{})
map('i', 'JK', '<ESC>',{})
map('i', 'jK', '<ESC>',{})
map('v', 'jk', '<ESC>',{})
map('v', 'JK', '<ESC>',{})
map('v', 'jK', '<ESC>',{})
