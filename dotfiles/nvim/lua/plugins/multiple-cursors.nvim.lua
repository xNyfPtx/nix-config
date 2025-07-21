return {
	"jake-stewart/multicursor.nvim",
	branch = "1.0",
	config = function()
		require("multicursor-nvim").setup()
		require("multicursor-nvim").addKeymapLayer(function(layerSet)
			-- Select a different cursor as the main one.
			layerSet({ "n", "x" }, "<left>", require("multicursor-nvim").prevCursor)
			layerSet({ "n", "x" }, "<right>", require("multicursor-nvim").nextCursor)

			-- Delete the main cursor.
			layerSet({ "n", "x" }, "<leader>x", require("multicursor-nvim").deleteCursor)

			-- Enable and clear cursors using escape.
			layerSet("n", "<esc>", function()
				if not require("multicursor-nvim").cursorsEnabled() then
					require("multicursor-nvim").enableCursors()
				else
					require("multicursor-nvim").clearCursors()
				end
			end)
		end)
		-- Customize how cursors look.
		local hl = vim.api.nvim_set_hl
		hl(0, "MultiCursorCursor", { reverse = true })
		hl(0, "MultiCursorVisual", { link = "Visual" })
		hl(0, "MultiCursorSign", { link = "SignColumn" })
		hl(0, "MultiCursorMatchPreview", { link = "Search" })
		hl(0, "MultiCursorDisabledCursor", { reverse = true })
		hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
		hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
	end,
}
