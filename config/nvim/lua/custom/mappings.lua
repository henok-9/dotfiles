---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<S-h>"] = {"^", "Beginning of line"},
    ["<S-l>"] = {"<End>", "End of line"},
 
  },
  v = {
    [">"] = { ">gv", "indent"},
    ["<S-h>"] = {"^", "Beginning of line"},
    ["<S-l>"] = {"<End>", "End of line"},
  },
}

-- more keybinds!

return M
