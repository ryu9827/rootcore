    ✓ verifies the base storage values after construction (5057826 gas)
    ✓ should throw when attempting to construct a controller with start time that has already passed (6721975 gas)
    ✓ should throw when attempting to construct a controller without beneficiary address (6721975 gas)
    ✓ verifies that computeReturn returns a valid amount (5159599 gas)
    ✓ verifies that account 0 and 4 are on the whitelist (5159599 gas)
    ✓ verifies that 1 ether equals 1000 tokens (5159599 gas)
    ✓ verifies that account3 can be added to whitelist (5203999 gas)
    ✓ verifies that account3 can be removed to whitelist (5188823 gas)
    ✓ should throw when attempting to add account to whitelist by non-manager (11881574 gas)
    ✓ verifies that computeReturn returns the same amount as contributeETH (5344179 gas)
    ✓ verifies that computeReturn returns the same amount as contributePreSale (5317183 gas)
    ✓ verifies balances and total eth contributed after contributing ether (5319179 gas)
    ✓ verifies number of contributors after multiple contributions (5498144 gas)
    ✓ verifies that whitelist account can contribute more than maximum account limit (5319527 gas)
    ✓ should throw when attempting to contribute ether before the crowdsale has started (11881574 gas)
    ✓ should throw when attempting to contribute presale ether before the crowdsale has started (11881574 gas)
    ✓ should throw when attempting to contribute presale while sale is in progress (11881574 gas)
    ✓ should throw when attempting to contribute ether after the crowdsale has finished (11881574 gas)
    ✓ should throw when attempting to contribute ether with a large gas price (11881574 gas)
    ✓ verifies balances and total eth contributed after contributing through presale (5317183 gas)
    ✓ should throw when attempting to contributing through presale while the controller is not active (11792774 gas)
    ✓ should throw when attempting to contributing through presale after the crowdsale has started (11881574 gas)
    ✓ should throw when attempting to contributing through presale after the crowdsale has finished (11881574 gas)
    ✓ should throw when attempting to contributing through presale with large gas price (11881574 gas)
    ✓ should throw when attempting to contributing through presale with unauthorized account (11881574 gas)
    ✓ should throw when attempting to contributing through presale with small amount (11881574 gas)
    ✓ should throw when attempting to contributing with too large amount (11881574 gas)
    ✓ should throw when attempting to contribue with amount over the total cap by an approved account (no account limit) (11881574 gas)
    ✓ should throw when soft cap reached and trying to contribute with amount that would pass hard cap by an approved account (no account limit) (12046047 gas)
    ✓ should throw when soft cap reached and trying to contribute after grace period) (12046047 gas)
    ✓ verifies balances and total eth contributed after soft cap was reached but in "grace" period (5428197 gas)
    ✓ should throw when attempting to contributing with too large amount in two seperate transfers (12040680 gas)
    ✓ should throw when attempting to send Fiat contribution by non manager (11881574 gas)
    ✓ should throw when attempting to send Fiat contribution to a non valid address (11881574 gas)
    ✓ should throw when attempting to send Fiat contribution to a non valid amount (11881574 gas)
    ✓ should throw when attempting to send Fiat contribution when sale is not active (11881574 gas)
    ✓ verifies balances and total eth contributed after contributing Fiat (5284482 gas)
  Contract: ERC20Token

    ✓ verifies the token name after construction (1104177 gas)
    ✓ verifies the token symbol after construction (1104177 gas)
    ✓ verifies the balances after a transfer (1185536 gas)
    ✓ verifies that a transfer fires a Transfer event (1185536 gas)
    ✓ should throw when attempting to transfer more than the balance (7856216 gas)
    ✓ should throw when attempting to transfer to an invalid address (7856216 gas)
    ✓ verifies the allowance after an approval (1180040 gas)
    ✓ verifies that an approval fires an Approval event (1180040 gas)
    ✓ should throw when attempting to define allowance for an invalid address (7856216 gas)
    ✓ verifies the balances after transferring from another account (1238241 gas)
    ✓ verifies that transferring from another account fires a Transfer event (1238241 gas)
    ✓ verifies the new allowance after transferring from another account (1238241 gas)
    ✓ should throw when attempting to transfer from another account more than the allowance (7901951 gas)
    ✓ should throw when attempting to transfer from an invalid account (7901951 gas)
    ✓ should throw when attempting to transfer from to an invalid account (7901951 gas)
  Contract: Managed

    ✓ verifies the manager after construction (394934 gas)
    ✓ verifies the new manager after management transfer (458002 gas)
    ✓ verifies that management transfer fires an ManagerUpdate event (458002 gas)
    ✓ verifies that newManager is cleared after management transfer (458002 gas)
    ✓ verifies that no management transfer takes places before the new manager accepted it (438673 gas)
    ✓ verifies that only the manager can initiate management transfer (7116909 gas)
    ✓ verifies that the manager can cancel management transfer before the new manager accepted it (452403 gas)
  Contract: Migrations

    ✓ Verify the owner after construction (269607 gas)
    ✓ Verify the last completed migration after setComplete (311588 gas)
  Contract: Owned

    ✓ verifies the owner after construction (394742 gas)
    ✓ verifies the new owner after ownership transfer (457766 gas)
    ✓ verifies that ownership transfer fires an OwnerUpdate event (457766 gas)
    ✓ verifies that newOwner is cleared after ownership transfer (457766 gas)
    ✓ verifies that no ownership transfer takes places before the new owner accepted it (438481 gas)
    ✓ verifies that only the owner can initiate ownership transfer (7116717 gas)
    ✓ verifies that the owner can cancel ownership transfer before the new owner accepted it (452211 gas)
  Contract: Pausable

    ✓ verifies the manager after construction (554916 gas)
    ✓ should throw when non manager calls Pause function (7276891 gas)
    ✓ should throw when non manager calls unPause function when contract is paused (7320139 gas)
    ✓ verifies that manager can pause when not paused (598164 gas)
    ✓ should throw when manager calls Pause function when contract is paused (7320139 gas)
    ✓ verifies that manager can unpause when contract is paused (612243 gas)
    ✓ should throw when manager tries to unpause when contract is unpaused (7276891 gas)
  Contract: Utils

    ✓ verifies successful addition (183926 gas)
    ✓ should throw on addition overflow (183926 gas)
    ✓ verifies successful subtraction (183926 gas)
    ✓ should throw on subtraction with negative result (183926 gas)
    ✓ verifies successful multiplication (183926 gas)
    ✓ should throw on multiplication overflow (183926 gas)
  Contract: SmartToken

    ✓ verifies the token name, symbol and decimal units after construction (2094100 gas)
    ✓ should throw when attempting to construct a token with no name (6721975 gas)
    ✓ should throw when attempting to construct a token with no symbol (6721975 gas)
    ✓ verifies that the owner can disable & re-enable transfers (2149872 gas)
    ✓ should throw when a non owner attempts to disable transfers (8816075 gas)
    ✓ verifies that issue tokens updates the target balance and the total supply (2161475 gas)
    ✓ verifies that the owner can issue tokens (2161475 gas)
    ✓ verifies that the owner can issue tokens to his/her own account (2161475 gas)
    ✓ should throw when the owner attempts to issue tokens to an invalid address (8816075 gas)
    ✓ should throw when the owner attempts to issue tokens to the token address (8816075 gas)
    ✓ should throw when a non owner attempts to issue tokens (8816075 gas)
    ✓ verifies that destroy tokens updates the target balance and the total supply (2198838 gas)
    ✓ verifies that the owner can destroy tokens (2198838 gas)
    ✓ verifies that the owner can destroy tokens from his/her own account (2198580 gas)
    ✓ verifies that a holder can destroy tokens from his/her own account (2198838 gas)
    ✓ should throw when a non owner attempts to destroy tokens (8883450 gas)
    ✓ verifies the balances after a transfer (2213254 gas)
    ✓ should throw when attempting to transfer while transfers are disabled (8948777 gas)
    ✓ verifies the allowance after an approval (2207274 gas)
    ✓ should throw when attempting to transfer from while transfers are disabled (9001419 gas)
  Contract: SmartTokenController

    ✓ verifies the token address after construction (976113 gas)
    ✓ should throw when attempting to construct a controller with no token (6721975 gas)
    ✓ verifies that the owner can accept token ownership (3136005 gas)
    ✓ should throw when a non owner attempts to accept token ownership (9836279 gas)
    ✓ verifies that the owner can transfer token ownership (4180169 gas)
    ✓ should throw when the owner attempts to transfer token ownership while the controller is not active (10812392 gas)
    ✓ should throw when a non owner attempts to transfer token ownership (10834093 gas)
    ✓ verifies that the owner can disable / re-enable token transfers (3195331 gas)
    ✓ should throw when the owner attempts to disable token transfers while the controller is not active (9792188 gas)
    ✓ should throw when a non owner attempts to disable token transfers (9857980 gas)
    ✓ verifies that the owner can withdraw other tokens from the token (4349324 gas)
    ✓ should throw when the owner attempts to withdraw other tokens from the token while the controller is not active (10978044 gas)
    ✓ should throw when a non owner attempts to withdraw other tokens from the token (11043836 gas)
  Contract: TokenHolder

    ✓ verifies that the owner can withdraw tokens (1779875 gas)
    ✓ should throw when a non owner attempts to withdraw tokens (8446982 gas)
    ✓ should throw when attempting to withdraw tokens from an invalid ERC20 token address (8446982 gas)
    ✓ should throw when attempting to withdraw tokens to an invalid account address (8446982 gas)
    ✓ should throw when attempting to withdraw tokens to the holder address (8446982 gas)
    ✓ should throw when attempting to withdraw an amount greater than the holder balance (8446982 gas)
