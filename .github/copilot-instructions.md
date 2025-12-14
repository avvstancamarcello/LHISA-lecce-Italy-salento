# Copilot Instructions for LHISA Lecce NFT Project

## Project Overview

This is the LHISA Lecce NFT project - a Web3 application for medical research funding through NFTs. The project combines a smart contract deployed on Polygon Mainnet with a frontend interface that integrates MetaMask SDK and ethers.js for blockchain interaction.

**Key Technologies:**
- Frontend: HTML/CSS/JavaScript (vanilla)
- Web3: ethers.js v6, MetaMask SDK
- Blockchain: Polygon Mainnet (Chain ID: 0x89)
- Smart Contract: ERC-1155 and ERC-20 hybrid NFT contract
- Storage: IPFS via Pinata for NFT metadata
- NFT Contract Address: `0xEC023A57E96E0a94E30EB9892F05fC002A545aA5`
- FT Contract Address: `0xF96ab75dEf75945e3E4a62E918468d49DaC97598`

## Project Structure

- `index.html` - Main frontend with MetaMask SDK integration
- `abi.js` - Smart contract ABI definitions (ERC-1155 NFT and ERC-20 token)
- `images/` - NFT watermarked images (350x350 pixels)
- `LINK_LOCATION_hotel/` - Physical location information
- `TUTORIALS/` - Technical documentation
- `.github/workflows/deploy.yml` - CI/CD deployment workflow

## Coding Conventions

### JavaScript Style
- **NO space** before property access operators (`.`), method calls, and array access
- Use standard spacing in object literals: `key: value` (not `key:  value` with double spaces)
- Follow consistent indentation and formatting throughout the codebase

### Web3 Integration Patterns

#### SDK Availability Checks
- **RECOMMENDED**: Check `typeof MetaMaskSDK !== 'undefined'` before instantiating MetaMaskSDK
- Include a 2-second retry mechanism with error handling for more robust initialization
- Current implementation instantiates directly; consider adding availability checks for production reliability

#### Script Loading Order
- External scripts load in specific order: ethers.js (with defer) → MetaMask SDK → abi.js → application code
- Load order is critical to prevent race conditions with MetaMaskSDK initialization
- Scripts are located in the HTML body before the main application script block

### Security Considerations

1. **Never commit credentials**:
   - API keys (Infura, Pinata)
   - Private keys
   - MetaMask SDK Client IDs
   - Use environment variables or GitHub Secrets

2. **Always sanitize user inputs** in Web3 interactions

3. **Validate blockchain responses** before using them in the UI

## Development Workflow

### Making Changes
1. **Frontend changes**: Edit `index.html` directly (single-page application)
2. **Contract ABI updates**: Update `abi.js` with new ABI from verified contract
3. **Styling**: Embedded CSS in `<style>` tag within `index.html`
4. **Testing**: Manual testing with MetaMask on Polygon Mainnet

### Key Features to Maintain
- ✅ MetaMask Embedded Wallet SDK integration
- ✅ Support for 450+ wallets (MetaMask, Coinbase, Binance)
- ✅ NFT preview for 20 NFTs (Token IDs 5-100, multiples of 5)
- ✅ Individual mint button per NFT
- ✅ Interactive event logging system
- ✅ Responsive design (mobile-first)
- ✅ Image display at 350x350 pixels

## Common Tasks

### Adding New NFT Functionality
1. Check if it requires contract changes (if so, update `abi.js`)
2. Add UI elements to `index.html`
3. Implement Web3 interaction using ethers.js v6 syntax
4. Update event logging for user feedback

### Updating MetaMask SDK
1. Update the MetaMask SDK script source in the script loading section of `index.html`
2. Review breaking changes in SDK documentation
3. Test connection flow thoroughly
4. Verify multi-wallet compatibility

### Modifying Smart Contract Integration
1. Get the new ABI from verified contract on PolygonScan
2. Update `window.CONTRACT_ABI` in `abi.js`
3. Update any function calls in `index.html` to match new ABI
4. Test all affected features

## Language and Localization

- Primary language: **Italian** (italiano)
- UI text, comments, and documentation should be in Italian
- Technical terms may use English (e.g., "MetaMask SDK", "NFT", "blockchain")

## Resources

- Official website: https://lhilecce.it
- NFT Contract on PolygonScan: https://polygonscan.com/address/0xEC023A57E96E0a94E30EB9892F05fC002A545aA5
- FT Contract on PolygonScan: https://polygonscan.com/address/0xF96ab75dEf75945e3E4a62E918468d49DaC97598
- Medical hotel location: See `LINK_LOCATION_hotel/` directory

## Testing

- Manual testing required (no automated test suite)
- Test on multiple browsers (Chrome, Firefox, Safari)
- Test with MetaMask extension and mobile wallet
- Verify on Polygon Mainnet before deployment
- Test responsive design on mobile devices

## Deployment

- Deployment is automated via GitHub Actions
- Workflow file: `.github/workflows/deploy.yml`
- Pushes to main branch trigger deployment
- Static site deployment (HTML/CSS/JS)

## Notes for Copilot

- This is a **production application** with real blockchain transactions
- Changes should be **carefully tested** before deployment
- Prioritize **security** and **user experience**
- Maintain **backward compatibility** with existing smart contract
- Keep the codebase **simple** and **maintainable** (vanilla JS, no frameworks)
- Respect the **Italian language** throughout the user-facing content
