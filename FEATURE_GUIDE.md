# 📚 Guida al Database Internazionale - Responsabilità Bancaria per Truffe Finanziarie

## Panoramica

Questo database fornisce informazioni sulla **regolamentazione finanziaria di 37 Paesi del Mondo** in relazione alla **responsabilità delle banche per rimborsare i clienti vittime di truffe finanziarie** che la piattaforma bancaria non ha fermato.

⚠️ **IMPORTANTE**: Questo è un progetto **completamente separato** dal progetto LHISA NFT (moneta elettronica per il finanziamento della ricerca sulla depressione). I due progetti non condividono dati e hanno scopi completamente diversi.

## Implementazione Tecnica

### File Creati

1. **`BancheTruffaResponsabilita.html`** - Pagina web dedicata autonoma
   - Interfaccia completa per consultare il database
   - Completamente separata dal sito LHISA NFT
   - Design professionale focalizzato sulla responsabilità bancaria

2. **`data/legislative_data.json`** (40 KB)
   - Contiene i dati sulla responsabilità bancaria per 37 paesi
   - Include normative su rimborsi frodi e protezione consumatori
   - Formato JSON validato

3. **`data/README.md`**
   - Documentazione completa della struttura dati
   - Elenco dei 37 paesi inclusi
   - Istruzioni per aggiornamenti futuri

### Modifiche ai File Esistenti

**Nessuna modifica** al file `index.html` del progetto LHISA NFT - i due progetti sono completamente separati.

## Struttura Dati

Ogni paese nel file JSON ha questa struttura:

```json
{
  "id": 1,
  "name": "Italia",
  "code": "IT",
  "legislative_info": {
    "title": "Responsabilità Bancaria in Italia",
    "description": "Descrizione del sistema legislativo e regolamentazione bancaria...",
    "bank_fraud_liability": "Normativa sulla responsabilità delle banche per frodi...",
    "consumer_protection": "Protezione dei consumatori e meccanismi di ricorso..."
  }
}
```

### Campi Principali

- **bank_fraud_liability**: Normativa sulla responsabilità delle banche per rimborsare clienti vittime di frodi finanziarie
- **consumer_protection**: Diritti dei consumatori, limiti di responsabilità del cliente, meccanismi di ricorso e arbitrato

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

1. **Accesso alla Pagina**
   - Aprire il file `BancheTruffaResponsabilita.html` nel browser
   - La pagina è completamente autonoma e separata dal progetto LHISA NFT

2. **Selezione del Paese**
   - Utilizzare il menu a discesa "Seleziona un Paese"
   - Scegliere uno dei 37 paesi disponibili
   - I paesi sono elencati con nome e codice ISO (es. "Italia (IT)")

3. **Visualizzazione Dati**
   Dopo la selezione, vengono mostrate tre sezioni:
   - 🏛️ **Sistema Legislativo**: Struttura e regolamentazione bancaria
   - 🏦 **Responsabilità Bancaria per Truffe Finanziarie**: Normativa su rimborsi e responsabilità
   - 💰 **Rimborsi e Protezione dei Consumatori**: Diritti, limiti di responsabilità, meccanismi di ricorso

4. **Informazioni Aggiuntive**
   - Nome del paese
   - Codice ISO a due lettere
   - Scroll automatico alla sezione dati

### Design Responsive

La pagina è completamente responsive:

- **Desktop**: Layout ottimizzato con max-width di 1200px
- **Mobile**: 
  - Padding ridotto per massimizzare lo spazio
  - Font-size adattato per leggibilità
  - Design single-column per dispositivi piccoli

## Come Usare

### Accesso Diretto

```bash
# Aprire il file nel browser
open BancheTruffaResponsabilita.html
# oppure con un server locale
python3 -m http.server 8000
# Poi navigare a http://localhost:8000/BancheTruffaResponsabilita.html
```

### Separazione dal Progetto LHISA NFT

⚠️ **IMPORTANTE**:
- Questo database è **completamente autonomo**
- **NON** è integrato in `index.html` (pagina del progetto LHISA NFT)
- I due progetti non condividono dati o funzionalità
- Hanno scopi completamente diversi:
  - **BancheTruffaResponsabilita.html**: Responsabilità bancaria per frodi
  - **index.html (LHISA NFT)**: Moneta elettronica per ricerca sulla depressione
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

© 2025 Database Internazionale - Responsabilità Bancaria per Truffe Finanziarie
Avv. Marcello Stanca - Firenze, Italia

---

**Ultimo aggiornamento**: 20 Dicembre 2025
**Versione**: 2.0.0 - Separato dal progetto LHISA NFT
