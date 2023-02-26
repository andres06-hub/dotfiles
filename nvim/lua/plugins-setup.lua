-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- packer can manager itself
    use('wbthomason/packer.nvim')
    -- colorscheme
    use 'navarasu/onedark.nvim' -- One Dark Theme
    use {
        'nvim-telescope/telescope.nvim', -- Search files
        requires = { {'nvim-lua/plenary.nvim'} } -- Easy functions writting
   }
end)
