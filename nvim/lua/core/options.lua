local opt = vim.opt

-- Line numbers
opt.relativenumber = true

-- Tabs and identation 
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.ai = true -- Auto Indent
opt.si = true -- Smart Indent

-- Line Wrapping
opt.wrap = false -- No wrap lines

-- Search settings
opt.ignorecase = true

-- Windows : Set the splits to open at the right side and below 
opt.splitright = true
opt.splitbelow = true

-- Search
opt.path:append { '**' } -- Finding files -Search down into subfolders
opt.wildignore:append { '*/node_modules*' }

-- Appareance
opt.termguicolors = true

-- To avoid performance issues, I never fold anything  
-- opt.foldmethod = manual
