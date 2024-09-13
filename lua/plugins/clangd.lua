local clangd = require('clangd_extensions')
clangd.setup {}

local map = require('keybinds').map

map('n', '<Leader>h', '<Cmd>ClangdSwitchSourceHeader<CR>')
