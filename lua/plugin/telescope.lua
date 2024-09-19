local builtin = require("telescope.builtin")

-- FIXME
-- this one doesn't seem to be working
-- (conflicting with "<leader>p"?)
-- (maybe not sourcing correctly?)
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})

-- this one seems to work tho...
vim.keymap.set("n", "<C-p>", builtin.git_files, {})

vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
