local o = vim.o

-- True colors
o.termguicolors = true

-- Enable mouse
o.mouse = 'a'

-- Set shell for :terminal
o.shell = [["C:\Program Files\Git\bin\bash.exe"]]

-- Chdir related settings
--o.autochdir = true
o.cdhome = true

-- Clipboard settings
--o.clipboard = unnamedplus

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

-- Indentation using tabs.
o.expandtab = false
o.tabstop = 4
o.shiftwidth = 4
o.smartindent = true
o.autoindent = true
o.breakindent = true

o.ignorecase = true
o.smartcase = true

o.pumheight = 10

