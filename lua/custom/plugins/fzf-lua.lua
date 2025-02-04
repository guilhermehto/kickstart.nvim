return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons', 'echasnovski/mini.icons' },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {
    files = {
      git_icons = false,
      file_icons = 'mini',
    },
  },
  keys = {
    {
      '<C-p>',
      '<cmd>FzfLua files<cr>',
      desc = 'Find files',
    },
    {
      '<leader><space>',
      '<cmd>FzfLua buffers<cr>',
      desc = 'Find files',
    },
    {
      '<leader>fg',
      '<cmd>FzfLua grep_project<cr>',
      desc = 'Find grep',
    },
    {
      '<leader>ff',
      '<cmd>FzfLua grep_visual<cr>',
      desc = 'Find visual',
    },
    {
      '<leader>fr',
      '<cmd>FzfLua resume<cr>',
      desc = 'Find resume',
    },
    {
      '<leader>fdd',
      '<cmd>FzfLua diagnostics_document<cr>',
      desc = 'Find resume',
    },
    {
      '<leader>fdw',
      '<cmd>FzfLua diagnostics_workspace<cr>',
      desc = 'Find resume',
    },
  },
}
