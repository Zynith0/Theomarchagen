return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
	},
	config = function()
		vim.lsp.enable('gopls')
		vim.lsp.enable('pyright')
		vim.lsp.enable('rust_analyzer')
		vim.lsp.enable('ts_ls')
		vim.lsp.enable('html')
		vim.lsp.enable('tailwindcss')
		vim.lsp.enable('zls')
		vim.lsp.enable('bashls')
		vim.lsp.enable('lua_ls')
	end
}
