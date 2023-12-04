-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local autopairs = require 'custom.plugins.autopairs'
local theme = require 'custom.plugins.theme'
local tmux_nvim = require 'custom.plugins.tmux'
local telescope = require 'custom.plugins.telescope'
local remaps = require 'custom.plugins.remaps'

return {
  autopairs,
  theme,
  tmux_nvim,
  telescope,
  remaps
}
