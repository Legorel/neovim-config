local leap = require('leap')
leap.create_default_mappings()
leap.opts.special_keys.prev_target = '<BS>'
leap.opts.special_keys.prev_group = '<BS>'

require('leap.user').set_repeat_keys('<CR>', '<BS>')
