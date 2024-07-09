return {
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
		  local oil = require("oil")
			oil.setup({
				default_file_explorer = true,
				columns = {
					"icon",
					-- "permissions",
					-- "size",
					-- "mtime",
				},
				keymaps = {
					["g?"] = "actions.show_help",
					["<CR>"] = "actions.select",
					["<C-s>"] = "actions.select_vsplit",
					["<C-h>"] = "actions.select_split",
					["<C-t>"] = "actions.select_tab",
					["<C-p>"] = "actions.preview",
					["<C-c>"] = "actions.close",
					["<C-l>"] = "actions.refresh",
					["-"] = "actions.parent",
					["_"] = "actions.open_cwd",
					["`"] = "actions.cd",
					["~"] = "actions.tcd",
					["gs"] = "actions.change_sort",
					["gx"] = "actions.open_external",
					["g."] = "actions.toggle_hidden",
					["g\\"] = "actions.toggle_trash",
				},
				keymap_help = {
					border = "none",
				},
				view_options = {
					show_hidden = true,
					is_hidden_file = function(name, bufnr)
						return vim.startswith(name, ".")
					end,
					is_always_hidden = function(name, bufnr)
						return false
					end,
					natural_order = true,
					sort = {
						{ "type", "asc" },
						{ "name", "asc" },
					},
				},
				float = {
					padding = 4,
					max_width = 0,
					max_height = 0,
					border = "none",
					win_options = {
						winblend = 0,
					},
					override = function(conf)
						return conf
					end,
				},
			})

      local set = vim.keymap.set
      set("n", "ge", oil.open, { desc = "Go to oil" })

		end,
	},
}
