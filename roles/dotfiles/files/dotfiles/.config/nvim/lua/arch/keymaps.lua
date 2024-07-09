local set = vim.keymap.set

set("i", "jk", "<Esc>")

-- Navigation
set("n", "<C-u>", "<C-u>zz", {desc = "Move half page up"})
set("n", "<C-d>", "<C-d>zz", {desc = "Move half page down"})

set("n", "<C-h>", "<C-w><C-h>", {desc = "Jump to split left"})
set("n", "<C-j>", "<C-w><C-j>", {desc = "Jump to split down"})
set("n", "<C-k>", "<C-w><C-k>", {desc = "Jump to split up"})
set("n", "<C-l>", "<C-w><C-l>", {desc = "Jump to split right"})

-- Clipboard
set("n", "c", '"_c')

-- Inc/Dec
set("n", "+", "<C-a>", { desc = "Increment" })
set("n", "-", "<C-x>", { desc = "Decrement" })

-- Redo
set("n", "U", "<C-r>", { desc = "Redo" })

-- Goto
set("n", "ge", "<cmd>Explore<Cr>", {desc = "Go to explore"})
set("n", "gg", "gg", {desc = "Go to start of file"})
set("n", "G", "Gzz", {desc = "Go to end of file"})
set("n", "gh", "0", {desc = "Go to line start"})
set("n", "gs", "^", {desc = "Go to first non-blank in line"})
set("n", "gl", "$", {desc = "Go to line end"})
set("n", "gn", "<cmd>bnext<Cr>", {desc = "Go to next buffer"})
set("n", "gp", "<cmd>bprev<Cr>", {desc = "Go to prev buffer"})

-- Windows
set("n", "<leader>ws", "<cmd>split<Cr>", {desc = "Window split bottom"})
set("n", "<leader>wv", "<cmd>vsplit<Cr>", {desc = "Window split right"})
set("n", "<leader>wq", "<cmd>bdelete<Cr>", {desc = "Window close"})
set("n", "<leader>wo", "<cmd>only<Cr>", {desc = "Window close except current"})
set("n", "<leader>wH", "<C-w>H", {desc = "Window swap left"})
set("n", "<leader>wJ", "<C-w>J", {desc = "Window swap down"})
set("n", "<leader>wK", "<C-w>K", {desc = "Window swap up"})
set("n", "<leader>wL", "<C-w>L", {desc = "Window swap right"})
set("n", "<leader>wn", "<cmd>enew<Cr>", {desc = "New window"})

-- Next/Prev
set("n", "]d", vim.diagnostic.goto_next, { desc = "Next problem" })
set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev problem" })
set("n", "]c", ":cnext<CR>", { desc = "Next quickfix list" })
set("n", "[c", ":cprev<CR>", { desc = "Prev quickfix list" })
