return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons', 'echasnovski/mini.icons' },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {
    winopts = {
      preview = { layout = 'vertical' },
    },
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
      '<cmd>FzfLua live_grep_glob<cr>',
      desc = 'Find grep',
    },
    {
      '<leader>ff',
      '<cmd>FzfLua blines<cr>',
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
    {
      '<leader>fo',
      '<cmd>FzfLua oldfiles<cr>',
      desc = 'Find old files',
    },
    {
      '<leader>cr',
      '<cmd>FzfLua lsp_references<cr>',
      desc = 'Find code references',
    },
    {
      '<leader>fc',
      '<cmd>FzfLua git_status<cr>',
      desc = 'Find code references',
    },
  },
}
