return {
  "ellisonleao/glow.nvim",
  cmd = "Glow",
  config = function()
    local glow = require("glow")
    glow.setup({
      border = "single", -- floating window border config
      style = "dark", -- filled automatically with your current editor background, you can override using glow json style
      pager = false,
      width = 100,
      width_ratio = 0.5, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
      height_ratio = 0.8,
    })
  end,
}
