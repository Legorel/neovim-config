local fzf = require('fzf-lua')
fzf.setup {}


local map = require('keybinds').map

-- Buffers and files
map('n', '<Leader>fb', fzf.buffers)
map('n', '<Leader>ff', fzf.files)
map('n', '<Leader>fo', fzf.oldfiles)
map('n', '<Leader>ft', fzf.tabs)

-- Search
map('n', '<Leader>fgg', fzf.grep)
map('n', '<Leader>fgl', fzf.grep_last)
map('n', '<Leader>fgi', fzf.live_grep_native)

-- LSP
map('n', '<Leader>flr', fzf.lsp_references)
map('n', '<Leader>fld', fzf.lsp_definitions)
map('n', '<Leader>flD', fzf.lsp_declarations)
map('n', '<Leader>fli', fzf.lsp_implementations)
map('n', '<Leader>flt', fzf.lsp_typedefs)
map('n', '<Leader>flf', fzf.lsp_finder)
map('n', '<Leader>flw', fzf.lsp_document_diagnostics)

-- DAP
map('n', '<Leader>fdC', fzf.dap_commands)
map('n', '<Leader>fdc', fzf.dap_configurations)
map('n', '<Leader>fdb', fzf.dap_breakpoints)
map('n', '<Leader>fdv', fzf.dap_variables)
map('n', '<Leader>fdf', fzf.dap_frames)

-- Misc
map('n', '<Leader>fh', fzf.help_tags)
map('n', '<Leader>fct', fzf.colorschemes)
map('n', '<Leader>fcc', fzf.commands)
map('n', '<Leader>fch', fzf.command_history)
