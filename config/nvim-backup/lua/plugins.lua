vim.opt.rtp:prepend("~/.config/nvim/lazy/lazy.nvim")

require("lazy").setup({
	{ 
	  "nvim-lualine/lualine.nvim",
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	  config = function()
	  	require("plugins.lualine")
	  end,
	},
	{
	  "nvim-treesitter/nvim-treesitter",
	  build = ":TSUpdate",
	  config = function()
		require("plugins.treesitter")
	  end,
	},
	{
	  "nvim-telescope/telescope.nvim",
	  dependencies = { "nvim-lua/plenary.nvim" },
	  config = function()
		  local builtin = require("telescope.builtin")
		  vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		  vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		  vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		  vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
	  end,
	},
	{
	  "ellisonleao/gruvbox.nvim",
	  priority = 1000,
	  config = function()
		vim.cmd("colorscheme gruvbox")
	  end,
	},
	{
	  "nvim-tree/nvim-tree.lua",
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	  config = function()
		require("nvim-tree").setup({})
	  end,
	},
	{
	  "neovim/nvim-lspconfig",
	  config = function()
 		require("plugins.lsp")		
	  end,
	},
	{
	  "nvimtools/none-ls.nvim",
	  dependencies = { "nvim-lua/plenary.nvim", "nvimtools/none-ls-extras.nvim" },
	  config = function()
	  	require("plugins.null-ls")
	  end,
	},
	{
	  "hrsh7th/nvim-cmp",
	  dependencies = {
		"hrsh7th/cmp-nvim-lsp",	
		"hrsh7th/cmp-buffer",	
		"hrsh7th/cmp-path",	
		"hrsh7th/cmp-cmdline",
		--"L3MON4D3/LuaSnip",
		--"saadparwaiz1/cmp-luasnip",
		--"rafamadriz/friendly-snippets",
	  },
	  config = function()
		require("plugins.nvim-cmp")
	  end,
	},
})


