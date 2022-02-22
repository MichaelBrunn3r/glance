local DEFAULT_COLORS = {
	bg = "#1e1e1e",
	fg = "#d4d4d4",
	fg_dark = "#5a5a5a",
	orange = '#CE9178',
	light_blue = '#4e94ce'
}

-- Overwrite default colors with custom user defined colors
local colors = vim.tbl_deep_extend('force', DEFAULT_COLORS, vim.g.glance_colors or {})

return colors