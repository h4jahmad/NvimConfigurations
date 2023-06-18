vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

return require('packer').startup({
	function(use)

	use('wbthomason/packer.nvim')
	
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
		config = function()
		--require("nvim-tree").setup {}
		end
	}

	-- LSP and Languages
	use 'williamboman/mason.nvim' 
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig' 
    use 'simrat39/rust-tools.nvim'

	use 'godlygeek/tabular'
	use 'preservim/vim-markdown'
	use 'udalov/kotlin-vim'

	use('puremourning/vimspector')

	 -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path' 
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'

	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

	-- Productivity
	use {
		"nvim-lualine/lualine.nvim",
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- Themes
	use("RRethy/nvim-base16")
	use("xiyaowong/transparent.nvim")
	use("nvim-treesitter/nvim-treesitter")

	end,
	config = {
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
		end,
		},
	},
})
