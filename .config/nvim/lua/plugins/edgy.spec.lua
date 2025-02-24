return {
	{
		"folke/edgy.nvim",
		event = "VeryLazy",
		init = function()
			vim.opt.laststatus = 3
			vim.opt.splitkeep = "screen"
		end,
		opts = {
			bottom = {
				{
					title = "terminal",
					ft = "toggleterm",
					size = { height = 0.3 },
					filter = function(_, win)
						return vim.api.nvim_win_get_config(win).relative == ""
					end,
				},
				"Trouble",
				{
					ft = "help",
					size = { height = 20 },
					filter = function(buf)
						return vim.bo[buf].buftype == "help"
					end,
				},
			},
			left = {
				{
					title = "neotree",
					ft = "neo-tree",
					filter = function(buf)
						return vim.b[buf].neo_tree_source == "filesystem"
					end,
					size = { height = 0.5 },
				},
				"neo-tree",
			},
			right = {
				{
					title = "Aerial",
					ft = "aerial",
					pinned = true,
					open = "AerialOpen",
				},
			},
		},
	},
}
