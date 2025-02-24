local map = vim.api.nvim_set_keymap

return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		init = function()
			vim.g.barbar_auto_setup = false

			map(
				"n",
				"<leader><Left>",
				"<Cmd>BufferPrevious<CR>",
				{ noremap = true, silent = true, desc = "Previous Tab" }
			)
			map("n", "<leader><Right>", "<Cmd>BufferNext<CR>", { noremap = true, silent = true, desc = "Next Tab" })
			map("n", "<leader><Down>", "<Cmd>BufferClose<CR>", { noremap = true, silent = true, desc = "Close Tab" })
		end,
		opts = {
			animation = true,
			auto_hide = 0,
			tabpages = true,
			clickable = true,
			sidebar_filetypes = {
				["neo-tree"] = { event = "BufWipeout" },
				Outline = { event = "BufWinLeave", text = "symbols-outline", align = "right" },
			},
		},
	},
}
