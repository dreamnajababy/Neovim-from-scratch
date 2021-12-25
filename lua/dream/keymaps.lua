local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>bd", "<cmd>bd<cr>", opts)

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Resize with arrows
keymap("n", "<leader><Up>", ":resize +2<CR>", opts)
keymap("n", "<leader><Down>", ":resize -2<CR>", opts)
keymap("n", "<leader><Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<leader><Right>", ":vertical resize -2<CR>", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

keymap("n", "<C-p>", "<cmd>lua require'telescope.builtin'.git_files()<cr>", opts)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>ww", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>gc", "<cmd>Telescope git_branches<cr>", opts)
keymap("n", "<leader>gc", "<cmd>Telescope git_branches<cr>", opts)
keymap("n", "<leader>ht", "<cmd>Telescope help_tags<cr>", opts)

