local env_file = vim.fn.expand("~/.config/nvim/.env")
if vim.fn.filereadable(env_file) == 1 then
  for line in io.lines(env_file) do
    local key, value = line:match("^([%w_]+)=([^\n]+)$")
    if key and value then
      vim.env[key] = value
    end
  end
end
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
