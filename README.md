# ValorantPoints ERC

## Description
The **ValorantPoints** contract is an ERC project designed for a Valorant-themed rewards system. It allows for the creation, transfer, and removal of custom tokens named Valorant Points (VLP). Owners can mint new tokens, and users can burn or gift tokens.

# Steps to Deploy and Test the ValorantPoints 

## 1. Open Remix
Go to the [Remix IDE](https://remix.ethereum.org/) in your web browser. Remix is an open-source Solidity IDE that allows you to write, deploy, and test Ethereum smart contracts.

---

## 2. Create a New Solidity File
- On the left-hand side of Remix, in the File Explorer, click the "contracts" folder, and then click "New File".  
- Name your file `ValorantPoints.sol`.  
- Copy and paste the `ValorantPoints` contract code into this newly created file.

---

## 3. Compile the Contract
1. Click on the **Solidity Compiler** tab.
2. Ensure the compiler version is set to `0.8.23`.
3. Click the "Compile ValorantPoints.sol" button.
4. If everything is correct, the contract should compile without errors.

---

## 4. Deploy the Contract
1. Navigate to the **Deploy & Run Transactions** tab (left sidebar).
2. Under "Contract", select `ValorantPoints` from the dropdown (it should be listed if the contract compiled successfully).
3. Click **Deploy** to deploy the contract.

---

## 6. Interacting with the Contract
Once deployed, the contract will appear under **Deployed Contracts** in the **Deploy & Run Transactions** tab. You can interact with it using Remix's auto-generated interface:

### Mint Valorant Points (claim):
- In the **claimValorantPoints** input field:
  - Enter the recipient's address and the amount of tokens (points) to mint.
- Click **transact** to mint Valorant Points to the specified address.

### Burn Valorant Points (trash):
- In the **trashValorantPoints** input field:
  - Enter the amount of tokens (points) you want to burn.
- Click **transact** to burn your tokens.

### Transfer Valorant Points (gift):
- In the **giftValorantPoints** input field:
  - Enter the recipient's address and the amount of tokens (points) to transfer.
- Click **transact** to gift Valorant Points to another address.

## Help
For common issues:
- **Insufficient Token Balance**: Ensure you have enough tokens before attempting to transfer or burn them.
- **Contract Interaction**: Use a supported wallet or platform like Remix or HardHat to interact with the contract.

## Authors

Eymard Julian Jimeno | 202110545@fit.edu.ph
