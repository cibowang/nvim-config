require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
-- never ever folding
vim.opt.foldenable = false
vim.opt.foldmethod = 'manual'
vim.opt.foldlevelstart = 99

-- enable syntax highlighting
vim.opt.syntax = "on"

-- set encodings
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- indentation, 4 spaces for a tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- automatically insert tabs
vim.opt.smarttab = true

-- replace tab with spaces
vim.opt.expandtab = true

-- enable tabline if a tab is there
vim.opt.showtabline = 1

-- enable better colors
vim.opt.termguicolors = true

-- better searching
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- disable backups
vim.opt.backup = false
vim.opt.background = "dark"

-- display the current line different from the rest of the file
vim.opt.cursorline = true

-- disable swap files
vim.opt.swapfile = false

-- keep more context on screen while scrolling
vim.opt.scrolloff = 2

-- never show me line breaks if they're not there
vim.opt.wrap = false

-- always draw sign column. prevents buffer moving when adding/deleting sign
vim.opt.signcolumn = 'yes'

-- and show the absolute line number for the current line
vim.opt.number = true

-- sweet sweet relative line numbers
vim.opt.relativenumber = true

-- infinite undo!
vim.opt.undofile = true

-- when opening a file with a command (like :e),
-- don't suggest files like there:
vim.opt.wildignore = '.hg,.svn,*~,*.png,*.jpg,*.gif,*.min.js,*.swp,*.o,vendor,dist,_site'

-- case-insensitive search/replace
vim.opt.ignorecase = true

-- unless uppercase in search term
vim.opt.smartcase = true

-- show a column at 80 characters as a guide for long lines
vim.opt.colorcolumn = '80'

-- show more hidden characters
-- also, show tabs nicer
vim.opt.listchars = 'tab:^ ,nbsp:¬,extends:»,precedes:«,trail:•'
