vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
-- keymap.set("n", "<leader>s", ":w<CR>", { desc = "save file" })

keymap.set("v", ">", ">gv")
keymap.set("v", "<", "<gv")
keymap.set("n", ">", "><space>")
keymap.set("n", "<", "<<space>")

-- copy-paste
keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "System clipboard paste" })
keymap.set({ "n", "v" }, "<leader>P", '"+P', { desc = "System clipboard paste before" })
keymap.set({ "v" }, "<leader>y", '"+y', { desc = "System clipboard copy" })
keymap.set({ "v" }, "<C-C>", '"+y', { desc = "System clipboard copy" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- terminal
keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Esc to normal mode in terminal" })
