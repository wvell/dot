local opt = vim.opt -- for conciseness

-- Set file numers.
opt.number = true
opt.relativenumber = true

-- Enable mouse
opt.mouse = "a"

-- tabs & indentation
opt.tabstop = 2       -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2    -- 2 spaces for indent width
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes"  -- show sign column so that text doesn't shift

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

opt.wildmode = "list:longest,full"

-- set whitespace characters for non go files.
vim.cmd([[
  augroup NonGoFileSettings
    autocmd!
    autocmd FileType * if &ft != 'go' | setlocal list listchars=eol:$,tab:\ \ ,trail:•,extends:>,precedes:<,nbsp:␣ | endif
  augroup END
]])
