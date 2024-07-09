return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("transparent").setup({
      groups = { "SignColumn" },
      extra_groups = {},
      exclude_groups = {},
    })
  end,
}
