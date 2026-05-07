# Base16 Dracula Theme

Dark Base16 theme with Dracula accents. Fork-inspired by Rosé Pine and the Base16 ecosystem (notably [`base16-nvim`](https://github.com/RRethy/base16-nvim)).

Tema oscuro Base16 con acentos Dracula. Fork inspirado en Rosé Pine y el ecosistema Base16 (en especial [`base16-nvim`](https://github.com/RRethy/base16-nvim)).

## Usage

1. **Command Palette** (`Ctrl/Cmd+Shift+P`) → **Preferences: Color Theme**
2. Pick **Base16 Dracula**

Semantic highlighting is supported where the language extension provides LSP tokens.

## Palette (key colors) / Paleta (colores clave)

- **Background / Fondo**: `#232136`
- **Surface / Superficie**: `#3a3c4e`
- **Selection / Selección**: `#4d4f68`
- **Muted / Atenuado**: `#626483`
- **Foreground / Texto**: `#e9e9f4` (bright: `#f7f7fb`)
- **Accents / Acentos**: `#62d6e8` (cyan), `#b45bcf` (purple), `#ea51b2` (pink), `#00f769` (green), `#ebff87` (yellow)

## UI highlights / Detalles UI

- **Hover & focus**: higher-contrast hovers, with focus outlines in `#62d6e8`.
- **Lists & QuickPick**: selection/focus are intentionally more prominent than hover.
- **Tabs**: active border uses cyan to anchor navigation.

## YAML readability / Legibilidad en YAML

- **YAML keys** render in cyan (`#62d6e8`) to clearly differentiate mapping keys from string values.
- **Las keys en YAML** se muestran en cyan (`#62d6e8`) para distinguirlas bien de valores tipo string.

## Code snippet (preview) / Snippet de código (preview)

```ts
type UserId = string & { readonly __brand: unique symbol };

export interface User {
  id: UserId;
  name: string;
  tags?: string[];
}

export function greet(user: User): string {
  const message = `Hello, ${user.name}!`;
  return message;
}
```

## Recommended settings / Ajustes recomendados

```jsonc
{
  "workbench.colorTheme": "Base16 Dracula",
  "editor.semanticHighlighting.enabled": true,
  "editor.bracketPairColorization.enabled": true
}
```

## Related / Relacionado (Neovim)

This repo also contains a Neovim variant, but VS Code is the main focus of this folder/extension.

Este repo también incluye una variante para Neovim, pero el foco principal de esta carpeta/extensión es VS Code.

## Repository

GitHub: <https://github.com/Francisco-BT/base16-dracula>

<https://github.com/Francisco-BT/base16-dracula>
