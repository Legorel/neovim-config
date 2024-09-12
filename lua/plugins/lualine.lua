require('lualine').setup {
	options = {
		theme = 'tokyonight',
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {'filename'},
		lualine_x = {'filetype'},
		lualine_y = {},
		lualine_z = {'progress', 'location'},
	},
	extensions = {
		'nvim-dap-ui',
	},
}
