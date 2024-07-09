vim.g.mapleader = " "
vim.g.netrw_banner = 0
vim.o.background = "dark"

local opt = vim.opt

opt.conceallevel = 1
opt.clipboard = "unnamedplus"
-- opt.cmdheight = 1
-- opt.colorcolumn = "80"
opt.completeopt = { "menu", "menuone", "preview" }
opt.copyindent = true
opt.cursorline = true
opt.expandtab = true
opt.guicursor = "n-c-v-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
opt.hlsearch = false
opt.icon = true
-- opt.ignorecase = true
-- opt.incsearch = false
opt.matchpairs = "(:),{:},[:],<:>"
opt.mouse = "a"
opt.number = true
opt.numberwidth = 4
opt.pumheight = 15
opt.relativenumber = true
opt.scrolloff = 10
opt.shiftwidth = 2
-- opt.showtabline = 2
opt.signcolumn = "yes:1"
opt.list = false
-- opt.listchar = { trail = "_" }
opt.smartcase = true
opt.smartindent = true
-- opt.smarttab = true
opt.softtabstop = 2
opt.splitbelow = true
opt.splitright = true
-- opt.statusline = ""
opt.swapfile = false
-- opt.tabline = ""
opt.tabstop = 2
opt.termguicolors = true
opt.titlelen = 0
opt.titlestring = 'nvim %{expand("%:p")}'
opt.wrap = false

