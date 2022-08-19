return require('packer').startup(function(use)
	-- Packer can manage itself
	use {'wbthomason/packer.nvim'}
	-- which key
	use {'folke/which-key.nvim'}
	-- treesitter
	use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
	-- auto close pairs
	use {'windwp/nvim-ts-autotag'}
	use {'p00f/nvim-ts-rainbow'}
	use {'windwp/nvim-autopairs',  config = function() require("nvim-autopairs").setup {} end}
	-- telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	} 
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
	use { "nvim-telescope/telescope-file-browser.nvim" }
end)