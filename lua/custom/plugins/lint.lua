return {
  'mfussenegger/nvim-lint',
  config = function(_, __)
    local lint = require 'lint'
    lint.linters_by_ft = {
      typescript = { 'eslint_d' },
      typescriptreact = { 'eslint_d' },
      javascript = { 'eslint_d' },
      javascriptreact = { 'eslint_d' },
    }

    local eslint = lint.linters.eslint_d

    eslint.args = {
      '--no-warn-ignored',
      '--format',
      'json',
      '--stdin',
      '--stdin-filename',
      function()
        return vim.api.nvim_buf_get_name(0)
      end,
    }

    vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
      callback = function()
        require('lint').try_lint()
      end,
    })
  end,
}
