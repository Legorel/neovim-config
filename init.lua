-- Enable the new lua module loader.
if vim.loader then
	vim.loader.enable()
	vim.print("Loader enabled")
end

-- Load Neovide settings.
if vim.g.neovide then
	require('neovide')
end

-- Set locale.
vim.cmd.language('en_US.utf-8')

-- Set color scheme.
vim.cmd.colorscheme('tokyonight-night')

-- Disable Neovim's netrw.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Disable some language's providers I don't use.
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Load the full config.
require('settings')
require('keybinds')
require('plugins')
