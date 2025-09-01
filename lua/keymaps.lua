-- lua/keymaps.lua:

-- vim.g.maplocalleader = "\\" -- might be useful later
vim.g.mapleader = " " -- set leader to spacebar
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- open explorer
vim.keymap.set("n", "<leader>fm", function() -- format file
  vim.cmd("normal! =ap")
end)

-- telescope.lua
vim.keymap.set("n", "<leader>fb", function() require("telescope.builtin").buffers() end, { desc = "Buffers" })
vim.keymap.set("n", "<leader>ff", function() require("telescope.builtin").find_files() end, { desc = "Find files" })
vim.keymap.set("n", "<leader>grep", function() require("telescope.builtin").live_grep() end, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fg", function() require("telescope.builtin").git_files() end, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fh", function() require("telescope.builtin").help_tags() end, { desc = "Help tags" })

-- transparent.lua
vim.keymap.set("n", "<leader>tp", ":TransparentToggle<CR>", { desc = "Toggle bg transparency" })
