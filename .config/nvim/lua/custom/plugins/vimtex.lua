-- lua/plugins/vimtex.lua
return {
	"lervag/vimtex",
	lazy = false, -- MUST be false for proper functionality
	init = function()
		-- Global VimTeX configuration
		vim.g.vimtex_view_method = "sioyek" -- or "zathura", "skim", etc.
		vim.g.vimtex_quickfix_mode = 0 -- Disable automatic quickfix opening

		-- Example: Ignore annoying warnings
		vim.g.vimtex_quickfix_ignore_filters = {
			"Underfull \\hbox",
			"Overfull \\hbox",
		}
		-- Set LuaLaTeX as the compiler engine
		vim.g.vimtex_compiler_latexmk = {
			build_dir = "",
			callback = 1,
			continuous = 1,
			executable = "latexmk",
			hooks = {},
			options = {
				"-verbose",
				"-file-line-error",
				"-synctex=1",
				"-interaction=nonstopmode",
				"-lualatex", -- This tells latexmk to use lualatex
			},
		}
	end,
}
