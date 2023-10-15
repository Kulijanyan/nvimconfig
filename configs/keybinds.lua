-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- set <space> as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Telescope
local telescope = require('telescope.builtin')

keymap('n', '<leader>ff', telescope.find_files, {})
keymap('n', '<leader>fg', telescope.live_grep, {})
keymap('n', '<leader>fb', telescope.buffers, {})

-- NvimTree
keymap('n', '<leader>e', ":NvimTreeToggle<CR>", opts)

-- BufferLine
keymap('n', '<A-,>', "<Cmd>BufferMovePrevious<CR>", opts)
keymap('n', '<A-.>', "<Cmd>BufferMoveNext<CR>", opts)
keymap('n', '<C-q>', "<Cmd>BufferClose<CR>", opts)

-- Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Save
keymap("n", "<C-s>", ":w<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Search with <F4>
keymap("n", "<F4>", "*", opts)

-- Reindent
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- Move lines
keymap("n", "<A-j>", ":m .+1<CR>==")
keymap("n", "<A-k>", ":m .-2<CR>==")
keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv")
