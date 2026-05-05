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
  hi("NormalNC", { fg = p.base05, bg = p.base00 })
  hi("NormalFloat", { fg = p.base05, bg = p.base01 })
  hi("FloatBorder", { fg = p.base03, bg = p.base01 })
  hi("WinSeparator", { fg = p.base02 })

  -- Transparency friendliness: avoid hard blocks in gutters/lines.
  hi("SignColumn", { fg = p.base04, bg = "none" })
  hi("FoldColumn", { fg = p.base03, bg = "none" })
  hi("LineNr", { fg = p.base02, bg = "none" })
  hi("CursorLineNr", { fg = p.base06, bg = "none", bold = true })
  hi("CursorLine", { bg = p.base01 })
  hi("ColorColumn", { bg = p.base01 })
  hi("Visual", { bg = p.base02 })
  hi("Search", { fg = p.base00, bg = p.base0A })
  hi("IncSearch", { fg = p.base00, bg = p.base09 })
  hi("CurSearch", { fg = p.base00, bg = p.base09 })
  hi("Pmenu", { fg = p.base05, bg = p.base01 })
  hi("PmenuSel", { fg = p.base00, bg = p.base04 })
  hi("MatchParen", { fg = p.base0A, bg = p.base02, bold = true })
  hi("Whitespace", { fg = p.base02 })
  hi("NonText", { fg = p.base02 })
  hi("EndOfBuffer", { fg = p.base00 })

  -- Statusline: tie UI to gutter greys.
  hi("StatusLine", { fg = p.base05, bg = p.base02 })
  hi("StatusLineNC", { fg = p.base03, bg = p.base01 })

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

  hi("DiagnosticUnderlineError", { undercurl = true, sp = p.base08 })
  hi("DiagnosticUnderlineWarn", { undercurl = true, sp = p.base0A })
  hi("DiagnosticUnderlineInfo", { undercurl = true, sp = p.base0D })
  hi("DiagnosticUnderlineHint", { undercurl = true, sp = p.base0C })

  hi("LspReferenceText", { bg = p.base02 })
  hi("LspReferenceRead", { bg = p.base02 })
  hi("LspReferenceWrite", { bg = p.base02 })

  hi("DiffAdd", { fg = p.base0B, bg = p.base01 })
  hi("DiffChange", { fg = p.base0A, bg = p.base01 })
  hi("DiffDelete", { fg = p.base08, bg = p.base01 })

  -- GitSigns
  hi("GitSignsAdd", { fg = p.base0B, bg = "none" })
  hi("GitSignsChange", { fg = p.base0A, bg = "none" })
  hi("GitSignsDelete", { fg = p.base08, bg = "none" })

  -- Telescope
  hi("TelescopeNormal", { fg = p.base05, bg = p.base01 })
  hi("TelescopeBorder", { fg = p.base02, bg = p.base01 })
  hi("TelescopePromptNormal", { fg = p.base05, bg = p.base01 })
  hi("TelescopePromptBorder", { fg = p.base02, bg = p.base01 })
  hi("TelescopeSelection", { fg = p.base06, bg = p.base02 })
  hi("TelescopeMatching", { fg = p.base0A, bold = true })

  -- nvim-cmp
  hi("CmpItemAbbrMatch", { fg = p.base04, bold = true })
  hi("CmpItemAbbrMatchFuzzy", { fg = p.base04, bold = true })
  hi("CmpItemMenu", { fg = p.base03 })
  hi("CmpItemKindFunction", { fg = p.base0D })
  hi("CmpItemKindMethod", { fg = p.base0D })
  hi("CmpItemKindVariable", { fg = p.base08 })
  hi("CmpItemKindField", { fg = p.base08 })
  hi("CmpItemKindProperty", { fg = p.base08 })
  hi("CmpItemKindClass", { fg = p.base0A })
  hi("CmpItemKindInterface", { fg = p.base0A })
  hi("CmpItemKindText", { fg = p.base05 })
  hi("CmpItemKindKeyword", { fg = p.base08 })
  hi("CmpItemKindSnippet", { fg = p.base0C })

  -- WhichKey
  hi("WhichKey", { fg = p.base0D })
  hi("WhichKeyGroup", { fg = p.base0A })
  hi("WhichKeyDesc", { fg = p.base05 })
  hi("WhichKeySeparator", { fg = p.base03 })
  hi("WhichKeyFloat", { fg = p.base05, bg = p.base01 })
  hi("WhichKeyBorder", { fg = p.base02, bg = p.base01 })

  -- Treesitter (links to keep maintenance small)
  hi("@comment", { link = "Comment" })
  hi("@punctuation", { fg = p.base05 })
  hi("@string", { link = "String" })
  hi("@string.regex", { fg = p.base0C })
  hi("@string.escape", { fg = p.base0C })
  hi("@character", { link = "Character" })
  hi("@number", { link = "Number" })
  hi("@boolean", { link = "Boolean" })
  hi("@constant", { link = "Constant" })
  hi("@constant.builtin", { fg = p.base09 })
  hi("@function", { link = "Function" })
  hi("@function.builtin", { fg = p.base0D })
  hi("@method", { link = "Function" })
  hi("@constructor", { fg = p.base0A })
  hi("@keyword", { link = "Keyword" })
  hi("@keyword.import", { fg = p.base08, italic = true })
  hi("@keyword.return", { fg = p.base08, italic = true })
  hi("@operator", { link = "Operator" })
  hi("@type", { link = "Type" })
  hi("@type.builtin", { fg = p.base0A })
  hi("@property", { fg = p.base05 })
  hi("@variable", { fg = p.base05 })
  hi("@variable.builtin", { fg = p.base09 })
  hi("@parameter", { fg = p.base05 })
  hi("@field", { fg = p.base05 })
  hi("@namespace", { fg = p.base0A })
  hi("@tag", { fg = p.base08 })
  hi("@tag.attribute", { fg = p.base0A })
  hi("@tag.delimiter", { fg = p.base03 })
  hi("@markup.strong", { bold = true })
  hi("@markup.emphasis", { italic = true })
  hi("@markup.heading", { fg = p.base0A, bold = true })
  hi("@markup.link.url", { fg = p.base04, underline = true })
  hi("@markup.raw", { fg = p.base0C })
end

M.setup()

return M

