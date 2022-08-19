-- basic
vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
map('i', 'fd', '<ESC>', { noremap = true, silent = true})
map('n', '<leader><leader>', ':', { noremap = true, silent  = false})
-- which key
-- local wk = require("which-key")
-- local mappings = { 
-- 	q = {":q<cr>", "test"}
-- 	-- f = { "<cmd>Telescope find_files<cr>", "Find files" }
-- }
-- local opts = {prefix: "leader"}
-- wk.register(mappings, opts)

local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
	s = {"<cmd>:w<cr>", "save"},
	e = {
		i = {"<cmd>e ~/.config/nvim/init.lua<cr>", "edit init file"},
		r = {"<cmd>so%<cr>", "edit init file"},
	},
	b = {
		p = {"<cmd>bp<cr>", "go to previous buffer"},
		n = {"<cmd>bn<cr>", "go to next buffer"},
	},
	f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
}, { prefix = "<leader>" })
