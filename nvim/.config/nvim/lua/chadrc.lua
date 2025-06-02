-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
    statusline = {
        theme = "minimal",
        separator_style = "block"
    }
}

M.base46 = {
    theme = "rosepine"
    -- hl_override = {
    --     ["@comment"] = { fg = "#539343" },
    --     ["@string"] = { fg = "#ce8f6a" },
    --     ["@keyword.repeat"] = { fg = "#d8a0df" },
    --     ["@keyword.conditional"] = { fg = "#d8a0df" },
    --     ["@attribute"] = { fg = "#d8a0df" },
    --     ["@keyword"] = { fg = "#d8a0df" },
    --     ["@keyword.function"] = { fg = "#569cd6" },
    --     Boolean = { fg = "#569cd6" },
    --     ["@constant.builtin"] = { fg = "#569cd6" },
    --     ["@character"] = { fg = "#9cdcfe" },
    --     ["@function"] = { fg = "#dcdcaa"},
    --     ["@function.call"] = { fg = "#dcdcaa"},
    --     ["@function.method"] = { fg = "#dcdcaa"},
    --     ["@function.method.call"] = { fg = "#dcdcaa" },
    --     ["@number"] = { fg = "#a7cb96" },
    --     ["@module"] = { fg = "#45c6b0" },
    --     ["@type"] = { fg = "#45c6b0" },
    --     Type = { fg = "#45c6b0"},
    --     ["@type.builtin"] = { fg = "#45c6b0" },
    --     ["@punctuation.bracket"] = { fg = "#afb2a0" },
    --     ["@punctuation.delimiter"] = { fg = "#afb2a0" },
    --     ["@variable"] = { fg = "#9cdcfe" },
    --     ["@variable.parameter"] = { fg = "#9a9a9a" },
    --     ["@variable.member"] = { fg = "white" },
    --     ["@property"] = { fg = "#9cdcfe" },
    -- },
}

return M
