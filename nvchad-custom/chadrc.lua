---@type ChadrcConfig 
local M = {}
M.ui = {
   theme = 'tokyodark',
   tabufline = {enabled = false, lazyload = false}
}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
return M
