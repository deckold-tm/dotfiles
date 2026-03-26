return {
	{
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		ft = { "org" },
		opts = {},
		config = function()
			require("orgmode").setup({
				org_agenda_files = "~/Documents/Notes/**/*",
				org_default_notes_file = "~/Documents/Notes/refile.org",
				org_capture_templates = {
					r = {
						description = "Repo",
						template = "* [[%x][%(return string.match('%x', '([^/]+)$'))]]%?",
						target = "~/Documents/Notes/repos.org",
					},
					a = {
						description = "Journal Articles",
						template = "* ARTICLE %t [[%x][%^{description|link}]]",
						target = "~/Documents/Notes/articles.org",
					},
					n = {
						description = "Generic Note",
						template = "* NOTE %t %^{Title}",
						target = "~/Documents/Notes/notes.org",
					},
				},
			})
		end,
	},
	{
		"chipsenkbeil/org-roam.nvim",
		tag = "0.2.0",
		dependencies = {
			{
				"nvim-orgmode/orgmode",
				tag = "0.7.0",
			},
		},
		config = function()
			require("org-roam").setup({
				directory = "~/Documents/org_roam/",
				-- optional
				org_files = {
					"~/Documents/Notes/",
				},
			})
		end,
	},
}
