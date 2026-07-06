vim.api.nvim_create_autocmd("ColorScheme", {
	group = vim.api.nvim_create_augroup("NoBoldItalic", { clear = true }),
	pattern = "*",
	callback = function()
		for hlgroup, _ in pairs(vim.api.nvim_get_hl(0, {})) do
			local def = vim.api.nvim_get_hl(0, { name = hlgroup, link = false })
			if def.bold or def.italic then
				def.bold = false
				def.italic = false
				vim.api.nvim_set_hl(0, hlgroup, def)
			end
		end
	end,
})
