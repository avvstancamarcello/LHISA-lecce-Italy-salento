# ❗ The Invisible Error That Destroys Your Smart Contract Verification

### ✍️ A Real Discovery by Marcello Stanca – LHISA Project Creator  
> Shared publicly to help thousands of developers avoid the trap.

---

## 🧠 Context: What Is the Invisible Error?

You've successfully flattened your Solidity code.  
You've uploaded your ABI, chosen the correct Solidity version, and entered the constructor arguments.  
Everything *seems* correct. But the verification **fails**, repeatedly.  
PolygonScan (or Etherscan) gives no useful feedback. Just... "Bytecode Mismatch."

### So what went wrong?

---

## 🔍 The Forgotten Details That Break Everything

Here are the **REAL reasons** behind 90% of failed smart contract verifications – hidden issues that even AI assistants don’t catch:

---

### ✅ 1. The SPDX and Solidity Declaration Must Be First (and Only Once!)

In your `flattened.sol` file:
- The **first line** must be:  
  ```solidity
  // SPDX-License-Identifier: MIT

The second line must be:

solidity
Copia
Modifica
pragma solidity ^0.8.23;
❗ All other SPDX and pragma declarations must be deleted.
Keep only one of each, at the very top.

✅ 2. Solidity Version Must Be Synchronized in 3 Places
You must use exactly the same Solidity version in:

flattened.sol (as above)

hardhat.config.js

deploy.js (the script calling npx hardhat run scripts/deploy.js)

Then, on the PolygonScan Verification page, choose that exact version.

🔴 Do not trust the automatic suggestions or dropdown menus showing other versions like “Shanghai” – even if they look compatible.
✅ Use “Paris” or the actual version shown in your local terminal when running npx hardhat compile.

✅ 3. Use the Right EVM Version (even if it looks wrong!)
During verification, you’ll see a dropdown for EVM version.
Even if the UI shows "Shanghai" as matching, choose the one used by your local Hardhat compiler – usually:

bash
Copia
Modifica
EVM Version: Paris
This detail is critical and was the main cause of failure in 29+ of my tests.

✅ 4. Beware of Invisible Copy/Paste Errors
When you copy ABI or constructor arguments from AI like Gemini or Copilot, sometimes:

Certain braces {} or characters go missing during the copy-paste to Linux nano.

Use sha256sum to verify the integrity of the file after pasting.

Pro tip: Copy from Gemini into Windows Notepad, check character count, then paste into nano.

✅ 5. Do NOT Prefix ABI with 0x When Pasting
When PolygonScan asks for the ABI or constructor arguments:

❌ Do not add 0x before the ABI or the encoded parameters.

✅ Paste the raw JSON or hex string, as it appears in your artifacts or Hardhat logs.

✅ 6. Permissions to Update Metadata Must Be Explicit
If your contract includes a CID (image on IPFS), and you want to update it in the future, make sure:

Your contract logic allows the owner to update the URI or CID.

You explicitly declare this in the constructor or public functions.

On PolygonScan, you set the contract to be "Upgradeable" if needed.

Otherwise, you will lose the ability to update even if your logic supports it.

🧠 Conclusion: 6 Secrets to Hit the Target
✅ SPDX on first line
✅ Single pragma on second line
✅ Consistent Solidity version everywhere
✅ Correct EVM version (e.g., Paris)
✅ No 0x in ABI or constructor params
✅ Explicit updatability of CID for IPFS links

📘 These are just some of the secrets revealed in the upcoming book:

🎾 La Pallina Perfetta – Oltre la Rete
From despair to verified code: how a lawyer and AI built a smart contract for mental health research.

Stay tuned. The perfect rally continues.
