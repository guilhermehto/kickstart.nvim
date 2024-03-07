return {
  'nvim-neotest/neotest',
  event = 'BufEnter',
  opts = {},
  keys = {
    {
      '<leader>tr',
      function()
        require('neotest').run.run()
      end,
      desc = '[T]est [R]un',
    },
    {
      '<leader>tf',
      function()
        require('neotest').run.run(vim.fn.expand '%')
      end,
      desc = '[T]est [F]ile',
    },
    {
      '<leader>ts',
      function()
        require('neotest').run.stop()
      end,
      desc = '[T]est [S]top',
    },
    {
      '<leader>too',
      function()
        require('neotest').output.open { enter = true, auto_close = true }
      end,
      desc = '[T]est [O]pen [O]utput',
    },
    {
      '<leader>tos',
      function()
        require('neotest').summary.open()
      end,
      desc = '[T]est [O]pen [S]ummary',
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-jest',
    'marilari88/neotest-vitest',
  },
  config = function(_, opts)
    require('neotest').setup {
      adapters = {
        require 'neotest-vitest',
        require 'neotest-jest' {
          jestCommand = 'npm test --',
          jestConfigFile = 'custom.jest.config.ts',
          env = { CI = true },
          cwd = function(path)
            return vim.fn.getcwd()
          end,
        },
      },
      summary = {
        mappings = {
          run = '<S-r>',
          jumpto = '<S-j>',
        },
      },
    }
  end,
}
