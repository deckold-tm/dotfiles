return {
	"Vigemus/iron.nvim",
	config = function()
		local iron = require("iron.core")
		local view = require("iron.view")
		local common = require("iron.fts.common")

		iron.setup({
			config = {
				-- Whether a repl should be discarded or not
				scratch_repl = true,
				-- Your repl definitions come here
				repl_definition = {
					sh = {
						command = { "zsh" },
					},
					python = {
						command = { "ipython", "--no-autoindent" },
						format = common.bracketed_paste_python,
						block_dividers = { "# %%", "#%%" },
						env = { PYTHON_BASIC_REPL = "1" },
					},
				},
				-- set the file type of the newly created repl to ft
				repl_filetype = function(bufnr, ft)
					return ft
				end,
				-- Send selections to the DAP repl if an nvim-dap session is running.
				dap_integration = true,
				-- How the repl window will be displayed
				repl_open_cmd = view.bottom(30),
			},
			-- Iron doesn't set keymaps by default anymore.
			keymaps = {
				toggle_repl = "<space>irr",
				restart_repl = "<space>irR",
				send_motion = "<space>isc",
				visual_send = "<space>isc",
				send_file = "<space>isf",
				send_line = "<space>isl",
				send_paragraph = "<space>isp",
				send_until_cursor = "<space>isu",
				send_mark = "<space>ism",
				send_code_block = "<space>isb",
				send_code_block_and_move = "<space>isn",
				mark_motion = "<space>imc",
				mark_visual = "<space>imc",
				remove_mark = "<space>imd",
				cr = "<space>is<cr>",
				interrupt = "<space>is<space>",
				exit = "<space>isq",
				clear = "<space>icl",
			},
			highlight = {
				italic = true,
			},
			ignore_blank_lines = true,
		})

		-- Extra commands
		vim.keymap.set("n", "<space>irf", "<cmd>IronFocus<cr>")
		vim.keymap.set("n", "<space>irh", "<cmd>IronHide<cr>")
	end,
}
