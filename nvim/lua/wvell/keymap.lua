local wk = require("which-key")

-- Tab management
wk.register({
	t = {
		name = "Tabs",
		o = { "<cmd>tabnew<CR>", "Open new tab" },
		x = { "<cmd>tabclose<CR>", "Close current tab" },
		n = { "<cmd>tabn<CR>", "Go to next tab" },
		p = { "<cmd>tabp<CR>", "Go to previous tab" },
		f = { "<cmd>tabnew %<CR>", "Open current buffer in new tab" },
	},
}, { prefix = "<leader>" })

-- buffer management
wk.register({
	b = {
		name = "Buffers",
		d = { "<cmd>bd<CR>", "Delete current buffer" },
	},
}, { prefix = "<leader>" })

-- Move lines up and down in visual mode.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center the screen when navigating with C-d and C-u.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
