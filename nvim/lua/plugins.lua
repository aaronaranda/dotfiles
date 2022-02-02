local packer = require'packer'
local use = packer.use
packer.startup{function()
  -- Let packer manage itself
  use 'wbthomason/packer.nvim'

  -- LSP 
  use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
  use 'onsails/lspkind-nvim'
  use {
    'nvim-lua/lsp-status.nvim',
    as = 'lsp_status',
    config = function()
      require('lsp.status')
    end
  } 

  use {'ray-x/lsp_signature.nvim', config = [[require('configs.lsp_signature')]]} 


  -- COMPLETION
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require('configs.cmp')
    end,
    requires = {
      "L3MON4D3/LuaSnip",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-calc",
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-cmdline",
      "tzachar/cmp-tabnine",
      'hrsh7th/cmp-nvim-lua'
    },
  } 

  use {
    'tzachar/cmp-tabnine',
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp'
  } 

  use "rafamadriz/friendly-snippets"

  -- use 'AndrewRadev/tagalong.vim'
  -- use 'andymass/vim-matchup'


  -- TREESITTER
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = [[require('configs.treesitter')]],
  } 

  use {
    'nvim-treesitter/playground',
    requires = {'nvim-treesitter/nvim-treesitter'},
    cmd = 'TSPlaygroundToggle',
    config = function()
      require('configs.playground')
    end
  }

  use {'p00f/nvim-ts-rainbow', config = [[require('configs.tsrainbow')]]}
   
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = [[require('configs.indent-blankline')]]
  } 

  use 'romgrk/nvim-treesitter-context'


  -- SYNTAX
  use 'moll/vim-node'
  use 'chrisbra/csv.vim'
  use 'npxbr/glow.nvim'


  -- ICONS
  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require("nvim-web-devicons").setup { default = true }
    end,
  } 

  use 'ryanoasis/vim-devicons'


  -- STATUSLINE/BUFFERLINE
  use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    -- config = [[require('configs.galaxyline')]],
    config = [[require('configs.galaxyline.chadline')]],
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  } 

  -- use {
  --   'nvim-lualine/lualine.nvim',
  --   config = function()
  --     require('lualine').setup()
  --   end
  -- }

  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = function()
      require("configs.barbar")
    end
  } 

  -- TELESCOPE
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    config = [[require('configs.telescope')]]
  }   


  -- EXPLORER
  use {
    "kyazdani42/nvim-tree.lua",
    -- devicons in lua
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("nvim-tree").setup()
    end
  } 


  -- GIT
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('configs.gitsigns')
    end,
    requires = {
      'nvim-lua/plenary.nvim'
    },
    event = 'BufRead'
  } 
  use 'kdheepak/lazygit.nvim'
  use 'rhysd/committia.vim'


  -- MOVEMENT SEARCH REPLACE
  use 'windwp/nvim-spectre'
  use {
    'nacro90/numb.nvim',
    config = function()
      require('numb').setup {
        show_numbers = true,
        show_cursorline = true
      }
    end
  }
  use {
    'dyng/ctrlsf.vim',
    config = function()
      require('configs.ctrlsf')
    end
  }
  use {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup()
    end
  }


  -- OTHER
  use {
    'vim-utils/vim-man'
  }

  use 'dhruvasagar/vim-table-mode'

  -- Show LSP errors/diagnostics in pretty list
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = [[require('configs.trouble')]]
  }

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = [[require('configs.todocomments')]]
  }

  use {
    'mhartington/formatter.nvim',
    config = function()
      require('configs.formatter')
    end
  } 


 




  --Vimtex
  use {
    'lervag/vimtex',
    config = [[require('configs.vimtex')]]
  }

  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end    
  }


  -- Wal colorscheme and wpgtk for alt
  use 'dylanaraps/wal.vim'
  use 'deviantfero/wpgtk.vim'
  use 'nekonako/xresources-nvim'



  -- Colorize color codes
  use {
    'norcalli/nvim-colorizer.lua',
    config = [[require('configs.colorizer')]],
    -- ft = {'css', 'javascript', 'json', 'scss', 'vim'}
    ft = {}
  }



  -- auto pairs
  use {
    'windwp/nvim-autopairs',
    after = 'nvim-cmp',
    config = function()
      require('configs.autopairs')
    end
  }

  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && yarn install',
    cmd = 'MarkdownPreview',
  }


  -- Dashboard
  use {
    'glepnir/dashboard-nvim',
    config = [[require('configs.dashboard')]]
  }

  use {
    'akinsho/nvim-toggleterm.lua',
    config = function()
      require('configs.toggleterm')
    end
  }


  use {
    'nvim-telescope/telescope-media-files.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope.nvim'}},
    -- config = [[require('configs.telescopemedia')]]
  }

  use {
    'terrortylor/nvim-comment',
    config = function()
      require('nvim_comment').setup({comment_empty=false})
    end
  }


  use {
    'vim-pandoc/vim-pandoc',
  }

  use {
    'vim-pandoc/vim-pandoc-syntax',
  }  
 

  use {
    'sheerun/vim-polyglot',
    config = function() 
      require('configs.vim-polyglot')
    end,
  }
end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    }
  }
}

vim.cmd([[
augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua PackerCompile profile=true
augroup end
""VH |Function key F5|Refresh all plugins|
nnoremap <F5> :PackerSync<CR>
]])
