local map = vim.keymap.set

-- miscellaneous
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

map("n", "<C-s>", "<cmd>w<cr>", { desc = "general save file" })

map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

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

-- nvim-tree/nvim-tree.lua
map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")
map("n", "<leader>e", "<cmd>NvimTreeFocus<cr>")

-- kdheepak/lazygit.nvim
map("n", "<leader>lg", "<cmd>LazyGit<cr>")

-- nvzone/floaterm
map({ "n", "t" }, "<C-;>", "<cmd>FloatermToggle<cr>")

-- stevearc/conform.nvim
vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end)

-- cjodo/convert.nvim
map("n", "<leader>cn", "<cmd>ConvertFindNext<cr>")
map("n", "<leader>cc", "<cmd>ConvertFindCurrent<cr>")
map({ "n", "v" }, "<leader>ca", "<cmd>ConvertAll<cr>")

-- romgrk/barbar.nvim

-- romgrk/barbar.nvim | Move to previous/next
map("n", "<A-,>", "<cmd>BufferPrevious<cr>", { noremap = true, silent = true })
map("n", "<A-.>", "<cmd>BufferNext<cr>", { noremap = true, silent = true })

-- romgrk/barbar.nvim | Re-order to previous/next
map("n", "<A-<>", "<cmd>BufferMovePrevious<cr>", { noremap = true, silent = true })
map("n", "<A->>", "<cmd>BufferMoveNext<cr>", { noremap = true, silent = true })

-- romgrk/barbar.nvim | Goto buffer in position...
map("n", "<A-1>", "<cmd>BufferGoto 1<cr>", { noremap = true, silent = true })
map("n", "<A-2>", "<cmd>BufferGoto 2<cr>", { noremap = true, silent = true })
map("n", "<A-3>", "<cmd>BufferGoto 3<cr>", { noremap = true, silent = true })
map("n", "<A-4>", "<cmd>BufferGoto 4<cr>", { noremap = true, silent = true })
map("n", "<A-5>", "<cmd>BufferGoto 5<cr>", { noremap = true, silent = true })
map("n", "<A-6>", "<cmd>BufferGoto 6<cr>", { noremap = true, silent = true })
map("n", "<A-7>", "<cmd>BufferGoto 7<cr>", { noremap = true, silent = true })
map("n", "<A-8>", "<cmd>BufferGoto 8<cr>", { noremap = true, silent = true })
map("n", "<A-9>", "<cmd>BufferGoto 9<cr>", { noremap = true, silent = true })
map("n", "<A-0>", "<cmd>BufferLast<cr>", { noremap = true, silent = true })

-- romgrk/barbar.nvim | Pin/unpin buffer
map("n", "<A-p>", "<cmd>BufferPin<cr>", { noremap = true, silent = true })

-- romgrk/barbar.nvim | Close buffer
map("n", "<A-c>", "<cmd>BufferClose<cr>", { noremap = true, silent = true })

-- romgrk/barbar.nvim | Magic buffer-picking mode
map("n", "<C-p>", "<cmd>BufferPick<cr>", { noremap = true, silent = true })
map("n", "<C-s-p>", "<cmd>BufferPickDelete<cr>", { noremap = true, silent = true })

-- romgrk/barbar.nvim | Sort automatically by...
map("n", "<Space>bb", "<cmd>BufferOrderByBufferNumber<cr>", { noremap = true, silent = true })
map("n", "<Space>bn", "<cmd>BufferOrderByName<cr>", { noremap = true, silent = true })
map("n", "<Space>bd", "<cmd>BufferOrderByDirectory<cr>", { noremap = true, silent = true })
map("n", "<Space>bl", "<cmd>BufferOrderByLanguage<cr>", { noremap = true, silent = true })
map("n", "<Space>bw", "<cmd>BufferOrderByWindowNumber<cr>", { noremap = true, silent = true })
