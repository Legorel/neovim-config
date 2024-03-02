require('nvim-treesitter.configs').setup {
	ensure_installed = { 'c', 'cpp', 'bash', 'python' },
	auto_install = false,
	highlight = {
		enabled = true,
	},
}
