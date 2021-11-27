return require('packer').startup(function(use)
 -- Packer can manage itself
  use 'wbthomason/packer.nvim'
 -- Theme
  use 'navarasu/onedark.nvim' 
  use 'rose-pine/neovim'
 -- Syntax Highlight
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use 'windwp/nvim-autopairs'
    -- Extenstion
    use 'windwp/nvim-ts-autotag' -- Autotag
    use 'p00f/nvim-ts-rainbow' -- Rainbow


 -- Status Line
  use {
  'nvim-lualine/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
 -- Buffer Line 
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  -- Directory Tree 
  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end
  }
  -- Which Key
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
  end
  }
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Autocomplete
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
   
    -- Icon for autocomplete
  use 'onsails/lspkind-nvim'

  -- Color in Buffer
  use 'norcalli/nvim-colorizer.lua'

  -- Git Sign
  use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  -- tag = 'release' -- To use the latest release
  }


end)
