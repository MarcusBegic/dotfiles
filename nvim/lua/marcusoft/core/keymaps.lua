vim.g.mapleader = " "

local keymap = vim.keymap -- haz las cosas facil..

-- :nmap - Display normal mode maps
-- :imap - Display insert mode maps
-- :vmap - Display visual and select mode maps
-- :smap - Display select mode maps
-- :xmap - Display visual mode maps
-- :cmap - Display command-line mode maps
-- :omap - Display operator pending mode maps

-- Many binds
-- https://vim.rtorr.com/

-- General Keymaps
-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>h", "<C-w>h") -- move cursor 
keymap.set("n", "<leader>l", "<C-w>l") -- move cursor 
keymap.set("n", "<leader>j", "<C-w>j") -- move cursor 
keymap.set("n", "<leader>k", "<C-w>k") -- move cursor 

-- tabs --
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab

keymap.set("n", "L", ":tabn<CR>") --  go to next tab
keymap.set("n", "H", ":tabp<CR>") --  go to previous tab

-- alias --
keymap.set("c", "W", "w") --  write alias

-- nvim-tree
keymap.set("n", "<leader>a", ":NvimTreeToggle<CR>") -- toggle file explorer

