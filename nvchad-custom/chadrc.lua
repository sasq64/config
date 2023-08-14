---@type ChadrcConfig 
local M = {}
M.ui = {
   theme = 'ayu_dark',
   tabufline = {enabled = false, lazyload = false}
}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
return M
