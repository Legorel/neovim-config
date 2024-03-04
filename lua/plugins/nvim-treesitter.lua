require('nvim-treesitter.configs').setup {
	ensure_installed = { 'c', 'cpp', 'bash', 'python', 'lua', 'java', 'ocaml' },
	auto_install = false,
	highlight = {
		enabled = true,
	},
}
