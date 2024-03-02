require('lualine').setup {
	options = {
		theme = 'tokyonight',
	},
	sections = {
		lualine_a = { 'mode' },
		lualine_b = { 'branch', 'diff', 'diagnostic' },
		lualine_c = { 'filename', 'buffers' },
		lualine_x = { 'encoding', 'fileformat', 'filetype' },
		lualine_y = { 'progress' },
		lualine_z = { 'location' },
	},
}
