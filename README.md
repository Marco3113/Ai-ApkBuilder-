# APK Builder — Android App

Un'app Android che ti permette di creare e fare il push su GitHub di progetti Android,
direttamente dal tuo telefono o tablet.

## Come usarla

1. **Forka questa repo** su GitHub
2. **Abilita GitHub Actions** (Settings → Actions → Allow all)
3. Aspetta che il workflow `Build APK Builder APK` finisca
4. Scarica l'APK da Actions → Artifacts → `APKBuilder-debug`
5. Installala sul telefono (abilita "Sorgenti sconosciute")

## Come funziona

L'app carica una WebApp React in locale (`assets/index.html`) che ti guida
in 6 step per creare un progetto Android e fare il push automatico su GitHub.

### Step dell'app

| Step | Cosa fa |
|------|---------|
| Info | Nome app, URL da wrappare, Package ID |
| Design | Colori sfondo/accent, icona |
| Funzioni | Microfono, media, refresh, file picker |
| Codice | Anteprima e modifica del codice generato |
| GitHub | Token e nome repo per il push |
| Build | Link diretto alle GitHub Actions |

## Struttura progetto

```
APKBuilder/
├── app/
│   └── src/main/
│       ├── assets/index.html       ← React app (APK Builder UI)
│       ├── java/.../MainActivity.java
│       └── res/...
├── .github/workflows/build.yml     ← CI per buildare l'APK
└── README.md
```

## Build locale

```bash
# Richiede Android SDK e Java 17+
./gradlew assembleDebug
# APK in: app/build/outputs/apk/debug/app-debug.apk
```

## Requirements

- Android 8.0+ (minSdk 26)
- Connessione internet (per GitHub API)
- GitHub Personal Access Token con scope `repo`

---
Generato con ❤️ da Claude
