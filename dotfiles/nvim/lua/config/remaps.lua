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
map("n", "<A-,>", "<cmd>BufferPrevious<cr>", { desc = "Go to previous buffer", noremap = true, silent = true })
map("n", "<A-.>", "<cmd>BufferNext<cr>", { desc = "Go to next buffer", noremap = true, silent = true })
map("n", "<A-c>", "<cmd>BufferClose<cr>", { desc = "Close current buffer", noremap = true, silent = true })

-- cjodo/convert.nvim
map("n", "<leader>cn", "<cmd>ConvertFindNext<cr>", { desc = "Convert next unit" })
map("n", "<leader>cc", "<cmd>ConvertFindCurrent<cr>", { desc = "Convert unit in current line" })
map({ "n", "v" }, "<leader>ca", "<cmd>ConvertAll<cr>", { desc = "Convert all units" })

-- kdheepak/lazygit.nvim
map("n", "<leader>l", "<cmd>LazyGit<cr>", { desc = "Lazygit" })

-- jake-stewart/multicursor.nvim
map({ "n", "x" }, "<up>", function()
	require("multicursor-nvim").lineAddCursor(-1)
end, { desc = "Add cursor on current line and move up" })
map({ "n", "x" }, "<down>", function()
	require("multicursor-nvim").lineAddCursor(1)
end, { desc = "Add cursor on current line and move down" })
map({ "n", "x" }, "<c-q>", require("multicursor-nvim").toggleCursor, { desc = "Add cursor under main cursor" })

-- olrtg/nvim-emmet.lua
map({ "n", "v" }, "<leader>xe", require("nvim-emmet").wrap_with_abbreviation, { desc = "Wrap line with Emmet" })

-- nvim-tree/nvim-tree.lua
map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle tree" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<cr>", { desc = "Focus on tree" })

-- nvim-telescope/telescope.nvim
map(
	"n",
	"<leader>fa",
	"<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
	{ desc = "Find all files with Telescope" }
)
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files with Telescope" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find string with Telescope" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find help tags with Telescope" })
map(
	"n",
	"<leader>fz",
	"<cmd>Telescope current_buffer_fuzzy_find<cr>",
	{ desc = "Find string in current buffer with Telescope" }
)

-- Wansmer/treesj
map("n", "<leader>m", "<cmd>TSJToggle<cr>", { desc = "Split/join code under cursor" })

-- folke/which-key.nvim
map("n", "<leader>wK", "<cmd>WhichKey<cr>", { desc = "Show all keymaps" })
map("n", "<leader>wk", function()
	vim.cmd("WhichKey " .. vim.fn.input("WhichKey: "))
end, { desc = "Find keymaps" })
