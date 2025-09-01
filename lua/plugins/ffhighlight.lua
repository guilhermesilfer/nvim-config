-- plugins/ffhighlight.lua:
return {
  "kevinhwang91/nvim-fFHighlight",
  config = function()
    vim.cmd([[
      hi fFHintChar ctermfg=yellow cterm=bold,undercurl guifg=yellow gui=bold,undercurl
      hi fFHintWords cterm=undercurl gui=undercurl guisp=yellow
      hi fFPromptSign ctermfg=yellow cterm=bold guifg=yellow gui=bold
      ]])
    require('fFHighlight').setup({
      disable_keymap = false,
      disable_words_hl = false,
      number_hint_threshold = 2,
      prompt_sign_define = {text = '✹'}
    })
  end,
  keys = {
    { "f", mode = { "n", "x" }, desc = "fFHighlight forward" },
    { "F", mode = { "n", "x" }, desc = "fFHighlight backward" },
  },
}
