return {
	{
		"nvzone/floaterm",
		dependencies = "nvzone/volt",
		opts = {
			shell = "wsl.exe",
			-- shell = "powershell.exe",
		},
		cmd = "FloatermToggle",
		keys = {
			{ "<leader>Tt", "<cmd>FloatermToggle<cr>", desc = "Toggle floating terminal" },
		},
	},
}
