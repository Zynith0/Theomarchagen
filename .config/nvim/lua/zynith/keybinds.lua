local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-l>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-m>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-e>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-i>", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<leader>k", "<cmd>Explore<CR>")
vim.keymap.set("n", "<leader>e", "ddkP")
vim.keymap.set("n", "<leader>n", "ddp")

vim.keymap.set("n", "<leader>u", "<cmd>noh<CR>")

vim.keymap.set("n", "m", "<left>")
vim.keymap.set("n", "n", "<down>")
vim.keymap.set("n", "e", "<up>")
vim.keymap.set("n", "i", "<right>")

vim.keymap.set("v", "m", "<left>")
vim.keymap.set("v", "n", "<down>")
vim.keymap.set("v", "e", "<up>")
vim.keymap.set("v", "i", "<right>")

vim.keymap.set("n", ",", "i")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

Snacks.toggle.animate():map("<leader>ua")

vim.keymap.set("n", "rt", "dd")

vim.keymap.set("v", "N", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "E", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>")
