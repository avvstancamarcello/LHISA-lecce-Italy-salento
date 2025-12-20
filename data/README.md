# Database Internazionale - Responsabilità Bancaria per Truffe Finanziarie

Questo directory contiene i dati sulla regolamentazione finanziaria di 37 Paesi del Mondo in relazione alla **responsabilità delle banche per rimborsare i clienti vittime di truffe finanziarie** che la piattaforma bancaria non ha fermato.

## File

- `legislative_data.json` - Database completo con informazioni sulla responsabilità bancaria per 37 paesi, includendo:
  - Struttura del sistema legislativo
  - Responsabilità bancaria per frodi finanziarie
  - Protezione dei consumatori e diritti al rimborso

## Struttura Dati

Ogni paese include:

```json
{
  "id": 1,
  "name": "Nome Paese",
  "code": "Codice ISO",
  "legislative_info": {
    "title": "Responsabilità Bancaria in [Paese]",
    "description": "Descrizione del sistema legislativo e regolamentazione bancaria",
    "bank_fraud_liability": "Normativa sulla responsabilità delle banche per rimborsi frodi",
    "consumer_protection": "Protezione dei consumatori e meccanismi di ricorso"
  }
}
```

## Paesi Inclusi (37 totali)

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

## Utilizzo

I dati vengono caricati dinamicamente nella pagina `BancheTruffaResponsabilita.html` tramite un menu a discesa che permette agli utenti di selezionare un paese e visualizzare le informazioni sulla responsabilità bancaria.

### Implementazione

Il menu a discesa è implementato nella pagina dedicata `BancheTruffaResponsabilita.html`, dove gli utenti possono:

1. Selezionare un paese dal menu a discesa
2. Visualizzare informazioni dettagliate inclusi:
   - Sistema legislativo e regolamentazione bancaria
   - Responsabilità delle banche per frodi finanziarie e rimborsi
   - Protezione dei consumatori e meccanismi di ricorso

### Esempio di Codice

```javascript
// Carica i dati sulla responsabilità bancaria
async function loadBankData() {
    const response = await fetch('data/legislative_data.json');
    const data = await response.json();
    return data.countries;
}
```

## Aggiornamenti

Per aggiornare o aggiungere paesi, modificare il file `legislative_data.json` seguendo la struttura esistente. Assicurarsi che:

1. Ogni paese abbia un `id` univoco
2. Il campo `code` utilizzi codici paese ISO 3166-1 alpha-2
3. Tutti i campi richiesti siano popolati
4. Il JSON rimanga valido dopo le modifiche

## Note Importanti

⚠️ **Questo database è completamente separato dal progetto LHISA NFT**

- I dati riguardano esclusivamente la **responsabilità bancaria per truffe finanziarie**
- NON contiene informazioni su sanità, NFT o criptovalute
- È accessibile tramite la pagina autonoma `BancheTruffaResponsabilita.html`
- Non condivide dati con il progetto LHISA NFT (moneta elettronica per finanziare la ricerca sulla depressione)

## Disclaimer

Questo database è fornito a scopo informativo. Per consulenza legale specifica, si consiglia di consultare un avvocato specializzato in diritto bancario e finanziario.

## Copyright

© 2025 Avv. Marcello Stanca - Database Responsabilità Bancaria Internazionale

