local theme = require("glance")

-- Reset existing highlights
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "glance" -- name of colorscheme
vim.o.background = "dark"
vim.o.termguicolors = true

theme.apply()