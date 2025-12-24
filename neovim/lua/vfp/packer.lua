-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Optional: For C-based fzf sorter/performance
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    -- Optional: A Telescope extension for Packer management
    use {'nvim-telescope/telescope-packer.nvim'}
end)
