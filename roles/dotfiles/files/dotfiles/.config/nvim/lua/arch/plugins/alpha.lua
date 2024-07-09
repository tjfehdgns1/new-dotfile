return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    local header = {
      [[┌──────────────────────────────────────────────────────┐]],
      [[│                                                      │]],
      [[│  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗  │]],
      [[│  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║  │]],
      [[│  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║  │]],
      [[│  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║  │]],
      [[│  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║  │]],
      [[│  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝  │]],
      [[│                                                      │]],
      [[└──────────────────────────────────────────────────────┘]],
    }
    local height = vim.api.nvim_win_get_height(0)
    local header_height = #header
    local padding = math.max(0, math.floor((height - header_height) / 3))
    for _ = 1, padding do
      table.insert(header, 1, "")
    end


    dashboard.section.header.val = header
    dashboard.section.buttons.val = {
      dashboard.button("n", "Start", ":enew<CR>"),
      dashboard.button("q", "Quit", ":q<CR>")
    }
    dashboard.section.footer.val = "0.10.1"

    dashboard.config.layout = {
      dashboard.section.header,
      dashboard.section.footer,
      { type = "padding", val = 4 },
      dashboard.section.buttons,
    }

    alpha.setup(dashboard.config)
  end,
}
