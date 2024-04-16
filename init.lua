-- Neovide settings.
if vim.g.neovide then
	require('neovide')
end

-- Set locale.
vim.cmd('language en_US.utf8')

-- Set color scheme.
require('colors')

-- Disable Neovim's netrw.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Disable ftplugin indent.
vim.cmd.filetype('indent off')

-- Disable Ocaml mappings.
vim.g.no_ocaml_maps = 1

-- Enable the new lua module loader.
vim.loader.enable()

require('settings')
require('keybinds')
require('autocmds')
require('plugins')
