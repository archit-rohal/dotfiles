---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- ["H"] = { ":bprev<CR>", "go to previous buffer" },
    -- ["L"] = { ":bnext<CR>", "go to next buffer" },
    ["E"] = { "<cmd>q!<CR>", "force quit" },
    ["<leader>e"] = { "<cmd>NvimTreeToggle<CR>", "Toggle NvimTree" },
    ["<leader>s"] = { ":w!<CR>", "force write" },
    ["<leader>j"] = { "<cmd>!node joo.js<CR>", "execute joo.js with Node.js" },
    ["<leader>k"] = { "<cmd>!node foo.js<CR>", "execute foo.js with Node.js" },
    ["<leader>a"] = { "<cmd>%d<CR>", "Clear buffer" },
  },

  v = {
    ["<leader>u"] = { '"+y', "copy to system clipboard" },
  },
}

-- more keybinds!

return M
