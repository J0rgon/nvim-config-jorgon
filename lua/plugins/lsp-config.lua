return {
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
        ensure_installed = { "lua_ls", "clangd", "quick_lint_js", "rust_analyzer", "html", "emmet_ls" }
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

      lspconfig.emmet_ls.setup({
        filetypes = { "html", "css", "javascript", "javascriptreact", "typescriptreact", "svelte", "vue", "xml" },
        capabilities = capabilities,
        init_options = {
          html = {
            options = {
              ["bem.enabled"] = true,
            },
          },
        },
      })
    end
  },
}

