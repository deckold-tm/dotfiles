return {
	{
		"hedyhli/outline.nvim",
		config = function()
			-- Example mapping to toggle outline
			vim.keymap.set("n", "gro", "<cmd>Outline<CR>", { desc = "LSP: Toggle Outline" })

			require("outline").setup({
				-- Your setup opts here (leave empty to use defaults)
			})
		end,
	},
}
