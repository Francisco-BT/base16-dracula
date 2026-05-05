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
    base00 = hex("232136"),
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

  -- Muted blue-grey: separates comments from greens/cyans used for code.
  local comment_fg = hex("6272a4")
  -- Pale aqua (user ref ~#98d1ce): `string`/`boolean`/`undefined` as types + template `${}`.
  local primitive_aqua = hex("98d1ce")

  hi("Normal", { fg = p.base05, bg = p.base00 })
  hi("NormalNC", { fg = p.base05, bg = p.base00 })
  -- Floats: same bg as editor (base01 reads as flat "grey" vs base00).
  hi("NormalFloat", { fg = p.base05, bg = p.base00 })
  hi("FloatBorder", { fg = p.base03, bg = p.base00 })
  hi("FloatTitle", { fg = p.base06, bg = p.base00, bold = true })
  hi("FloatFooter", { fg = p.base03, bg = p.base00 })
  hi("WinSeparator", { fg = p.base02 })

  -- Gutter: solid background so greys don't look "off".
  hi("SignColumn", { fg = p.base03, bg = p.base00 })
  hi("FoldColumn", { fg = p.base03, bg = p.base00 })
  hi("LineNr", { fg = p.base03, bg = p.base00 })
  hi("CursorLineNr", { fg = p.base04, bg = "none", bold = true })
  hi("CursorLine", { bg = p.base01 })
  hi("ColorColumn", { bg = p.base01 })
  hi("Visual", { bg = p.base02 })
  hi("Search", { fg = p.base00, bg = p.base0A })
  hi("IncSearch", { fg = p.base00, bg = p.base09 })
  hi("CurSearch", { fg = p.base00, bg = p.base09 })
  -- Completion menu: keep solid background even with transparency enabled,
  -- otherwise selection can become hard to see in floating windows.
  hi("Pmenu", { fg = p.base05, bg = p.base01 })
  hi("PmenuSel", { fg = p.base00, bg = p.base04, bold = true })
  hi("PmenuSbar", { bg = p.base02 })
  hi("PmenuThumb", { bg = p.base03 })
  -- Green only for the matching pair under the cursor (see :h MatchParen).
  hi("MatchParen", { fg = p.base0A, bg = p.base02, bold = true, underline = true })
  hi("Whitespace", { fg = p.base02 })
  hi("NonText", { fg = p.base02 })
  hi("EndOfBuffer", { fg = p.base00 })

  -- Statusline: match WhichKeyFloat background.
  hi("StatusLine", { fg = p.base05, bg = p.base01 })
  hi("StatusLineNC", { fg = p.base03, bg = p.base00 })

  hi("Comment", { fg = comment_fg, italic = true })
  hi("SpecialComment", { fg = comment_fg, italic = true })
  hi("Constant", { fg = p.base09 })
  hi("String", { fg = p.base0B })
  hi("Character", { fg = p.base0B })
  hi("Number", { fg = p.base09 })
  hi("Boolean", { fg = primitive_aqua })
  -- Like stock base16-dracula: default identifiers = foreground. Functions = cyan.
  hi("Identifier", { fg = p.base05 })
  hi("Function", { fg = p.base0D })
  -- Base16: keywords/storage → base0E (purple). base08 is pinker (variables/xml).
  hi("Statement", { fg = p.base0E, italic = true })
  hi("Keyword", { fg = p.base0E, italic = true })
  hi("Operator", { fg = p.base05 })
  hi("Delimiter", { fg = p.base05 })
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
  hi("TelescopeNormal", { fg = p.base05, bg = p.base00 })
  hi("TelescopeBorder", { fg = p.base03, bg = p.base00 })
  hi("TelescopePromptNormal", { fg = p.base05, bg = p.base00 })
  hi("TelescopePromptBorder", { fg = p.base03, bg = p.base00 })
  hi("TelescopeSelection", { fg = p.base06, bg = p.base02 })
  hi("TelescopeMatching", { fg = p.base0A, bold = true })

  -- nvim-cmp
  hi("CmpItemAbbrMatch", { fg = p.base04, bold = true })
  hi("CmpItemAbbrMatchFuzzy", { fg = p.base04, bold = true })
  hi("CmpItemMenu", { fg = p.base03 })
  hi("CmpItemKindFunction", { fg = p.base0D })
  hi("CmpItemKindMethod", { fg = p.base0D })
  hi("CmpItemKindVariable", { fg = p.base05 })
  hi("CmpItemKindField", { fg = p.base05 })
  hi("CmpItemKindProperty", { fg = p.base08 })
  hi("CmpItemKindClass", { fg = p.base0A })
  hi("CmpItemKindInterface", { fg = p.base0A })
  hi("CmpItemKindText", { fg = p.base05 })
  hi("CmpItemKindKeyword", { fg = p.base0E })
  hi("CmpItemKindSnippet", { fg = p.base0C })

  -- WhichKey
  hi("WhichKey", { fg = p.base0D })
  hi("WhichKeyGroup", { fg = p.base0A })
  hi("WhichKeyDesc", { fg = p.base05 })
  hi("WhichKeySeparator", { fg = p.base03 })
  hi("WhichKeyFloat", { fg = p.base05, bg = p.base00 })
  hi("WhichKeyBorder", { fg = p.base03, bg = p.base00 })

  -- Treesitter (links to keep maintenance small)
  hi("@comment", { link = "Comment" })
  hi("@punctuation", { fg = p.base05 })
  hi("@punctuation.bracket", { fg = p.base05 })
  hi("@punctuation.delimiter", { fg = p.base05 })
  hi("@punctuation.special", { fg = primitive_aqua })
  hi("@string", { link = "String" })
  hi("@string.regex", { fg = p.base0C })
  hi("@string.escape", { fg = p.base0C })
  hi("@character", { link = "Character" })
  hi("@number", { link = "Number" })
  hi("@boolean", { link = "Boolean" })
  hi("@constant", { link = "Constant" })
  -- `null`, `undefined`, `NaN`, … in JS/TS (Treesitter)
  hi("@constant.builtin", { fg = primitive_aqua })
  hi("@function", { link = "Function" })
  hi("@function.builtin", { fg = p.base0D })
  hi("@method", { link = "Function" })
  hi("@constructor", { fg = p.base0A })
  hi("@keyword", { link = "Keyword" })
  hi("@keyword.import", { fg = p.base0E, italic = true })
  hi("@keyword.return", { fg = p.base0E, italic = true })
  hi("@operator", { link = "Operator" })
  hi("@type", { link = "Type" })
  -- Primitives (`string`, `number`, `boolean`, `undefined`, …) — pale aqua, not Map-green.
  hi("@type.builtin", { fg = primitive_aqua })
  -- LSP semantic tokens: unsuffixed groups apply to every filetype; `.lua` / `.ts` only
  -- override when needed (:h lsp-semantic-highlight). Same idea as stock `colors/vim.lua`.
  hi("@lsp.type.type", { link = "Type" })
  hi("@lsp.type.class", { link = "Type" })
  hi("@lsp.type.enum", { link = "Type" })
  hi("@lsp.type.interface", { link = "Type" })
  hi("@lsp.type.struct", { link = "Type" })
  hi("@lsp.type.typeParameter", { link = "Type" })
  hi("@lsp.type.namespace", { link = "Type" })
  hi("@lsp.type.keyword", { link = "Keyword" })
  hi("@lsp.type.modifier", { link = "Keyword" })
  hi("@lsp.type.number", { link = "Number" })
  hi("@lsp.type.operator", { link = "Operator" })
  -- String literal token, not the type name `string`.
  hi("@lsp.type.string", { link = "String" })
  hi("@lsp.type.templateType", { link = "Type" })
  -- Stdlib / built-ins (null, undefined, Promise, console, …): any language with defaultLibrary.
  hi("@lsp.typemod.keyword.defaultLibrary", { fg = primitive_aqua })
  hi("@lsp.typemod.type.defaultLibrary", { fg = primitive_aqua })
  hi("@lsp.typemod.variable.defaultLibrary", { fg = primitive_aqua })
  hi("@keyword.type", { link = "Keyword" })
  -- Object keys / property names → pink; plain variables → white (base05).
  hi("@property", { fg = p.base08 })
  hi("@label", { fg = p.base08 })
  hi("@variable", { fg = p.base05 })
  hi("@variable.member", { fg = p.base08 })
  hi("@variable.builtin", { fg = p.base09 })
  hi("@parameter", { fg = p.base05 })
  hi("@field", { fg = p.base05 })
  hi("@namespace", { fg = p.base0A })
  hi("@tag", { fg = p.base0E })
  hi("@tag.attribute", { fg = p.base0A })
  hi("@tag.delimiter", { fg = p.base03 })
  hi("@markup.strong", { fg = p.base08, bold = true })
  hi("@markup.emphasis", { italic = true })
  hi("@markup.heading", { fg = p.base0A, bold = true })
  hi("@markup.link", { fg = p.base08, underline = true })
  hi("@markup.link.label", { fg = p.base08, underline = true })
  hi("@markup.link.url", { fg = p.base08, underline = true })
  hi("@markup.underline", { fg = p.base08, underline = true })
  hi("@markup.raw", { fg = p.base0C })

  -- Legacy markdown syntax (no Treesitter)
  hi("markdownBold", { fg = p.base08, bold = true })
  hi("markdownLinkText", { fg = p.base08, underline = true })
  hi("markdownUrl", { fg = p.base08, underline = true })
  hi("markdownLinkTextDelimiter", { fg = p.base05 })
end

M.setup()

return M

