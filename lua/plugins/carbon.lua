carbon = require('carbon')
carbon.setup {
	auto_open = false,
	sync_pwd = true,
	sync_on_cd = true,
	actions = {
    	up = ')',
    	down = '=',
    	quit = 'q',
    	tabe = '<c-t>',
    	edit = '<cr>',
    	move = 'm',
    	reset = 'u',
    	split = '<c-s>',
    	vsplit = '<c-v>',
    	create = {'c', '%'},
    	delete = 'd',
    	close_parent = '-',
    	toggle_hidden = '*',
    	toggle_recursive = '!',
	},
}

map = require('keybinds').map

-- Toggle tree.
map('n', '<Leader>t', carbon.toggle_sidebar)
map('n', '<Leader>T', carbon.explore_float)
