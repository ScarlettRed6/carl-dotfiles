return{
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local capabilities = cmp_nvim_lsp.default_capabilities()
		lspconfig.tsserver.setup({
			capabilities = capabilities,
		}) 
		lspconfig.html.setup({	
			capabilities = capabilities,
		})
		lspconfig.cssls.setup({
			capabilities = capabilities,
		})
		lspconfig.jsonls.setup({
			capabilities = capabilities,
		})
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = { global = { "vim" } },
				}
			}
		})
	end,

}
