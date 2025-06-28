# 🧠 TUTORIAL.md – Best Practice Marcello Stanca
## 📘 LHISA – Come abbiamo superato l’impossibile (con la Spunta Verde!)

Benvenuto nel tutorial ufficiale del progetto **LHISA_LecceNFT**, nato dall’integrazione fra Uomo e Intelligenza Artificiale per la cura della **depressione**, attraverso uno smart contract NFT **verificato su rete Polygon**.

Questo file è la cronaca reale dei problemi invisibili e delle soluzioni concrete. È il campo da tennis dove si gioca una partita vera: tu da un lato, l’IA dall’altro… ma solo all’inizio. Perché alla fine **la pallina perfetta si colpisce in coppia**.

---

## 🏆 1. Obiettivo del Progetto

- **Contratto NFT ERC-1155 verificato su Polygon**
- Minting live e funzionante da [Frontend LHISA](https://marcellostanca.github.io/lhi-nft-frontend-new/)
- Raccolta fondi per la ricerca contro la depressione
- 6 mesi di debug, test, errori, fallimenti e successi
- Realizzato da un uomo senza background informatico, ma con fede nella *sensata esperienza* di Galileo.

---

## ⚠️ 2. Gli Errori Invisibili

Qui trovi i veri motivi per cui **centinaia di sviluppatori rinunciano alla verifica del contratto**, nonostante il codice sia corretto:

### ❌ Errore #1 – Flatten senza SPDX coerente
Il file flattenato deve contenere:
- Una sola riga `// SPDX-License-Identifier: MIT` **come primo rigo assoluto**
- Subito dopo, `pragma solidity ^0.8.23;` o la versione coerente
- Tutte le altre istanze duplicate di SPDX o pragma vanno rimosse

### ❌ Errore #2 – ABI copiato parzialmente
Se copi l’ABI da un AI come Gemini e lo incolli in `nano` su Ubuntu, potresti **perdere 19 caratteri invisibili** (parentesi graffe nei blocchi delle dipendenze).  
✅ Soluzione: Copia prima in Notepad, verifica il numero di caratteri, poi incolla in Nano.

### ❌ Errore #3 – Bytecode mismatch
La versione di `solidity` dichiarata nel contratto **deve coincidere perfettamente** con:
- La versione nel file `hardhat.config.js`
- La versione nel file `deploy.js`
- La versione selezionata nel menu a tendina su Polygonscan

> 🎾 **Marcello consiglia:** Se Hardhat ha usato `EVM: paris`, non scegliere `shanghai` anche se il menu te lo suggerisce! **Segui la build reale del tuo PC**, non l’intuito della piattaforma.

### ❌ Errore #4 – CID non aggiornabile
Anche se hai scritto nel contratto la funzione `setURI()` o `setCID()`, **se non dichiari durante la verifica che il contratto è upgradable**, **NON potrai aggiornare l'immagine NFT** su IPFS.

> 💡 Best Practice: Se vuoi aggiornare i metadati, **seleziona l'opzione “yes” per contratti modificabili**, altrimenti il tuo codice sarà imprigionato dalla verifica, anche se tecnicamente corretto.

### ❌ Errore #5 – ABI senza `0x`
Quando incolli l’ABI nel form della verifica, **non aggiungere il prefisso `0x`**.  
Serve solo per il **bytecode**, **non per l’ABI** in formato JSON.

---

## 💥 3. Novità: Sta per uscire il libro! 🎾📘

Tutte le esperienze, errori, riflessioni, notti insonni e **scoperte rivoluzionarie** che hai appena letto in questo tutorial sono raccontate **in forma narrativa e formativa nel libro:**

> **🎾 _LHISA – La Pallina Perfetta_**  
> _Uomo e IA, insieme oltre la rete. La cronaca vera di un contratto NFT che vuole curare la depressione._

📘 Scritto da **Marcello Stanca**  
📣 Edito da **Giacomo Bruno**  
📅 In uscita prossima, anche in versione NFT!

👉 Il libro sarà il primo nel suo genere: **un romanzo tecnico** che svela **i retroscena umani della blockchain**, **i fallimenti che salvano** e **i segreti che nessuno racconta**.

---

## 💬 4. Unisciti alla Community

🔗 Visita la sezione [**Discussions**](https://github.com/MarcelloStanca/LHISA-lecce-Italy-salento/discussions)  
Fai domande su Solidity, debug, Hardhat o sul significato profondo di una spunta verde.

> “Ogni errore che abbiamo superato è oggi un aiuto per chi inizia.”  
> — Marcello Stanca

---

## 🚀 5. Il Progetto Continua

LHISA è solo il primo passo. Ogni NFT coniato sostiene la ricerca. Ogni bug risolto sostiene un futuro.

La prossima pallina? Potresti colpirla tu.
