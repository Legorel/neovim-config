local a = vim.api
is_windows = require('os').is_windows

-- Set working directory when opening Neovim.
local dwd = a.nvim_create_augroup("DefaultWorkingDir", { clear = true })
a.nvim_create_autocmd('VimEnter', {
	group = dwd,
	callback = function()
		-- Do not change dir if env variable NOCHDIR is set to true.
		if vim.env.NOCHDIR ~= 'true' then
			sysname = vim.loop.os_uname().sysname 
			if is_windows then
				vim.cmd.chdir([[D:\Users\Legorel\Dev]])
			else
				vim.cmd.chdir([[~/]])
			end
		end
	end,
})
