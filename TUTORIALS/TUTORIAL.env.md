# 🧠 TUTORIAL.md – Marcello Stanca’s Best Practice  
## 📘 LHISA – How We Overcame the Impossible (and Earned the Green Checkmark!)

Welcome to the official tutorial of the **LHISA_LecceNFT** project, born from a real partnership between Human and Artificial Intelligence, aimed at supporting research against **depression** through a fully verified NFT smart contract on the **Polygon blockchain**.

This file is the real diary of invisible bugs and concrete solutions. A tennis court where the match starts as Man vs AI, but ends as a winning doubles team.

---

## 🏆 1. Project Goal

- **ERC-1155 NFT Smart Contract verified on Polygon**
- Live minting available from [LHISA Frontend](https://marcellostanca.github.io/lhi-nft-frontend-new/)
- Fundraising for **medical research on depression**
- 6 months of real debugging, testing, failing, fixing, and winning
- Developed by a non-programmer, driven by Galileo’s “sensata esperienza” (reasoned experience)

---

## ⚠️ 2. The Invisible Errors

Here’s why **hundreds of developers give up on smart contract verification**, even when the code is correct:

### ❌ Error #1 – SPDX or `pragma` misplaced in the flatten
The flattened file must include:
- One single line `// SPDX-License-Identifier: MIT` **as the very first line**
- Followed **immediately** by `pragma solidity ^0.8.23;` or your specific version
- All other duplicates of SPDX or pragma must be deleted

### ❌ Error #2 – Incomplete ABI copy-paste
If you copy the ABI from an AI tool (like Gemini) and paste it into `nano` (Linux terminal), you may lose **19 invisible characters**, often `{}` brackets around dependencies.  
✅ Solution: First paste the ABI into **Notepad (Windows)**, verify character count, then copy into `nano`.

### ❌ Error #3 – Bytecode mismatch
The `solidity` version must match exactly across:
- Your contract file (`pragma solidity`)
- Your `hardhat.config.js`
- Your `deploy.js`
- The dropdown selection on PolygonScan

> 🎾 **Marcello's Advice:** If your Hardhat build reports `EVM: paris`, do **not select `shanghai`** on PolygonScan—even if it looks like the “correct” choice. Always match your local deployment version.

### ❌ Error #4 – Updatability not declared
Even if you coded `setURI()` or `setCID()`, you **won’t be able to update the NFT’s metadata on IPFS** unless you declared the contract as *upgradable* during verification.

> 💡 Best Practice: If you want the ability to update metadata, check **“yes”** for “Is your contract upgradeable?” during verification.

### ❌ Error #5 – ABI must NOT start with `0x`
When pasting the ABI into the verification form, **do NOT prepend it with `0x`**.  
That prefix applies only to **bytecode**, not to ABI in JSON format.

---

## 💥 3. Coming Soon: The Book! 🎾📘

Everything you’ve read in this tutorial—discoveries, failures, insights, and real breakthroughs—will be featured in the upcoming book:

> **🎾 _LHISA – The Perfect Shot_**  
> _Human + AI Beyond the Net: The true story of a smart contract fighting depression_

📘 Written by **Marcello Stanca**  
📣 Published by **Giacomo Bruno**  
📅 Coming soon – and also as an NFT edition!

👉 This will be the world’s first **technical novel** that reveals the **human journey inside blockchain**, where the toughest bugs become breakthroughs.

---

## 💬 4. Join the Community

🔗 Head to [**Discussions**](https://github.com/MarcelloStanca/LHISA-lecce-Italy-salento/discussions)  
Ask questions about Solidity, Hardhat, debugging, or depression research.

> “Every bug we solved is now a gift to those just beginning.”  
> — Marcello Stanca

---

## 🚀 5. This Project Is Just the Beginning

LHISA is the first step. Every NFT minted supports research. Every line of code now helps others.

The next perfect shot?  
**Could be yours.**
