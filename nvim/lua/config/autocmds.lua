-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local Util = require("lazyvim.util")

local function hasLspErrors()
  local diagnostic_list = vim.diagnostic.get(0)

  for _, diagnostic in pairs(diagnostic_list) do
    if diagnostic.severity == vim.lsp.protocol.DiagnosticSeverity.Error then
      return true
    end
  end

  return false
end

-- Check if there are no LSP errors before running Conform
function RunConformIfNoErrors()
  if hasLspErrors() then
    Util.warn("Not formatting due to LSP errors")
    return
  end
  require("conform").format()
end

vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("format_no_errors", {}),
  callback = function(_)
    RunConformIfNoErrors()
  end,
})
