-- This file needs to have same structure as nvconfig.lua
-- https://github-.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

local custom = {
  grey = { "grey", 5 },
  lightgrey = { "grey", 10 },
}

-- M.mason = {
--   pkgs = {
--
--   },
-- }

M.ui = {
  theme = "tokyonight",
  transparency = true,
  telescope = { style = "bordered" },

  hl_override = {
    -- TbBufOn = { fg = "green" },
    Comment = { italic = true, fg = custom.lightgrey },
    ["@comment"] = { italic = true, fg = custom.lightgrey },
    -- LineNr = { fg = custom.grey },
    -- CursorLineNr = { fg = "green" },
    TelescopeBorder = { fg = "white" },
    TelescopePromptBorder = { link = "TelescopeBorder" },
    TelescopeSelection = { fg = "green" },
    Visual = { bg = custom.grey },
    SignColumn = { bg = "black" },
    LineNr = { bg = "black" },
    CursorLineNr = { bg = "black" },
    -- DiagnosticInfo = { bg = "black", fg = "green" },
    -- DiagnosticWarn = { bg = "black", fg = "yellow" },
    -- DiagosticError = { bg = "black", fg = "red" },
  },

  hl_add = {
    DashboardHeader = { fg = { "yellow", -10 } },
    DashboardProjectTitle = { link = "DashboardHeader" },
    DashboardMruTitle = { link = "DashboardHeader" },
    DashboardFooter = { link = "DashboardHeader" },
    DashboardShortCutIcon = { link = "DashboardHeader" },
    NotifyBackground = { bg = "orange" },
    TelescopePromptCounter = { fg = "orange" },
    MiniIndentscopeSymbol = { fg = { "grey", 25 } },
    WhichKeyNormal = { bg = { "black", 0 } },
    WhichKeyBorder = { link = "NONE", bg = { "white", 0 } },
    InclineNormal = { fg = "white" },
    TelescopeNormal = { link = "NONE", bg = "NONE" },
    dbui_help = { link = "NONE", fg = "orange" },
    -- GitSignsAdd = { link = "DiagnosticInfo" },
    -- GitSignsChange = { link = "DiagnosticWarn" },
    -- GitSignsDelete = { link = "DiagnosticError" },
    -- NoiceCmdlinePopupBorder = { link = "NONE" },
  },

  statusline = {
    separator_style = "arrow",
  },
}

M.term = {
  winopts = { scl = "auto" },
  float = {
    width = 0.8,
    height = 0.5,
    row = 0.25,
    col = 0.1,
    border = "rounded",
    relative = "editor",
  },
  sizes = {
    vsp = 0.45,
    sp = 0.35,
  },
}

return M
