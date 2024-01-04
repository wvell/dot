return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/which-key.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						["<c-d>"] = require("telescope.actions").delete_buffer,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files theme=ivy<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles theme=ivy<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep theme=ivy<cr>", { desc = "Find string in cwd" })
		keymap.set(
			"n",
			"<leader>fc",
			"<cmd>Telescope grep_string theme=ivy<<cr>",
			{ desc = "Find string under cursor in cwd" }
		)
		keymap.set("n", "<leader>,", "<cmd>Telescope buffers theme=ivy<cr>", { desc = "Switch buffers" })
		keymap.set("n", "`", "<cmd>Telescope marks theme=ivy<cr>", { desc = "Switch marks" })
		keymap.set("n", "<C-`>", "<cmd>Telescope quickfix theme=ivy<cr>", { desc = "Switch marks" })
	end,
}
