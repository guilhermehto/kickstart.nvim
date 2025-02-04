local nmap = require('custom.utils').nmap
local imap = require('custom.utils').imap

-- [[ remaps ]]

nmap('<leader>fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', '[F]ile [B]rowser')
-- nmap('<leader>fo', require('telescope.builtin').oldfiles, '[F]iles [O]ld Find recently opened files')
-- nmap('<leader><space>', require('telescope.builtin').buffers, '[ ] Find existing buffers')
-- nmap('<leader>fig', require('telescope.builtin').git_files, '[F]iles [I]n [G]it')
-- nmap('<leader>fg', require('telescope').extensions.live_grep_args.live_grep_args, '[F]iles [G]rep')
-- nmap('<leader>fh', require('telescope.builtin').help_tags, '[F]ind [H]elp')
-- nmap('<leader>fw', require('telescope.builtin').grep_string, '[F]ind [W]ord')
-- nmap('<leader>fr', require('telescope.builtin').resume, '[F]ind [R]esume')
-- nmap('<leader>cD', require('telescope.builtin').diagnostics, '[C]ode [D]iagnostics')
nmap('<leader>fq', require('telescope.builtin').quickfix, '[F]ind [Q]uickfixlist')
-- imap('<C-Down>', require('telescope.actions').cycle_history_next)
-- imap('<C-Up>', require('telescope.actions').cycle_history_prev)

-- nmap('<C-p>', ':Telescope find_files find_command=rg,--ignore,--hidden,--files,-u<CR>')

-- nmap('<leader>ff', function()
--   require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--     winblend = 10,
--     previewer = false,
--   })
-- end, '[F]uzzily [F]ind in current buffer')

return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
}
