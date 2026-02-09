return {
	{
		"nvim-treesitter/nvim-treesitter-context",
		enable = true,
		event = "VimEnter",
		opts = { mode = "cursor", max_lines = 3 },
		-- highlight = { TreesitterContextLineNumberBottom = { gui = underline, guisp = Grey } },
		keys = {
			{
				"<leader>ut",
				function()
					local tsc = require("treesitter-context")
					tsc.toggle()
					-- if LazyVim.inject.get_upvalue(tsc.toggle, 'enabled') then
					--   LazyVim.info('Enabled Treesitter Context', { title = 'Option' })
					-- else
					--   LazyVim.warn('Disabled Treesitter Context', { title = 'Option' })
					-- end
				end,
				desc = "Toggle Treesitter Context",
			},
			{
				"[c",
				function()
					local tsc = require("treesitter-context")
					tsc.go_to_context(vim.v.count1)
				end,
				desc = "Goto Context",
			},
		},
	},
	{
		"echasnovski/mini.indentscope",
		version = false, -- wait till new 0.7.0 release to put it back on semver
		-- event = 'LazyFile',
		event = "VeryLazy",
		opts = {
			-- symbol = "▏",
			symbol = "│",
			options = { try_as_border = true },
		},
		init = function()
			vim.api.nvim_create_autocmd("FileType", {
				pattern = {
					"help",
					"alpha",
					"dashboard",
					"neo-tree",
					"Trouble",
					"trouble",
					"lazy",
					"mason",
					"notify",
					"toggleterm",
					"lazyterm",
				},
				callback = function()
					vim.b.miniindentscope_disable = true
				end,
			})
		end,
	},
}
