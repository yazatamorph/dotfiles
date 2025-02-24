return {
	{ -- color scheme
		-- dir = "~/Documents/code_mines/lucy.nvim", -- used for development
		"yazatamorph/lucy.nvim",
		priority = 1000,
		init = function()
			vim.cmd.colorscheme("lucy")
		end,
	},
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = function()
			vim.api.nvim_set_keymap("n", "<leader>st", "<Cmd>TodoTelescope<CR>", { desc = "[S]earch [T]odos" })
			return { signs = true }
		end,
	},
}
-- Example todo highlights
-- TODO:
-- FIX: FIXME FIXIT BUG ISSUE
-- WARN: WARNING XXX
-- HACK:
-- PERF: OPTIM PERFORMANCE OPTIMIZE
-- TEST: TESTING PASSED FAILED
-- NOTE: INFO
