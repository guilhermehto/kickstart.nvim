local nmap = require("custom.utils").nmap

-- [[ remaps ]]

nmap('<leader>fb', ":Telescope file_browser path=%:p:h select_buffer=true<CR>", "[F]ile [B]rowser")
nmap('<leader>fo', require('telescope.builtin').oldfiles, '[F]iles [O]ld Find recently opened files')
nmap('<leader><space>', require('telescope.builtin').buffers, '[ ] Find existing buffers')
nmap('<leader>fig', require('telescope.builtin').git_files, '[F]iles [I]n [G]it')
nmap('<leader>fg', require('telescope.builtin').live_grep, '[F]iles [G]rep')
nmap('<leader>fh', require('telescope.builtin').help_tags, '[F]ind [H]elp')
nmap('<leader>fw', require('telescope.builtin').grep_string, '[F]ind [W]ord')
nmap('<leader>fr', require('telescope.builtin').resume, '[F]ind [R]esume')
nmap('<leader>cD', require('telescope.builtin').diagnostics, '[C]ode [D]iagnostics')

nmap('<C-p>', require('telescope.builtin').find_files)


nmap('<leader>ff', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, '[F]uzzily [F]ind in current buffer')

return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}
