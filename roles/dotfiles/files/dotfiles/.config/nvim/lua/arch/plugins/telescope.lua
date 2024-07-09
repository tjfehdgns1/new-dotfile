return {
  "nvim-telescope/telescope-fzf-native.nvim",
  -- "nvim-telescope/telescope.nvim",
  -- tag = "0.1.8",
  dependencies = { 
    -- "nvim-telescope/telescope-fzy-native.nvim",
    "nvim-lua/plenary.nvim",
  },
  build = "make",
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        sorting_strategy = "ascending",
        -- selecting_strategy = "closest",
        -- scroll_strategy = "cycle",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            width = 0.8,
            height = 0.8,
            preview_width = 0.5,
            prompt_position = "top",
            preview_cutoff = 120,
          },
          -- vertical = {
          --   width = 0.8,
          --   height = 0.9,
          --   prompt_position = "bottom",
          --   preview_cutoff = 40,
          -- },
          -- center = {
          --   width = 0.5,
          --   height = 0.4,
          --   preview_cutoff = 40,
          --   prompt_position = "top",
          -- },
          -- cursor = {
          --   width = 0.8,
          --   height = 0.9,
          --   preview_cutoff = 40,
          -- },
          -- bottom_pane = {
          --   height = 25,
          --   prompt_position = "top",
          --   preview_cutoff = 120,
          -- },
        },
        -- create_layout = nil,
        -- cycle_layout_list = { "horizontal", "vertical" },
        -- windblend = 0,
        -- wrap_results = false,
        prompt_prefix = "-> ",
        selection_caret = "-> ",
        -- entry_prefix = " ",
        -- multi_icon = "+",
        -- initial_mode = "insert",
        border = true,
        -- path_display = "tail",
        -- borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        -- hl_result_eol = true,
        dynamic_preview_title = true,
        -- results_title = "Results",
        -- prompt_title = "Prompt",
        -- deault_mappings = nil,
        -- color_devicons = true,
      },
      mappings = {
        i = {
          ["<esc>"] = require("telescope.actions").close,
          -- ["<C-t>"] = require("telescope.actions.layout").toggle_preview,
        },
      },
      pickers = {
        -- find_files = {},
      },
      extensions = {
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        },
        -- fzy_native = {
        --   override_generic_sorter = true,
        --   override_file_sorter = true,
        -- }
      },
    })
    local builtin = require("telescope.builtin")
    local set = vim.keymap.set

    set("n", "<leader>f", builtin.find_files, { desc = "Open file picker" })
    set("n", "<leader>/", builtin.current_buffer_fuzzy_find, { desc = "Open current buffer fzf" })
    set("n", "<leader>b", builtin.buffers, { desc = "Open buffer picker" })
    set("n", "<leader>j", builtin.jumplist, { desc = "Open jumplist picker" })
    set("n", "<leader>s", builtin.lsp_document_symbols, { desc = "Open symbol picker" })
    set("n", "<leader>S", builtin.lsp_workspace_symbols, { desc = "Open workspace symbol picker" })
    set("n", "<leader>d", builtin.diagnostics, { desc = "Open diagnostic picker" })
    -- set("n", "<leader>A", builtin.quickfix, { desc = "Open quickfix" })
    set("n", "<leader>m", builtin.marks, { desc = "Open marks picker" })
    set("n", "<leader>c", builtin.colorscheme, { desc = "Open colorscheme picker" })
    set("n", "<leader>t", "<cmd>TodoTelescope<Cr>", { desc = "Open todo picker" })
    set("n", "<leader>l", builtin.live_grep, { desc = "Open live grep picker" })
    set("n", "<leader>'", builtin.pickers, { desc = "Open recent picker" })
    set("n", "<leader>?h", builtin.help_tags, { desc = "Open help tags" })
    set("n", "<leader>?c", builtin.commands, { desc = "Open command palette picker" })
    set("n", "<leader>?o", builtin.vim_options, { desc = "Open vim options picker" })
    set("n", "<leader>?k", builtin.keymaps, { desc = "Open keymaps picker" })

    set("n", "gr", builtin.lsp_references, { desc = "Go to references" })
    set("n", "gi", builtin.lsp_implementations, { desc = "Go to implementations" })
    set("n", "gd", builtin.lsp_definitions, { desc = "Go to definitions" })
    set("n", "gy", builtin.lsp_type_definitions, { desc = "Go to type definitions" })

    telescope.load_extension('fzf')
    -- telescope.load_extension('fzy_native')
  end,
}
