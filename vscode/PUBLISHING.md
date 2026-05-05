# Publicar en VS Marketplace (checklist)

Hazlo **desde esta carpeta** (`vscode/`), donde está `package.json`.

## 1. Cuenta y publicador

1. Entra en [Visual Studio Marketplace – Manage publishers](https://marketplace.visualstudio.com/manage).
2. Inicia sesión con **Microsoft** (crea cuenta si hace falta).
3. **Create publisher**: elige un **Publisher ID** único (ej. `franciscobt`). No podrás cambiarlo después con facilidad.
4. Abre `package.json` y pon **`publisher`** al **mismo ID** que creaste.

## 2. Personal Access Token (PAT)

1. [Azure DevOps](https://dev.azure.com) → usuario (esquina) → **Personal access tokens**.
2. **New token**: nombre cualquiera; organización **All accessible organizations**; expiración según prefieras.
3. **Scopes** → **Custom defined** → marca **Marketplace** → **Manage**.
4. Genera el token y **guárdalo** (solo se muestra una vez).

## 3. Herramienta `vsce`

En terminal:

```bash
cd /ruta/al/repo/themes/base16-dracula/vscode
npx --yes @vscode/vsce login <TU_PUBLISHER_ID>
```

Pega el PAT cuando lo pida.

## 4. Probar el paquete localmente

```bash
npx --yes @vscode/vsce package
```

Debe crear `base16-dracula-theme-0.1.1.vsix`. Opcional: **Extensions** → **Install from VSIX…** y comprueba el tema.

## 5. Publicar

```bash
npx --yes @vscode/vsce publish
```

Si subes versión después: edita `"version"` en `package.json` y repite `publish`.

## Problemas frecuentes

- **`publisher` no coincide** con el ID del Marketplace → corrige `package.json`.
- **Nombre ya en uso**: cambia `"name"` en `package.json` (el identificador es `publisher.name`).
- **README ausente**: debe existir `README.md` junto a `package.json` (ya está en esta carpeta).
