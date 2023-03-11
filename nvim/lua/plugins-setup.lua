-- validate if exist packer
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
augroup end
]])

-- build the packer, validate if the packer is installed
local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- packer can manager itself
    use('wbthomason/packer.nvim')
    -- colorscheme
    use 'navarasu/onedark.nvim' -- One Dark Theme
    use 'nvim-tree/nvim-tree.lua' -- File explorer
    use 'kyazdani42/nvim-web-devicons' -- Icons
    use 'nanozuki/tabby.nvim' -- Better tabs
    use 'hrsh7th/nvim-cmp' -- completion plugin
    use 'saadparwaiz1/cmp_luasnip' -- for autocompletion
    use 'hrsh7th/cmp-path' -- source for file system paths
    use 'navarasu/onedark.nvim' -- One Dark Theme
    use 'onsails/lspkind.nvim' -- Autocompletion
    use 'windwp/nvim-autopairs' -- autoclose parens, brackets, quotes, etc...

    use {
      'nvim-telescope/telescope.nvim', -- Search files
      requires = { {'nvim-lua/plenary.nvim'} } -- Easy functions writting
    }

    use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- LSP config
    use {
        'williamboman/mason.nvim', -- Servers Manager
        'williamboman/mason-lspconfig.nvim', -- Lsp configuration bridge
        'neovim/nvim-lspconfig', -- Nvim lsp configuration
    }

   if packer_bootstrap then
	require('packer').sync()
    end

end)
