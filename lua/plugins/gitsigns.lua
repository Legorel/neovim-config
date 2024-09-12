local map = require('keybinds').map

gitsigns = require('gitsigns')
gitsigns.setup {
	on_attach = function(bufnr)
		map('n', ']c', function()
			gitsigns.nav_hunk('next')
		end)

		map('n', '[c', function()
			gitsigns.nav_hunk('prev')
		end)

		-- Actions
		map('n', '<Leader>gs', gitsigns.stage_hunk)
		map('n', '<Leader>gr', gitsigns.reset_hunk)
		map('v', '<Leader>gs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
		map('v', '<Leader>gr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
		map('n', '<Leader>gS', gitsigns.stage_buffer)
		map('n', '<Leader>gR', gitsigns.reset_buffer)
		map('n', '<Leader>gu', gitsigns.undo_stage_hunk)
		map('n', '<Leader>gp', gitsigns.preview_hunk)
		map('n', '<Leader>gb', function() gitsigns.blame_line{full=true} end)
		map('n', '<Leader>gB', gitsigns.toggle_current_line_blame)
		map('n', '<Leader>gd', gitsigns.diffthis)
		map('n', '<Leader>gD', function() gitsigns.diffthis('~') end)
		map('n', '<Leader>gH', gitsigns.toggle_deleted)

		-- Text object
		map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
	end
}
