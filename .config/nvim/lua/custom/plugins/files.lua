return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SelectOpts
		opts = {},
		keys = { { "<leader>-", "<cmd>Oil<cr>", desc = "Open Parent Dir" } },
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		lazy = false,
	},
}
