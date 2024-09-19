vim.g.mapleader = " "

-- open netrw directory explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move chunks of code up or down, and auto indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- fix cursor on line-below appending
vim.keymap.set("n", "J", "mzJ`z")

-- center cursor on page up or down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- center cursor on page search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste over another word without losing yank buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- delete a word without losing yank buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>x", "\"_x")
vim.keymap.set("v", "<leader>x", "\"_x")

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- thanks primeagen
vim.keymap.set("i", "<C-c>", "<Esc>")

-- disable Q
vim.keymap.set("n", "Q", "<nop>")

-- auto close scope brackets
vim.keymap.set("i", "{<Return>", "{<Return>}<Esc>O")

-- auto close html element
vim.keymap.set("i", "><Return>", "><Esc>yi<A</><Esc>hpF>a<Return><Esc>O<Tab>")
