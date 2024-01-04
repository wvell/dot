local wk = require("which-key")

-- window management
wk.register({
  w = {
    name = "Windows",
    v = { "<C-w>v", "Split window vertically" },
    h = { "<C-w>s", "Split window horizontally" },
    e = { "<C-w>=", "Make splits equal size" },
    x = { "<cmd>close<CR>", "Close current split" },
  },
}, { prefix = "<leader>" })

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
