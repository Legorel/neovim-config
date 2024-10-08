require('nvim-treesitter.configs').setup {
	ensure_installed = { 'c', 'cpp', 'bash', 'python', 'lua' },
	auto_install = false,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
}
