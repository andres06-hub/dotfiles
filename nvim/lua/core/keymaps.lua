-- Function to make easier create keymaps

-- Mapping leader as <Space>
vim.g.mapleader = ' '

local keymap = vim.keymap

-- Increment/Decrement
keymap.set('n', '-', '<C-x>')
keymap.set('n', '+', '<C-a>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all 
keymap.set('n', '<C-a>', 'gg<S-v>G') -- Ctrl + a

-- Telescope
keymap.set('n', '<leader>p', ':Telescope find_files<CR>')

-- New tab 
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Reslize window
keymap.set('n', '<C-w><left>', '<C-w><') 
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Nvim Tree
-- keymap.set('n', '<leader>b', ':NvimTreeToggle<CR>')
-- keymap.set('n', '<leader>v', ':NvimTreeFocus<CR>')
