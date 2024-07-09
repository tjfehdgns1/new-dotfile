local fn = vim.fn
local api = vim.api

api.nvim_create_autocmd("TextYankPost", {
  group = api.nvim_create_augroup("highlight_yank", {}),
  desc = "Highlight selection on yank",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({higroup = "IncSearch", timeout = 200})
  end,
})
