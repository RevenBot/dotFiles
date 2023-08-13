require('packer').init({

  compile_path = vim.fn.stdpath('data')..'/site/plugin/packer_compiled.lua',
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'solid' })
    end,
  },
})
local use = require('packer').use

use({
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} },
		config = function()
				require('plugins.telescope')
		end,
  })

use('wbthomason/packer.nvim')
--others
use({
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },

		config = function()
				require('plugins.nvim-tree')
		end,
})
use('mhinz/vim-startify')
use('tpope/vim-surround')
use('tpope/vim-commentary')
use('rafamadriz/friendly-snippets')
use('ryanoasis/vim-devicons')
use('nvim-treesitter/nvim-treesitter')
use({'nvim-treesitter/nvim-treesitter',
	run=':TSUpdate'
})
use('tpope/vim-fugitive')
--lsp
use({
		'neovim/nvim-lspconfig',
		requires = {
				'b0o/schemastore.nvim',
				'folke/lsp-colors.nvim',
		},
		config = function()
				require('plugins.lspconfig')
		end,
})

use({
  'L3MON4D3/LuaSnip',
  config = function()
    require('plugins.luasnip')
  end,
})

use({
  'hrsh7th/nvim-cmp',
  requires = {
    'L3MON4D3/LuaSnip',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-nvim-lua',
    'saadparwaiz1/cmp_luasnip',
  },
  config = function()
    require('plugins.cmp')
  end,
})
use({
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = function()
		  require('plugins.lualine')
  end,
})
