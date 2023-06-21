---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "radium",
  theme_toggle = { "radium", "radium" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "minimal",
  },
  nvdash = {
    load_on_startup = false,
    header = {
      "███╗   ██╗██╗   ██╗ ██████╗██╗  ██╗ █████╗ ██████╗ ",
      "████╗  ██║██║   ██║██╔════╝██║  ██║██╔══██╗██╔══██╗",
      "██╔██╗ ██║██║   ██║██║     ███████║███████║██║  ██║",
      "██║╚██╗██║╚██╗ ██╔╝██║     ██╔══██║██╔══██║██║  ██║",
      "██║ ╚████║ ╚████╔╝ ╚██████╗██║  ██║██║  ██║██████╔╝",
      "╚═╝  ╚═══╝  ╚═══╝   ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ",
    },
  },
  --lsp below is unmodified; modify it when neccessary
    lsp = {
    -- show function signatures i.e args as you type
    signature = {
      disabled = false,
      silent = true, -- silences 'no signature help available' message from appearing
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
