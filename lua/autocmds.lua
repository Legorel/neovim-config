local a = vim.api

-- Set working directory when opening Neovim.
--local dwd = a.nvim_create_augroup("DefaultWorkingDir", { clear = true })
--a.nvim_create_autocmd('VimEnter', {
--	group = dwd,
--	callback = function()
--		-- Do not change dir if env variable NOCHDIR is set to true.
--		if vim.env.NOCHDIR ~= 'true' then
--			vim.cmd([[chdir ~/dev]])
--		end
--	end,
--})
