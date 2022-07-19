local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path
  })

  vim.api.nvim_command('packadd packer.nvim')
end

return require('packer').startup({
  function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Dependencies
    use 'nvim-lua/plenary.nvim'
    -- Theme
    use 'olimorris/onedarkpro.nvim'
    use 'rose-pine/neovim'
    -- Syntax Highlight
    use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

    -- Extenstion
    use {'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter"}
    -- use 'p00f/nvim-ts-rainbow' -- Rainbow
    use {'kyazdani42/nvim-web-devicons', config = "require('devicon-config')"}

    -- Status Line
    use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}

    -- Buffer Line
    use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      event = "BufWinEnter",
      config = "require('bufferline-config')"
    }

    use {
      'tamton-aquib/staline.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      event = "BufWinEnter",
      config = "require('staline-config')"
    }
    -- Directory Tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = "require('nvim-tree-config')"
    }
    -- Which Key
    use {"folke/which-key.nvim", event = "BufWinEnter", config = "require('whichkey-config')"}
    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/plenary.nvim'}},
      cmd = "Telescope",
      config = "require('telescope-config')"
    }

    -- Autocomplete
    use {'neovim/nvim-lspconfig', config = "require('lsp')"}
    use {'tami5/lspsaga.nvim'}
    use {'williamboman/nvim-lsp-installer'}
    use {'hrsh7th/cmp-nvim-lsp-signature-help'}
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use {'windwp/nvim-autopairs', config = "require('autopair-config')", after = "nvim-cmp"}
    -- Indent Guide
    -- use "lukas-reineke/indent-blankline.nvim"
    -- Auto Indent/Format/Diagnostic
    use {'jose-elias-alvarez/null-ls.nvim'}

    -- Tabnine
    use {
      'tzachar/cmp-tabnine',
      run = './install.sh',
      requires = 'hrsh7th/nvim-cmp',
      config = "require('tabnine-config')",
      after = "nvim-cmp"
    }
    -- Icon for autocomplete
    use 'onsails/lspkind-nvim'

    -- Color in Buffer
    use 'norcalli/nvim-colorizer.lua'

    -- Git Sign
    use {
      'lewis6991/gitsigns.nvim',
      requires = {'nvim-lua/plenary.nvim'},
      config = "require('gitsigns-config')"
      -- tag = 'release' -- To use the latest release
    }

    -- Menu for NeoVim
    use {'glepnir/dashboard-nvim'}

    -- Terminal inside Vim
    use {"akinsho/toggleterm.nvim", config = "require('toggleterm-config')"}

    -- Comment in Vim
    use {'numToStr/Comment.nvim', config = "require('comment-config')"}
    -- use {'terrortylor/nvim-comment', config = "require('comment-config')"}
    -- use 'suy/vim-context-commentstring'
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- sql
    use {"tpope/vim-dadbod", config = "require('dadbod-config')"}
    use {'kristijanhusak/vim-dadbod-ui', after = "vim-dadbod"}

    -- Vim Surround
    -- This have been disappeared
    -- use 'blackCauldron7/surround.nvim'
    use 'tpope/vim-surround'

    -- Replace with register
    use 'inkarkat/vim-ReplaceWithRegister'

    -- Titlecasing Text
    use 'christoomey/vim-titlecase'

    -- Sort paragraph/ text
    use 'christoomey/vim-sort-motion'

    -- Copy to Clipboard easier
    use 'christoomey/vim-system-copy'

    -- Text Object
    use 'michaeljsmith/vim-indent-object'
    use {'nvim-treesitter/nvim-treesitter-textobjects', run = ':TSUpdate'}

    -- Zen Mode
    use {'folke/zen-mode.nvim', config = "require('zenmode-config')"}
    use {"folke/twilight.nvim", config = "require('twilight-config')"}

    -- Document Generation
    use {'kkoomen/vim-doge', run = ":call doge#install()", config = "require('doge-config')"}

    -- Rest HTTP Request
    use 'NTBBloodbath/rest.nvim'

    use {'mfussenegger/nvim-dap', config = "require('nvim-dap')"}
    use {'nvim-telescope/telescope-dap.nvim', requires = {'mfussenegger/nvim-dap'}}
    use {'theHamsta/nvim-dap-virtual-text', requires = {'mfussenegger/nvim-dap'}}
    use {"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}}

    use {'aserowy/tmux.nvim', config = "require('tmux-config')"}

    use 'github/copilot.vim'

    -- use { 'andweeb/presence.nvim', config = "require('presence-config')" }
    -- use 'vimpostor/vim-tpipeline'
  end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({border = 'single'})
      end
    }
  }
})

-- use 'navarasu/onedark.nvim'
-- use 'yashguptaz/calvera-dark.nvim'
-- use({"catppuccin/nvim", as = "catppuccin"})
-- use 'shaeinst/roshnivim-cs'
-- use 'kvrohit/substrata.nvim'
-- use 'rebelot/kanagawa.nvim'
