return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-neotest/neotest-python",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {},
		config = function(_, opts)
			require("neotest").setup({
				adapters = {
					require("neotest-python")({
						dap = { justMyCode = false },
						runner = "pytest",
						args = { "-s", "--log-level", "DEBUG" },
						pytest_discover_instances = true,
						python = ".venv/Scripts/python.exe",
					}),
				},
			})
		end,
	},
}
