return {
	"olrtg/nvim-emmet",
	config = function()
		vim.keymap.set({ "n", "v" }, "<leader>xe", require("nvim-emmet").wrap_with_abbreviation)

		vim.api.nvim_create_autocmd({ "FileType" }, {
			pattern = "css,eruby,html,htmldjango,javascriptreact,less,pug,sass,scss,typescriptreact",
			callback = function()
				vim.lsp.start({
					cmd = { "emmet-language-server", "--stdio" },
					root_dir = vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true })[1]),
					init_options = {
						includeLanguages = {},
						excludeLanguages = {},
						extensionsPath = {},
						preferences = {},
						showAbbreviationSuggestions = true,
						showExpandedAbbreviation = "always",
						showSuggestionsAsSnippets = true,
						syntaxProfiles = {},
						variables = {},
					},
				})
			end,
		})
	end,
}
