return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Dependencies 
  use 'nvim-lua/plenary.nvim'
  -- Theme
  use 'navarasu/onedark.nvim'
  use 'rose-pine/neovim'
  use 'yashguptaz/calvera-dark.nvim'
  use({"catppuccin/nvim", as = "catppuccin"})
  use 'shaeinst/roshnivim-cs'
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
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- Directory Tree 
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require'nvim-tree'.setup {}
    end
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
    requires = {{'nvim-lua/plenary.nvim'}}
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

  -- Tabnine
  use {
    'tzachar/cmp-tabnine',
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp'
  }
  -- Icon for autocomplete
  use 'onsails/lspkind-nvim'

  -- Color in Buffer
  use 'norcalli/nvim-colorizer.lua'

  -- Git Sign
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'}
    -- tag = 'release' -- To use the latest release
  }

  -- Menu for NeoVim
  use 'glepnir/dashboard-nvim'

  -- Indent Guide
  -- use "lukas-reineke/indent-blankline.nvim"

  -- Auto Indent/Format
  use 'lukas-reineke/format.nvim'

  -- Terminal inside Vim
  use {"akinsho/toggleterm.nvim"}

  -- Comment in Vim

  use 'terrortylor/nvim-comment'
  use 'suy/vim-context-commentstring'

  -- SQL 
  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-ui'

  -- Vim Surround
  use 'blackCauldron7/surround.nvim'

  -- Zen Mode
  use 'folke/zen-mode.nvim'

  -- Document Generation
  use {'kkoomen/vim-doge', run = ":call doge#install()"}

  -- Rest HTTP Request 
  use 'NTBBloodbath/rest.nvim'
end)
