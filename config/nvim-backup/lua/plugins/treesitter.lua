require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "python", "html", "css", "javascript", "typescript", "json", "bash" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},

})
