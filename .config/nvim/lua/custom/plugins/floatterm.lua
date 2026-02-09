return {
	{
		"nvzone/floaterm",
		dependencies = "nvzone/volt",
		opts = {
			shell = "powershell.exe",
		},
		cmd = "FloatermToggle",
		keys = {
			{ "<leader>tt", "<cmd>FloatermToggle<cr>", desc = "Toggle floating terminal" },
		},
	},
}
