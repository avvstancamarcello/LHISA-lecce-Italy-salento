# LHISA-lecce-Italy-salento: Frontend per NFT LHI Lecce

Questo repository contiene il frontend pubblico per il progetto "LHI Lecce NFT". Si tratta di una Decentralized Application (dApp) basata su HTML e JavaScript vanilla, progettata per consentire agli utenti di interagire con il contratto smart degli NFT "LHI Lecce NFT" sulla blockchain Polygon.

Il progetto è focalizzato sul supporto alla ricerca scientifica per "DEPRESSIONE: Cura e Guarigione" attraverso l'emissione di Token NFT Solidali.

## Contratto Smart

Il contratto smart ERC1155, denominato "LHI Lecce NFT" con simbolo "LHILE", è deployato sulla rete Polygon al seguente indirizzo:

`0x6a6d5Dc29ad8ff23209186775873e123b31c26E9`

Puoi visualizzare il contratto su Polygonscan:
[https://polygonscan.com/address/0x6a6d5Dc29ad8ff23209186775873e123b31c26E9](https://polygonscan.com/address/0x6a6d5Dc29ad8ff23209186775873e123b31c26E9)

## Funzionalità del Frontend

La pagina web (`index.html`) permette agli utenti di:
* Connettersi a MetaMask.
* Interagire con il contratto smart `LHILecceNFT` per effettuare il minting di token NFT.
* La logica include la richiesta di una chiave di decrittazione da un backend esterno prima del minting.

## Come utilizzare / Testare la dApp

1.  **Assicurati di avere MetaMask installato** nel tuo browser (desktop o mobile).
2.  **Configura MetaMask sulla rete Polygon** (Mainnet o Mumbai Testnet, a seconda di dove il contratto è deployato).
3.  **Accedi alla dApp** tramite GitHub Pages:
    [https://avvstancamarcello.github.io/LHISA-lecce-Italy-salento/](https://avvstancamarcello.github.io/LHISA-lecce-Italy-salento/)
4.  Utilizza i controlli sulla pagina per connettere il tuo wallet e procedere con il minting degli NFT.

### Debug e Sviluppo

Per il debug:
* Apri la console degli sviluppatori del tuo browser (`F12` o `Ctrl+Shift+I` su Windows/Linux, `Cmd+Option+I` su macOS).
* La dApp è stata aggiornata con logging dettagliato (`console.log`, `console.error`) per fornire visibilità sulle fasi di connessione del wallet, interazione con il backend e transazioni blockchain.

---
