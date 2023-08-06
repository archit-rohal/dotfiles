-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

--Added by me - (the above text was pre-inserted) -
local set = vim.opt

set.nu = true
set.rnu = true
-- set.autochdir = true
