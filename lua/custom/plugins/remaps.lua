local nmap = require('custom.utils').nmap

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function()
    nmap('<leader>cR', vim.lsp.buf.rename, '[C]ode [R]ename')
    nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

    nmap('<leader>cfd', require('telescope.builtin').lsp_definitions, '[C]ode [F]ind [D]efinitions')
    nmap('<leader>cr', require('telescope.builtin').lsp_references, '[C]ode [R]eferences')
    nmap('<leader>cI', require('telescope.builtin').lsp_implementations, '[C]ode [I]mplementation')
    nmap('<leader>ct', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
    nmap('<leader>ch', vim.lsp.buf.signature_help, '[C]ode signature [H]elp')
    nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')

    nmap('<leader>cF', require('conform').format, '[C]ode [F]ormat')

    nmap('<leader>n', '<cmd>:cnext<cr>', '[N]ext quickfix')
    nmap('<leader>p', '<cmd>:cprev<cr>', '[P]revious quickfix')

    nmap('<leader>gb', '<cmd>:Gitsigns blame_line<cr>', '[G]it [B]lame line')
  end,
})
return {}
