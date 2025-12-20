# 📚 Guida alla Funzionalità di Consultazione Dati Legislativi

## Panoramica

Questa funzionalità permette agli utenti del sito LHISA NFT di consultare informazioni legislative, sanitarie e sulla regolamentazione degli NFT per 37 paesi del mondo attraverso un menu a discesa interattivo.

## Implementazione Tecnica

### File Creati

1. **`data/legislative_data.json`** (17.5 KB)
   - Contiene i dati legislativi strutturati per 37 paesi
   - Include informazioni su sistema legislativo, regolamentazione sanitaria e NFT
   - Formato JSON validato

2. **`data/README.md`**
   - Documentazione completa della struttura dati
   - Elenco dei 37 paesi inclusi
   - Istruzioni per aggiornamenti futuri

3. **`test_legislative.html`** (file di test, escluso da git)
   - Pagina di test isolata per verificare la funzionalità
   - Permette test indipendenti senza interferenze con il sito principale

### Modifiche al File Principale

**`index.html`** - Aggiunte:

1. **Sezione HTML** (linee ~2864-2889)
   - Titolo della sezione con emoji 📚
   - Descrizione introduttiva
   - Menu a discesa (`<select>`) con label
   - Area di visualizzazione dati (nascosta di default)

2. **JavaScript** (linee ~2891-2986)
   - Funzione `loadLegislativeData()`: carica i dati dal JSON
   - Funzione `displayCountryData()`: visualizza i dati del paese selezionato
   - Event listener per il cambio di selezione
   - Gestione errori e validazione

3. **CSS Responsive** (linee ~152-161)
   - Stili specifici per mobile devices
   - Padding e font-size ottimizzati per schermi piccoli

## Struttura Dati

Ogni paese nel file JSON ha questa struttura:

```json
{
  "id": 1,
  "name": "Italia",
  "code": "IT",
  "legislative_info": {
    "title": "Sistema Legislativo Italiano",
    "description": "Descrizione del sistema legislativo...",
    "health_regulations": "Informazioni sulla regolamentazione sanitaria...",
    "nft_regulation": "Regolamentazione NFT e criptovalute..."
  }
}
```

## I 37 Paesi Inclusi

1. Italia (IT)
2. Germania (DE)
3. Francia (FR)
4. Spagna (ES)
5. Portogallo (PT)
6. Regno Unito (GB)
7. Stati Uniti (US)
8. Canada (CA)
9. Australia (AU)
10. Giappone (JP)
11. Cina (CN)
12. India (IN)
13. Brasile (BR)
14. Messico (MX)
15. Argentina (AR)
16. Sud Africa (ZA)
17. Corea del Sud (KR)
18. Singapore (SG)
19. Svizzera (CH)
20. Norvegia (NO)
21. Svezia (SE)
22. Danimarca (DK)
23. Paesi Bassi (NL)
24. Belgio (BE)
25. Austria (AT)
26. Polonia (PL)
27. Grecia (GR)
28. Repubblica Ceca (CZ)
29. Finlandia (FI)
30. Irlanda (IE)
31. Nuova Zelanda (NZ)
32. Israele (IL)
33. Emirati Arabi Uniti (AE)
34. Arabia Saudita (SA)
35. Turchia (TR)
36. Russia (RU)
37. Ucraina (UA)

## Funzionalità

### Per gli Utenti

1. **Selezione del Paese**
   - Aprire il menu a discesa "Seleziona un Paese"
   - Scegliere uno dei 37 paesi disponibili
   - I paesi sono elencati con nome e codice ISO (es. "Italia (IT)")

2. **Visualizzazione Dati**
   Dopo la selezione, vengono mostrate tre sezioni:
   - 🏛️ **Sistema Legislativo**: Struttura e funzionamento del parlamento
   - 🏥 **Regolamentazione Sanitaria**: Sistema sanitario nazionale
   - 💎 **Regolamentazione NFT**: Normative su criptovalute e NFT

3. **Informazioni Aggiuntive**
   - Nome del paese
   - Codice ISO a due lettere
   - Scroll automatico alla sezione dati

### Design Responsive

La funzionalità è completamente responsive:

- **Desktop**: Layout a larghezza piena (max 500px per il dropdown)
- **Mobile**: 
  - Padding ridotto (15px invece di 20px)
  - Font-size ottimizzato (0.95em per il select)
  - Margini adattati per schermi piccoli

## Come Usare la Funzionalità

### Nell'Index.html Principale

```html
<!-- La sezione è già integrata nel file index.html -->
<!-- Si trova prima della sezione "Admin Dashboard" -->
```

### Testing Isolato

Per testare la funzionalità in modo isolato:

```bash
# Aprire il file di test nel browser
open test_legislative.html
# oppure
python3 -m http.server 8000
# Poi navigare a http://localhost:8000/test_legislative.html
```

## Manutenzione e Aggiornamenti

### Aggiungere un Nuovo Paese

1. Aprire `data/legislative_data.json`
2. Aggiungere un nuovo oggetto paese nell'array `countries`:
   ```json
   {
     "id": 38,
     "name": "Nuovo Paese",
     "code": "NP",
     "legislative_info": {
       "title": "Sistema Legislativo...",
       "description": "...",
       "health_regulations": "...",
       "nft_regulation": "..."
     }
   }
   ```
3. Validare il JSON:
   ```bash
   python3 -m json.tool data/legislative_data.json
   ```
4. Aggiornare il contatore nel README.md della directory data

### Modificare Dati Esistenti

1. Trovare il paese nell'array usando l'id o il nome
2. Modificare i campi desiderati
3. Salvare e validare il JSON
4. Ricaricare la pagina per vedere le modifiche

## Sicurezza

- ✅ Nessuna esecuzione di codice arbitrario
- ✅ Validazione dei dati in input (controllo ID paese)
- ✅ Escape automatico dei caratteri speciali tramite textContent
- ✅ Nessuna dipendenza esterna (tutto locale)
- ✅ JSON statico (nessuna modifica lato client)

## Performance

- **Caricamento**: Il file JSON (18KB) si carica all'avvio della pagina
- **Rendering**: Istantaneo al cambio di selezione (dati già in memoria)
- **Mobile**: Ottimizzato per connessioni lente
- **Caching**: Il browser può cachare il file JSON

## Browser Supportati

- ✅ Chrome/Edge (versioni recenti)
- ✅ Firefox (versioni recenti)
- ✅ Safari (versioni recenti)
- ✅ Mobile browsers (iOS Safari, Chrome Mobile)

## Risoluzione Problemi

### Il dropdown è vuoto
- Verificare che `data/legislative_data.json` esista
- Controllare la console del browser per errori
- Verificare i permessi del file

### I dati non si visualizzano
- Verificare che JavaScript sia abilitato
- Controllare la console per errori
- Verificare la validità del JSON

### Errore "File not found"
- Assicurarsi che il path relativo sia corretto (`data/legislative_data.json`)
- Se si usa un server locale, verificare che serva i file statici

## Contribuire

Per contribuire con nuovi dati o miglioramenti:

1. Fork del repository
2. Modifiche ai file appropriati
3. Validazione del JSON
4. Pull request con descrizione dettagliata

## Copyright

© 2025 LHISA Lecce NFT Project
Avv. Marcello Stanca - Firenze, Italia

---

**Ultimo aggiornamento**: 20 Dicembre 2025
**Versione**: 1.0.0
