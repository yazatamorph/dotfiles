return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", "stevearc/aerial.nvim" },
		config = function()
			vim.o.laststatus = vim.g.lualine_laststatus
			local lualine = require("lualine")
			lualine.setup({
				options = {
					icons_enabled = true,
					globalstatus = vim.o.laststatus == 3,
					theme = "lucy",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
				},
				sections = {
					lualine_a = {
						{
							"mode",
							fmt = function(str)
								return str:sub(1, 1)
							end,
						},
					},
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = {
						{
							"filetype",
							-- icon_only = true,
							separator = " ::",
							padding = {
								left = 1,
								right = 0,
							},
						},
						{ "filename", separator = "" },
						{
							"aerial",
							sep = " ",
							sep_icon = "",
							depth = 5,
							dense = false,
							dense_sep = ".",
							colored = true,
						},
					},
					lualine_x = {
						"encoding",
						"fileformat",
					},
					lualine_y = {
						{ "progress", separator = " ", padding = { left = 1, right = 0 } },
						{ "location", padding = { left = 0, right = 1 } },
					},
					lualine_z = {
						function()
							return "  " .. os.date("%R")
						end,
					},
				},
			})
		end,
	},
}
