require "nvchad.mappings"

-- add yours here

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)
map('v', '<', '<gv', opt)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
