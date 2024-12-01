local module = {}

function module.nmap(keys, func, desc)
  if desc then
    desc = 'LSP: ' .. desc
  end

  vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc, silent = true })
end

function module.imap(keys, func, desc)
  if desc then
    desc = 'LSP: ' .. desc
  end

  vim.keymap.set('i', keys, func, { buffer = bufnr, desc = desc, silent = true })
end

return module
