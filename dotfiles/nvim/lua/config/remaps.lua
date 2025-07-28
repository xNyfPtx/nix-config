local map = vim.keymap.set

-- miscellaneous
map("n", "<C-h>", "<C-w>h", { desc = "Switch to left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch to right window" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch to bottom window" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch to top window" })

map("n", "<leader>/", "gcc", { desc = "Toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

map("n", "<C-s>", "<cmd>w<cr>", { desc = "Save file" })

map("t", "<C-x>", "<C-\\><C-N>", { desc = "Escape terminal mode" })

-- romgrk/barbar.nvim
map("n", "<A-,>", "<cmd>BufferPrevious<cr>", { noremap = true, silent = true })
map("n", "<A-.>", "<cmd>BufferNext<cr>", { noremap = true, silent = true })
map("n", "<A-c>", "<cmd>BufferClose<cr>", { noremap = true, silent = true })

-- cjodo/convert.nvim
map("n", "<leader>cn", "<cmd>ConvertFindNext<cr>")
map("n", "<leader>cc", "<cmd>ConvertFindCurrent<cr>")
map({ "n", "v" }, "<leader>ca", "<cmd>ConvertAll<cr>")

-- nvzone/floaterm
map({ "n", "t" }, "<A-i>", "<cmd>FloatermToggle<cr>")

-- kdheepak/lazygit.nvim
map("n", "<leader>l", "<cmd>LazyGit<cr>")

-- jake-stewart/multicursor.nvim
map({ "n", "x" }, "<up>", function()
	require("multicursor-nvim").lineAddCursor(-1)
end)
map({ "n", "x" }, "<down>", function()
	require("multicursor-nvim").lineAddCursor(1)
end)
map({ "n", "x" }, "<c-q>", require("multicursor-nvim").toggleCursor)

-- olrtg/nvim-emmet.lua
map({ "n", "v" }, "<leader>xe", require("nvim-emmet").wrap_with_abbreviation)

-- chrisgrieser/nvim-spider
map({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<cr>")
map({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<cr>")
map({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<cr>")

-- nvim-tree/nvim-tree.lua
map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")
map("n", "<leader>e", "<cmd>NvimTreeFocus<cr>")

-- nvim-telescope/telescope.nvim
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
map("n", "<leader>ma", "<cmd>Telescope marks<cr>")
map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>")
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
map("n", "<leader>cm", "<cmd>Telescope git_commits<cr>")
map("n", "<leader>gt", "<cmd>Telescope git_status<cr>")
map("n", "<leader>pt", "<cmd>Telescope terms<cr>")

-- folke/which-key.nvim
map("n", "<leader>?", function()
	require("which-key").show({ global = false })
end)
