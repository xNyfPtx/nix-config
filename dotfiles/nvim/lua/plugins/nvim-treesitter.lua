return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"html",
				"css",
				"tsx",
			},
			sync_install = false,
			auto_install = true,
		})
	end,
}
