## Base16 Dracula (Neovim + VS Code)

Este folder es un “staging area” para convertir tu `base16-dracula` en un repo propio y mantener **solo ese** esquema (sin traer el resto de `base16-*`).

### Paleta (source of truth)

- `dracula.yaml`: paleta Base16 oficial.

### VS Code

Tema mínimo en:

- `vscode/base16-dracula-color-theme.json`
- `vscode/package.json`

Para probarlo rápido (sin publicar):

- Abre `themes/base16-dracula/vscode/` en VS Code
- Ejecuta `Run and Debug` → `Extension` (o `F5`)
- En la ventana “Extension Development Host”, selecciona el tema `Base16 Dracula`

### Neovim

En tu config actual, el default queda en `base16-dracula` y puedes cambiarlo con:

- `:Theme base16-dracula`
- `:Theme kanagawa`
- `:Theme night-owl`
- `:Theme oxocarbon`

Siguiente paso recomendado: extraer un plugin Neovim propio (Lua/Vimscript) que genere los highlights desde `dracula.yaml` y así eliminar la dependencia de `chriskempson/base16-vim` (que trae muchos esquemas).
