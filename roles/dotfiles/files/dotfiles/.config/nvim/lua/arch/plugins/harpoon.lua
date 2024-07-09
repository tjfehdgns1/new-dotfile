return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()
    local set = vim.keymap.set
    set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon add" })
    set("n", "<leader><Tab>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon menu" })

    set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon 1" })
    set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon 2" })
    set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon 3" })
    set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon 4" })

    -- Toggle previous & next buffers stored within Harpoon list
    -- set("n", "<leader>gP", function() harpoon:list():prev() end)
    -- set("n", "<leader>gN", function() harpoon:list():next() end)

  end,
}
