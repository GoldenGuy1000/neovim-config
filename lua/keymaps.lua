vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>w", ":w<CR>", { desc = "save file" })

keymap.set("v", ">", ">gv")
keymap.set("v", "<", "<gv")
keymap.set("n", ">", "><space>")
keymap.set("n", "<", "<<space>")

-- copy-paste
keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "System clipboard paste" })
keymap.set({ "n", "v" }, "<leader>P", '"+P', { desc = "System clipboard paste before" })
keymap.set({ "v" }, "<leader>y", '"+y', { desc = "System clipboard copy" })
keymap.set({ "v" }, "<C-C>", '"+y', { desc = "System clipboard copy" })

-- split management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })

keymap.set("n", "<leader>tv", "<C-w>v<cmd>term<CR>i")
keymap.set("n", "<leader>th", "<C-w>s<cmd>term<CR>i")

keymap.set("n", "<C-,>", "<C-w>3<", { desc = "Shrink window horizontally" })
keymap.set("n", "<C-.>", "<C-w>3>", { desc = "Grow window horizontally" })

keymap.set("n", "<leader>d", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>q", "<cmd>write<CR><cmd>close<CR>", { desc = "Write-close current split" })

-- tab management -- commented because I don't find myself using tabs
-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- terminal
keymap.set("t", "<leader><Esc>", "<C-\\><C-n>", { desc = "Esc to normal mode in terminal" })
