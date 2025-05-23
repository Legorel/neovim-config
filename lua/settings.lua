local o = vim.o
local g = vim.g

-- True colors
o.termguicolors = true

-- Enable mouse
o.mouse = 'a'

-- Set shell for :terminal
if require('os_util').is_windows then
	o.shell = [["C:\Program Files\Git\bin\bash.exe"]]
	o.shellslash = true
end

-- Chdir related settings
--o.autochdir = true
o.cdhome = true

-- Clipboard settings
o.clipboard = 'unnamedplus'

-- Scroll related settings
o.scrolloff = 8
o.sidescroll = 5
o.wrap = false

-- Line number
o.number = true
o.numberwidth = 4
o.relativenumber = true
o.signcolumn = 'number'


-- Cursor
o.cursorline = true
--o.cursorcolumn = true
--vim.o.cursorlineopt = 'both'

-- Better splits
o.splitright = true
o.splitbelow = true

-- Search related settings
o.hlsearch = false
o.ignorecase = true
o.smartcase = true
o.tagcase = 'followic'

-- Indentation using tabs
o.expandtab = false
o.tabstop = 4
o.shiftwidth = 4
o.smartindent = true
o.autoindent = true
o.breakindent = true

-- C syntax for .h header.
g.c_syntax_for_h = true

o.ignorecase = true
o.smartcase = true

o.pumheight = 10