```
·------------------------------------------------------------------------------------------|----------------------------·
│                                           Gas                                            ·  Block limit: 6721975 gas  │
·······················································|···································|·····························
│  Methods                                             ·            21 gwei/gas            ·      1618.06 nzd/eth       │
····························|··························|···········|···········|···········|··············|··············
│  Contract                 ·  Method                  ·  Min      ·  Max      ·  Avg      ·  # calls     ·  nzd (avg)  │
····························|··························|···········|···········|···········|··············|··············
│  Pausable                 ·  acceptManagement        ·        -  ·        -  ·    19329  ·           3  ·       0.66  │
····························|··························|···········|···········|···········|··············|··············
│  Pausable                 ·  pause                   ·        -  ·        -  ·    43248  ·           4  ·       1.47  │
····························|··························|···········|···········|···········|··············|··············
│  Pausable                 ·  transferManagement      ·    13730  ·    43739  ·    38738  ·           6  ·       1.32  │
····························|··························|···········|···········|···········|··············|··············
│  Pausable                 ·  unpause                 ·        -  ·        -  ·    14079  ·           1  ·       0.48  │
····························|··························|···········|···········|···········|··············|··············
│  SmartToken               ·  approve                 ·    45671  ·    45735  ·    45716  ·          10  ·       1.55  │
····························|··························|···········|···········|···········|··············|··············
│  SmartToken               ·  destroy                 ·    37105  ·    37363  ·    37299  ·           4  ·       1.27  │
····························|··························|···········|···········|···········|··············|··············
│  SmartToken               ·  disableTransfers        ·    13612  ·    42160  ·    20749  ·           4  ·       0.71  │
····························|··························|···········|···········|···········|··············|··············
│  SmartToken               ·  issue                   ·    67375  ·    67439  ·    67396  ·          12  ·       2.29  │
····························|··························|···········|···········|···········|··············|··············
│  SmartToken               ·  transfer                ·    51167  ·    51715  ·    51286  ·          13  ·       1.74  │
····························|··························|···········|···········|···········|··············|··············
│  SmartToken               ·  transferFrom            ·    58201  ·    58558  ·    58290  ·           4  ·       1.98  │
····························|··························|···········|···········|···········|··············|··············
│  SmartTokenController     ·  acceptTokenOwnership    ·        -  ·        -  ·    21701  ·           8  ·       0.74  │
····························|··························|···········|···········|···········|··············|··············
│  SmartTokenController     ·  disableTokenTransfers   ·    14797  ·    44529  ·    29663  ·           2  ·       1.01  │
····························|··························|···········|···········|···········|··············|··············
│  SmartTokenController     ·  transferTokenOwnership  ·        -  ·        -  ·    46350  ·           1  ·       1.57  │
····························|··························|···········|···········|···········|··············|··············
│  SmartTokenController     ·  withdrawFromToken       ·        -  ·        -  ·    27463  ·           1  ·       0.93  │
····························|··························|···········|···········|···········|··············|··············
│  TestCrowdsaleController  ·  addToWhitelist          ·        -  ·        -  ·    44400  ·          67  ·       1.51  │
····························|··························|···········|···········|···········|··············|··············
│  TestCrowdsaleController  ·  contributeETH           ·    79385  ·   184580  ·   140439  ·           6  ·       4.77  │
····························|··························|···········|···········|···········|··············|··············
│  TestCrowdsaleController  ·  contributeFiat          ·        -  ·        -  ·   124883  ·           1  ·       4.24  │
····························|··························|···········|···········|···········|··············|··············
│  TestCrowdsaleController  ·  contributePreSale       ·        -  ·        -  ·   157584  ·           2  ·       5.35  │
····························|··························|···········|···········|···········|··············|··············
│  TestCrowdsaleController  ·  removeFromWhitelist     ·        -  ·        -  ·    29224  ·           1  ·       0.99  │
····························|··························|···········|···········|···········|··············|··············
│  TokenHolder              ·  acceptOwnership         ·        -  ·        -  ·    19285  ·           3  ·       0.66  │
····························|··························|···········|···········|···········|··············|··············
│  TokenHolder              ·  transferOwnership       ·    13730  ·    44091  ·    41950  ·          15  ·       1.43  │
····························|··························|···········|···········|···········|··············|··············
│  TokenHolder              ·  withdrawTokens          ·        -  ·        -  ·    54868  ·           1  ·       1.86  │
····························|··························|···········|···········|···········|··············|··············
│  Deployments                                         ·                                   ·  % of limit  ·             │
·······················································|···········|···········|···········|··············|··············
│  CrowdsaleController                                 ·  5056674  ·  5057826  ·  5056866  ·      75.2 %  ·     171.83  │
·······················································|···········|···········|···········|··············|··············
│  IERC20Token                                         ·   269607  ·  2094100  ·  1191687  ·      17.7 %  ·      40.49  │
·······················································|···········|···········|···········|··············|··············
│  TestCrowdsaleController                             ·        -  ·        -  ·  5070799  ·      75.4 %  ·     172.30  │
·······················································|···········|···········|···········|··············|··············
│  TestERC20Token                                      ·  1104177  ·  1134689  ·  1129795  ·      16.8 %  ·      38.39  │
·······················································|···········|···········|···········|··············|··············
│  TestUtils                                           ·        -  ·        -  ·   183926  ·       2.7 %  ·       6.25  │
·------------------------------------------------------|-----------|-----------|-----------|--------------|-------------·
```
  121 passing (8m)
