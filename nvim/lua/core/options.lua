local options = {
  -- Encoding
  encoding = 'utf-8',

  -- Line numbers
  relativenumber = true,

  -- Tabs and identation 
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  autoindent = true,
  ai = true, -- Auto Indent
  si = true, -- Smart Indent

  -- Line Wrapping
  wrap = false, -- No wrap lines

  -- Search settings
  ignorecase = true,

  -- Windows : Set the splits to open at the right side and below 
  splitright = true,
  splitbelow = true,

  -- Appareance
  termguicolors = true,

  -- To avoid performance issues, I never fold anything  
  -- foldmethod = manual

  -- Cursor
  cursorline = true,
}

local opt = vim.opt

-- Search
opt.path:append { '**' } -- Finding files -Search down into subfolders
opt.wildignore:append { '*/node_modules*' }



for k, v in pairs(options) do
  vim.opt[k] = v
end
