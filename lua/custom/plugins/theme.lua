return {
  "catppuccin/nvim",
  name = "catpuccin",
  priority = 2000,
  config = function()
    vim.cmd.colorscheme 'catppuccin-macchiato'
  end,
}
