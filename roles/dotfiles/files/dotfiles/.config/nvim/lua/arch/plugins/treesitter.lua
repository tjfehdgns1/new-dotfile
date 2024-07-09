return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
  config = function () 
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python" },
      auto_install = true,
      sync_install = true,
      highlight = { enable = true },
      indent = { enable = true },  
    })
    -- TODO: treesitter textobject
  end
}
