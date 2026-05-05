# Base16 Dracula

Esquema **Base16** con acento Dracula: paleta en `dracula.yaml`, implementación para **Neovim** (Lua) y un tema mínimo para **VS Code**.

El `base00` está afinado a un fondo tipo **Rosé Pine Moon** (`#232136`); el resto de slots siguen la lógica Base16.

## Estructura

| Ruta | Rol |
|------|-----|
| `dracula.yaml` | Fuente de la paleta (Base16). |
| `colors/base16-dracula.lua` | Colorscheme Neovim (`:colorscheme base16-dracula`). |
| `vscode/base16-dracula-color-theme.json` | UI + `tokenColors` para VS Code. |
| `vscode/package.json` | Extensión local (versión actual en el manifest). |

## Neovim

### Instalación (lazy.nvim)

```lua
{
  "Francisco-BT/base16-dracula",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("base16-dracula")
  end,
}
```

Para desarrollar contra un clon local, usa `dir = "/ruta/al/repo"` (o la variable de entorno que expongas en tu config).

### Notas

- Incluye highlights para **Treesitter** y tokens semánticos **LSP** (`@lsp.*`) con grupos **sin** sufijo de `filetype` cuando aplica, de modo que el mismo esquema sirva en cualquier lenguaje que use el servidor estándar (véase `:h lsp-semantic-highlight`).

## VS Code

1. Abre la carpeta `vscode/` en VS Code.
2. **Run and Debug** → **Extension** (o `F5`).
3. En la ventana *Extension Development Host*, elige el tema **Base16 Dracula**.

`engines.vscode` y la versión de la extensión están en `vscode/package.json`. Para uso diario sin publicar en Marketplace, puedes empaquetar con `vsce package` e instalar el `.vsix` localmente.
