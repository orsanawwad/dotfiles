vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Use J and K to move a block of code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J used to take the line below cursor and append it, this keeps the cursor
-- in place
vim.keymap.set("n", "J", "mzJ`z")
-- Half page jumping but keep cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Find next search but keep cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- "greatest remap ever" ThePrimeagen
-- Paste over highlighted word but don't lose paste buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- "next greatest remap ever" ThePrimeagen, by asbjornHaland
-- The + (plus) register is the system clipboard
-- This is used to yank (copy) to the system clipboard in addition to vim
-- buffer, where you can use <C-V> to paste as usual
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- Same as Y (yank entire line) with addition of clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete to void register (unlike cut <C-x> behaviour on gui editors)
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Remap <C-c> to <Esc>, not sure if this is needed, might try to get used to
-- it
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
-- Open tmux session on a folder, might start using it later
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Run format function
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Vim quickfix related feature, need to learn more about it
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Realtime find and replace for current buffer/file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Probably the most use command, change current file to executable
-- no more chmod +x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Not sure what's this for yet
-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");

-- Fun command, make the entire screen melt
-- add https://github.com/Eandrju/cellular-automaton.nvim to make it work
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
