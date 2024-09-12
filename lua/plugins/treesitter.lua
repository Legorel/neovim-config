require('nvim-treesitter.configs').setup {
	ensure_installed = { 'c', 'cpp', 'bash', 'python', 'lua' },
	auto_install = true,
	highlight = {
		enabled = true,
	},
}
