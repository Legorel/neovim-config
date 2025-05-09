dap = require('dap')

map = require('keybinds').map

-- DAP Adapters.
if require('os_util').is_windows then
	lldb_dap_command = '' -- TODO: Add windows command.
else
	lldb_dap_command = '/usr/bin/lldb-dap'
end

dap.adapters.lldb = {
	type = 'executable',
	command = lldb_dap_command,
	name = 'lldb',
}

-- DAP Mappings.
map('n', '<F5>', dap.continue)
map('n', '<F10>', dap.step_over)
map('n', '<F11>', dap.step_into)
map('n', '<F12>', dap.step_out)
map('n', '<Leader>b', dap.toggle_breakpoint)


-- Automatically load configurations from project's launch_config.lua
local group = 'nvim-dap_load_config'
vim.api.nvim_create_augroup(group, { clear = true })
vim.api.nvim_create_autocmd({'DirChanged'}, {
	group = group,
	pattern = 'global',
	callback = function(ev)
		-- Reset.
		package['loaded']['launch_config'] = nil
		dap.configurations = {}

		-- Load configurations from project.
		pcall(require, 'launch_config')
	end,
})


-- nvim-dap-ui
dapui = require('dapui')
dapui.setup()

map('n', '<Leader>D', dapui.toggle)
map('n', '<Leader>d&', function() dapui.toggle(1) end)
map('n', '<Leader>dé', function() dapui.toggle(2) end)

-- nvim-dap-virtual-text
dapvt = require('nvim-dap-virtual-text')
dapvt.setup()
