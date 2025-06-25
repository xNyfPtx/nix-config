return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			--  for users who want auto-save conform + lazyloading!
			event = "BufWritePre",
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				html = { "prettierd" },
				css = { "prettierd" },
				javascript = { "prettierd" },
				json = { "prettierd" },
				yaml = { "prettierd" },
				markdown = { "prettierd" },
				typescript = { "prettierd" },
				lua = { "stylua" },
				nix = { "alejandra" },
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
