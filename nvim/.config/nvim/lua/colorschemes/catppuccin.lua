local catppuccin = {}

function catppuccin.color(flavor)
	return {
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
			})
			local colorscheme = string.format("catppuccin-%s", flavor)
			vim.cmd.colorscheme(colorscheme)
		end
	}
end

return catppuccin

