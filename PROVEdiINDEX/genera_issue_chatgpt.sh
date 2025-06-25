#!/bin/bash

# Nome del file Markdown da creare
issue_file="chatgpt_wsl_issue.md"

# Contenuto dell'issue
cat <<EOF > "$issue_file"
# 🐛 Issue: Problema di copia/incolla tra ChatGPT (Windows) e WSL (Linux)

## Descrizione del problema

Quando si copia uno script da ChatGPT (versione web su browser Windows) e lo si incolla in un terminale WSL (Windows Subsystem for Linux), si verificano i seguenti problemi:

- Compaiono **caratteri invisibili o corrotti** (`£`, `ù`, `çr`, ecc.);
- Vengono introdotti **caratteri non presenti nel testo originale** (es. caratteri accentati o simboli errati);
- Il comando `nano` in WSL mostra simboli che non sono stati scritti né visti nella finestra di chat;
- Il risultato è uno **script non eseguibile** con errori di sintassi.

## Passaggi per riprodurre

1. Aprire ChatGPT in browser su Windows;
2. Copiare uno script bash da una risposta;
3. Incollarlo in WSL tramite `nano script.sh` o direttamente nel terminale;
4. Salvare ed eseguire: `bash script.sh` o `chmod +x script.sh && ./script.sh`;
5. Vedere errori di caratteri e `command not found`.

## Esempio di errore

```bash
$ ./script.sh
./script.sh: line 5: $'çr': command not found
./script.sh: line 21: syntax error near unexpected token ù$'doçr''
