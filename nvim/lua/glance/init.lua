-- Helpful commands:
-- 	:h highlight groups 	-> highlight docs
-- 	:syntax 				-> show syntax groups in buffer

local colors = require('glance.colors')

local highlight = function(groups)
	for group, args in pairs(groups) do
		-- Group = fg, bg, attr, sp
		local fg = args[1]
		local bg = args[2]
		local attr = args[3]
		local sp = args[4]

		fg = fg and "guifg=" .. fg or "guifg=NONE"
		bg = bg and "guibg=" .. bg or "guibg=NONE"
		attr = attr and "gui=" .. attr or "gui=NONE"
		sp = sp and "guisp=" .. sp or ""

		vim.api.nvim_command("hi! " .. group .. " ".. fg .. " " .. bg .. " ".. attr .. " " .. sp)
	end
end

local theme = {}

theme.apply = function ()
	highlight({
		-- UI
		Normal = {colors.fg, colors.bg},
		LineNr = {colors.fg_dark},
		EndOfBuffer = {colors.bg},

		-----------------------------
		-- Preferred syntax groups --
		-----------------------------

		-- Comment
		Comment = {colors.fg_dark},

		-- Constant
		Constant = {colors.orange},
		Boolean = {colors.light_blue},

		-- Identifier
		Identifier = {colors.light_blue},

		-- Statemnt
		Statement = {colors.light_blue},
		Operator = {colors.fg},

		-- PreProc
		PreProc = {colors.light_blue},

		-- Type
		Type = {colors.type},

		-- Special
		Special = {colors.fg},
		SpecialChar = {colors.orange},
		SpecialComment = {colors.fg_dark},

		---------------
		-- Languages --
		---------------

		-- Python
		pythonEscape = {colors.orange},
		pythonBuiltin = {colors.light_blue},
	})
end

return theme;
