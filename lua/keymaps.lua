vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set({"n", "v"}, "<leader>p", "\"+p", { desc = "System clipboard paste" })
keymap.set({"n", "v"}, "<leader>P", "\"+P", { desc = "System clipboard paste before" })
keymap.set({"n", "v"}, "<leader>y", "\"+y", { desc = "System clipboard copy" })


-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- terminal
keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Esc to normal mode in terminal" })
