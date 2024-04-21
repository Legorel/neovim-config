require('nvim-treesitter.configs').setup {
	ensure_installed = { 'c', 'cpp', 'bash', 'python', 'lua', 'java', 'ocaml' },
	auto_install = false,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
}

-- Switch header/souce bind.
require('keybinds').map('n', '<Leader>s', '<Cmd>ClangdSwitchSourceHeader<CR>')
