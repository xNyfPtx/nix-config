return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			--  for users who want auto-save conform + lazyloading!
			event            = "BufWritePre",
			format_on_save   = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				lua = { "prettier" },
				nix = { 'nixpkgs_fmt' },
				["*"] = { "codespell" },
			},
		})
		vim.o.tabstop = 2
		vim.bo.tabstop = 2
		vim.o.softtabstop = 2
		vim.o.shiftround = true
		vim.o.shiftwidth = 2
		vim.bo.shiftwidth = 2
	end,
}
