return 
{
		{
			"williamboman/mason.nvim",
			config = function()
			require("mason").setup()
			end
		},
		{
			"williamboman/mason-lspconfig.nvim",
			config = function()
			require("mason-lspconfig").setup({
					ensure_installed = { "lua_ls", "clangd", "quick_lint_js", "rust_analyzer", "html"}
				})
			end
			
		},
		{
			"neovim/nvim-lspconfig",
			config = function()
				local lspconfig = require("lspconfig")
				local capabilities = require('cmp_nvim_lsp').default_capabilities()
				lspconfig.html.setup({
					capabilities = capabilities
				})
			end
		},
}
