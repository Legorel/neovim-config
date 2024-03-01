require('nvim-tree').setup()

local map = require('keybinds').map

-- Toggle tree.
map('n', '<Leader>t', vim.cmd.NvimTreeToggle)

-- Focus tree.
map('n', '<Leader>y', vim.cmd.NvimTreeFocus)
map('n', '<Leader><S-Y>', vim.cmd.NvimTreeFindFile)
