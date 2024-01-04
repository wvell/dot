return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"folke/which-key.nvim",
	},
	config = function()
		local nvimtree = require("nvim-tree")
		local wk = require("which-key")

		-- See: https://github.com/nvim-tree/nvim-tree.lua?tab=readme-ov-file#setup
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- set termguicolors to enable highlight groups
		vim.opt.termguicolors = true

		nvimtree.setup({})

		wk.register({
			e = {
				name = "Explorer",
			},
		}, { prefix = "<leader>" })

		local keymap = vim.keymap

		keymap.set("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle" })
	end,
}
