local a = vim.api

-- Set leader key before anything else.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- Helper function to avoid duplicate mappings
function map(m, lhs, rhs)
	for _, m in ipairs(type(m) == 'table' and m or { m }) do
		if vim.fn.maparg(lhs, m, false, false) ~= '' then
			vim.keymap.del(m, lhs)
		end
	end
	vim.keymap.set(m, lhs, rhs, { silent = true })
end

-- Fix CTRL-] on windows.
map('n', '<C-ù>', function()
	local _, _ = pcall(vim.cmd.tag, vim.fn.expand('<cword>'))
end)

-- Paste
map('i', '<S-Insert>', '<C-R>+')
map('c', '<S-Insert>', '<C-R>+')

-- Delete word forward
map('i', '<C-Del>', '<C-O>dw')

-- Newline before/after current in insert mode
map('i', '<C-CR>', '<C-O>o')
map('i', '<S-CR>', '<C-O>O')

-- Exit terminal mode
map('t', '<Esc>', '<C-\\><C-n>')

-- n and N keep cursor in center
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- Move line up or down
map('n', '<A-Up>', '<Cmd>move -2<CR>')
map('n', '<A-Down>', '<Cmd>move +1<CR>')
map('x', '<A-Up>', ":move '< -2<CR>gv=gv")
map('x', '<A-Down>', ":move '> +1<CR>gv=gv")

-- Switch to next/previous buffer
map('n', '<Leader>,', '<Cmd>bn<CR>')
map('n', '<Leader>n', '<Cmd>bp<CR>')

-- Edit config
map('n', '<Leader>c', function()
	-- Get config directory, need for the tchdir later.
	local config_path = a.nvim_exec2('echo stdpath("config")', { output = true }).output

	-- Search if config is already opened.
	for _, win in ipairs(a.nvim_list_wins()) do
		local buf = a.nvim_win_get_buf(win)
		local name = a.nvim_buf_get_name(buf)

		vimrc_name = a.nvim_exec2('echo $MYVIMRC', { output = true}).output
		-- Use / for file path when on windows.
		if require('os_util').is_windows then
			vimrc_name = vimrc_name:gsub('\\', '/')
		end

		-- If window is already opened for the config file, switch to it.
		if name == vimrc_name then
			a.nvim_set_current_win(win)

			return
		end
	end

	-- Create a new tabpage if the current buffer has a name.
	local buf = a.nvim_win_get_buf(0)
	if a.nvim_buf_get_name(buf) ~= '' then
		vim.cmd('tabnew')
	end

	-- Change dir for the current tabpage and edit.
	vim.cmd.tcd(config_path)
	vim.cmd.edit('$MYVIMRC')
end)


return { map = map }
