-- options.lua:

-- IDENTATION
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.o.expandtab = true -- converts tabs to spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- BEHAVIOUR AND UI
vim.wo.wrap = false -- no wrap
vim.o.clipboard = "unnamedplus" -- copy to clipboard
vim.opt.relativenumber = true -- relative line numbers
vim.opt.number = true -- line numbers
vim.opt.undofile = true -- enable persistent undo
vim.o.scrolloff = 5 -- keep 5 lines above and below the cursor
vim.o.sidescrolloff = 8 -- always keep 8 columns to the left and right from cursor

vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo" -- set the directory where undo history will be saved

vim.api.nvim_create_autocmd("TextYankPost", { -- highlight on yank
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- colorscheme
--vim.cmd.colorscheme("dracula")

-- test true color with 'bash .24-bit-color.sh'
-- (needs to be inside ~/.config/nvim)
vim.o.termguicolors = true
