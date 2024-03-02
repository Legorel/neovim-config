-- Neovide settings.
if vim.g.neovide then
	require('neovide')
end

-- Set locale.
vim.cmd('language en_US.utf8')

-- Set color scheme.
vim.cmd('colorscheme tokyonight-night')

-- Disable Neovim's netrw.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- Enable the new lua module loader.
vim.loader.enable()

require('settings')
require('keybinds')
require('autocmds')
require('plugins')
