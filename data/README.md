# Legislative Data for 37 Countries

This directory contains JSON files with legislative information for 37 countries worldwide.

## Files

- `legislative_data.json` - Contains comprehensive legislative information for 37 countries, including:
  - Legislative system structure
  - Health regulations
  - NFT and cryptocurrency regulations

## Data Structure

Each country entry includes:

```json
{
  "id": 1,
  "name": "Country Name",
  "code": "ISO Country Code",
  "legislative_info": {
    "title": "Legislative System Title",
    "description": "Description of the legislative system",
    "health_regulations": "Health system regulations",
    "nft_regulation": "NFT and cryptocurrency regulations"
  }
}
```

## Countries Included (37 total)

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

## Usage

The data is loaded dynamically in the main `index.html` page via a dropdown menu that allows users to select a country and view its legislative information.

### Implementation

The dropdown menu is implemented in the "Consultazione Dati Legislativi Internazionali" section of the website, where users can:

1. Select a country from the dropdown menu
2. View detailed legislative information including:
   - Legislative system structure
   - Health care regulations
   - NFT and cryptocurrency regulations

### Code Example

```javascript
// Load legislative data
async function loadLegislativeData() {
    const response = await fetch('data/legislative_data.json');
    const data = await response.json();
    return data.countries;
}
```

## Updates

To update or add countries, edit the `legislative_data.json` file following the existing structure. Ensure that:

1. Each country has a unique `id`
2. The `code` field uses ISO 3166-1 alpha-2 country codes
3. All required fields are populated
4. The JSON remains valid after edits

## Copyright

© 2025 LHISA Lecce NFT Project - Avv. Marcello Stanca
