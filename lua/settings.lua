local g = vim.g
local o = vim.o
local A = vim.api
local w = vim.wo

o.number = true
o.relativenumber = true
w.wrap = false

o.tabstop = 4
o.shiftwidth = 0

o.clipboard = 'unnamedplus'

o.ignorecase = true
o.smartcase = true

o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

o.history = 50

o.splitright = true
o.splitbelow = true

o.splitkeep = 'screen'

-- lualine
--require('lualine').setup()

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
-- empty setup using defaults
require("nvim-tree").setup()

-- Highlighting --
-- Highlight the region on yank
A.nvim_create_autocmd('TextYankPost', {
	group = num_au,
	callback = function()
		vim.highlight.on_yank({ higroup = 'Visual', timeout = 120 })
	end,
})

-- vim.opt.spelllang = 'en_us'
vim.opt.spell = true

-- Theme
local ok, _ = pcall(vim.cmd, "colorscheme base16-onedark")


-- Editing
o.foldenable = false
