local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local function hex(s)
  return "#" .. s
end

function M.setup()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "base16-dracula"

  local p = {
    base00 = hex("282936"),
    base01 = hex("3a3c4e"),
    base02 = hex("4d4f68"),
    base03 = hex("626483"),
    base04 = hex("62d6e8"),
    base05 = hex("e9e9f4"),
    base06 = hex("f1f2f8"),
    base07 = hex("f7f7fb"),
    base08 = hex("ea51b2"),
    base09 = hex("b45bcf"),
    base0A = hex("00f769"),
    base0B = hex("ebff87"),
    base0C = hex("a1efe4"),
    base0D = hex("62d6e8"),
    base0E = hex("b45bcf"),
    base0F = hex("00f769"),
  }

  hi("Normal", { fg = p.base05, bg = p.base00 })
  hi("NormalFloat", { fg = p.base05, bg = p.base01 })
  hi("FloatBorder", { fg = p.base03, bg = p.base01 })
  hi("SignColumn", { fg = p.base05, bg = p.base00 })
  hi("LineNr", { fg = p.base03, bg = p.base00 })
  hi("CursorLineNr", { fg = p.base06, bg = p.base00, bold = true })
  hi("CursorLine", { bg = p.base01 })
  hi("ColorColumn", { bg = p.base01 })
  hi("Visual", { bg = p.base02 })
  hi("Search", { fg = p.base00, bg = p.base0A })
  hi("IncSearch", { fg = p.base00, bg = p.base09 })
  hi("Pmenu", { fg = p.base05, bg = p.base01 })
  hi("PmenuSel", { fg = p.base00, bg = p.base04 })
  hi("MatchParen", { fg = p.base0A, bg = p.base02, bold = true })

  hi("Comment", { fg = p.base03, italic = true })
  hi("Constant", { fg = p.base09 })
  hi("String", { fg = p.base0B })
  hi("Character", { fg = p.base0B })
  hi("Number", { fg = p.base09 })
  hi("Boolean", { fg = p.base09 })
  hi("Identifier", { fg = p.base08 })
  hi("Function", { fg = p.base0D })
  hi("Statement", { fg = p.base08, italic = true })
  hi("Keyword", { fg = p.base08, italic = true })
  hi("Operator", { fg = p.base05 })
  hi("PreProc", { fg = p.base0A })
  hi("Type", { fg = p.base0A })
  hi("Special", { fg = p.base0C })
  hi("Error", { fg = p.base07, bg = p.base08, bold = true })
  hi("Todo", { fg = p.base00, bg = p.base0A, bold = true })

  hi("DiagnosticError", { fg = p.base08 })
  hi("DiagnosticWarn", { fg = p.base0A })
  hi("DiagnosticInfo", { fg = p.base0D })
  hi("DiagnosticHint", { fg = p.base0C })

  hi("DiffAdd", { fg = p.base0B, bg = p.base01 })
  hi("DiffChange", { fg = p.base0A, bg = p.base01 })
  hi("DiffDelete", { fg = p.base08, bg = p.base01 })
end

M.setup()

return M

