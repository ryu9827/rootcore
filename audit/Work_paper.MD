# MOTHERSHIP Work paper
## ./contracts

[CrowdsaleController.sol](/contracts/CrowdsaleController.sol)
```
.----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                                                    D:\Blockchain-Solidity\rootcore-Audit\contracts\CrowdsaleController.sol
        |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|      Contract       |               Function               | Visibility | Constant | Returns |                                  Modifiers                                   | Static Ana | Coverage | Func Ana |
|---------------------|--------------------------------------|------------|----------|---------|------------------------------------------------------------------------------|------------|----------|----------|
| CrowdsaleController | CrowdsaleController(uint256,address) | public     | false    |         | SmartTokenController,validAddress,earlierThan                                | [√]        | [√]      | [√]      |
| CrowdsaleController | computeReturn(uint256)               | public     | true     | uint256 |                                                                              | [√]        | [√]      | [√]      |
| CrowdsaleController | upadateContributorsCount(uint256)    | private    | false    |         |                                                                              | [√]        | [√]      | [√]      |
| CrowdsaleController | addToWhitelist(address)              | public     | false    | added   | managerOnly                                                                  | [√]        | [√]      | [√]      |
| CrowdsaleController | removeFromWhitelist(address)         | public     | false    | added   | managerOnly                                                                  | [√]        | [√]      | [√]      |
| CrowdsaleController | contributeETH()                      | public     | false    | amount  | payable,between,whenNotPaused,maxAccountContributionNotReached               | [√]        | [√]      | [√]      |
| CrowdsaleController | contributePreSale()                  | public     | false    | amount  | payable,between,whenNotPaused,validatePresaleMinPrice,validatePresaleAddress | [√]        | [√]      | [√]      |
| CrowdsaleController | contributeFiat(address,uint256)      | public     | false    | amount  | payable,managerOnly,between,whenNotPaused                                    | [√]        | [√]      | [√]      |
| CrowdsaleController | processContribution()                | private    | false    | amount  | active,etherSoftCapNotReached,etherCapNotReached,validGasPrice               | [√]        | [√]      | [√]      |
| CrowdsaleController | ()                                   | public     | false    |         | payable                                                                      | [√]        | [√]      | [√]      |
'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
```

[ERC20Token.sol](/contracts/ERC20Token.sol)

```
.--------------------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                                      contracts/ERC20Token.sol                                                                                            |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  Contract  |               Function                | Visibility | Constant | Returns |         Modifiers         | Static Analysis | Test Coverage | Functional Analysis |
|------------|---------------------------------------|------------|----------|---------|---------------------------|-----------------|---------------|---------------------|
| ERC20Token | ERC20Token(string,string,uint8)       | public     | false    |         |                           | [√]             | [√]           | [√]                 |
| ERC20Token | transfer(address,uint256)             | public     | false    | success | validAddress              | [√]             | [√]           | [√]                 |
| ERC20Token | transferFrom(address,address,uint256) | public     | false    | success | validAddress,validAddress | [√]             | [√]           | [√]                 |
| ERC20Token | approve(address,uint256)              | public     | false    | success | validAddress              | [√]             | [√]           | [√]                 |
'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
```
[Managed.sol](/contracts/Managed.sol)
```
.------------------------------------------------------------------------------------------------------------------------------------------------.
|                                          contracts/Managed.sol                                                                                 |
|------------------------------------------------------------------------------------------------------------------------------------------------|
| Contract |          Function           | Visibility | Constant | Returns |  Modifiers  | Static Analysis | Test Coverage | Functional Analysis |
|----------|-----------------------------|------------|----------|---------|-------------|-----------------|---------------|---------------------|
| Managed  | Managed()                   | public     | false    |         |             | [√]             | [√]           | [√]                 |
| Managed  | transferManagement(address) | public     | false    |         | managerOnly | [√]             | [√]           | [√]                 |
| Managed  | acceptManagement()          | public     | false    |         |             | [√]             | [√]           | [√]                 |
'------------------------------------------------------------------------------------------------------------------------------------------------'

```
[Owned.sol](/contracts/Owned.sol)
```
.---------------------------------------------------------------------------------------------------------------------------------------------.
|                                          contracts/Owned.sol                                                                                |
|---------------------------------------------------------------------------------------------------------------------------------------------|
| Contract |          Function          | Visibility | Constant | Returns | Modifiers | Static Analysis | Test Coverage | Functional Analysis |
|----------|----------------------------|------------|----------|---------|-----------|-----------------|---------------|---------------------|
| Owned    | Owned()                    | public     | false    |         |           | [√]             | [√]           | [√]                 |
| Owned    | transferOwnership(address) | public     | false    |         | ownerOnly | [√]             | [√]           | [√]                 |
| Owned    | acceptOwnership()          | public     | false    |         |           | [√]             | [√]           | [√]                 |
'---------------------------------------------------------------------------------------------------------------------------------------------'
```
[Pausable.sol](/contracts/Pausable.sol)
```
.--------------------------------------------------------------------------------------------------------------------------------------------.
|                                        contracts/Pausable.sol                                                                              |
|--------------------------------------------------------------------------------------------------------------------------------------------|
| Contract | Function  | Visibility | Constant | Returns |         Modifiers         | Static Analysis | Test Coverage | Functional Analysis |
|----------|-----------|------------|----------|---------|---------------------------|-----------------|---------------|---------------------|
| Pausable | pause()   | public     | false    | bool    | managerOnly,whenNotPaused | [√]             | [√]           | [√]                 |
| Pausable | unpause() | public     | false    | bool    | managerOnly,whenPaused    | [√]             | [√]           | [√]                 |
'--------------------------------------------------------------------------------------------------------------------------------------------'

```
[SmartToken.sol](/contracts/SmartToken.sol)
```
.-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                                        contracts/SmartToken.sol                                                                                               |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  Contract  |               Function                | Visibility | Constant | Returns |           Modifiers            | Static Analysis | Test Coverage | Functional Analysis |
|------------|---------------------------------------|------------|----------|---------|--------------------------------|-----------------|---------------|---------------------|
| SmartToken | SmartToken(string,string,uint8)       | public     | false    |         | ERC20Token                     | [√]             | [√]           | [√]                 |
| SmartToken | disableTransfers(bool)                | public     | false    |         | ownerOnly                      | [√]             | [√]           | [√]                 |
| SmartToken | issue(address,uint256)                | public     | false    |         | ownerOnly,validAddress,notThis | [√]             | [√]           | [√]                 |
| SmartToken | destroy(address,uint256)              | public     | false    |         |                                | [√]             | [√]           | [√]                 |
| SmartToken | transfer(address,uint256)             | public     | false    | success | transfersAllowed               | [√]             | [√]           | [√]                 |
| SmartToken | transferFrom(address,address,uint256) | public     | false    | success | transfersAllowed               | [√]             | [√]           | [√]                 |
'-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'

```
[SmartTokenController.sol](/contracts/SmartTokenController.sol)
```
.--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                                    contracts/SmartTokenController.sol                                                                                          |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|       Contract       |                    Function                    | Visibility | Constant | Returns |  Modifiers   | Static Analysis | Test Coverage | Functional Analysis |
|----------------------|------------------------------------------------|------------|----------|---------|--------------|-----------------|---------------|---------------------|
| SmartTokenController | SmartTokenController(ISmartToken)              | public     | false    |         | validAddress | [√]             | [√]           | [√]                 |
| SmartTokenController | transferTokenOwnership(address)                | public     | false    |         | ownerOnly    | [√]             | [√]           | [√]                 |
| SmartTokenController | acceptTokenOwnership()                         | public     | false    |         | ownerOnly    | [√]             | [√]           | [√]                 |
| SmartTokenController | disableTokenTransfers(bool)                    | public     | false    |         | ownerOnly    | [√]             | [√]           | [√]                 |
| SmartTokenController | withdrawFromToken(IERC20Token,address,uint256) | public     | false    |         | ownerOnly    | [√]             | [√]           | [√]                 |
'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'

```
[TokenHolder.sol](/contracts/TokenHolder.sol)
```
.---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                                                  contracts/TokenHolder.sol                                                                                                        |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  Contract   |                  Function                   | Visibility | Constant | Returns |                  Modifiers                  | Static Analysis | Test Coverage | Functional Analysis |
|-------------|---------------------------------------------|------------|----------|---------|---------------------------------------------|-----------------|---------------|---------------------|
| TokenHolder | TokenHolder()                               | public     | false    |         |                                             | [√]             | [√]           | [√]                 |
| TokenHolder | withdrawTokens(IERC20Token,address,uint256) | public     | false    |         | ownerOnly,validAddress,validAddress,notThis | [√]             | [√]           | [√]                 |
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
```


[Utils.sol](/contracts/Utils.sol)
```
.-------------------------------------------------------------------------------------------------------------------------------------------.
|                                         contracts/Utils.sol                                                                               |
|-------------------------------------------------------------------------------------------------------------------------------------------|
| Contract |         Function         | Visibility | Constant | Returns | Modifiers | Static Analysis | Test Coverage | Functional Analysis |
|----------|--------------------------|------------|----------|---------|-----------|-----------------|---------------|---------------------|
| Utils    | Utils()                  | public     | false    |         |           | [√]             | [√]           | [√]                 |
| Utils    | safeAdd(uint256,uint256) | internal   | false    | uint256 |           | [√]             | [√]           | [√]                 |
| Utils    | safeSub(uint256,uint256) | internal   | false    | uint256 |           | [√]             | [√]           | [√]                 |
| Utils    | safeMul(uint256,uint256) | internal   | false    | uint256 |           | [√]             | [√]           | [√]                 |
'-------------------------------------------------------------------------------------------------------------------------------------------'

```

## ./contracts/helpers
[Migrations.sol](/contracts/helpers/Migrations.sol) 
```
.----------------------------------------------------------------------------------------------------------------------------------------.
|                                 contracts/helpers/Migrations.sol                                                                       |
|----------------------------------------------------------------------------------------------------------------------------------------|
|  Contract  |      Function      | Visibility | Constant | Returns | Modifiers  | Static Analysis | Test Coverage | Functional Analysis |
|------------|--------------------|------------|----------|---------|------------|-----------------|---------------|---------------------|
| Migrations | Migrations()       | public     | false    |         |            | [√]             | [√]           | [√]                 |
| Migrations | setCompleted(uint) | public     | false    |         | restricted | [√]             | [√]           | [√]                 |
| Migrations | upgrade(address)   | public     | false    |         | restricted | [√]             | [√]           | [√]                 |
'----------------------------------------------------------------------------------------------------------------------------------------'
```

[TestCrowdsaleController.sol](/contracts/helpers/TestCrowdsaleController.sol) 
```
.--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                                    contracts/helpers/TestCrowdsaleController.sol                                                                                           |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|        Contract         |                     Function                     | Visibility | Constant | Returns |      Modifiers      | Static Analysis | Test Coverage | Functional Analysis |
|-------------------------|--------------------------------------------------|------------|----------|---------|---------------------|-----------------|---------------|---------------------|
| TestCrowdsaleController | TestCrowdsaleController(uint256,address,uint256) | public     | false    |         | CrowdsaleController | [√]             | [√]           | [√]                 |
'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
```

[TestERC20Token.sol](/contracts/helpers/TestERC20Token.sol) 
```
.---------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                          contracts/helpers/TestERC20Token.sol                                                                                 |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
|    Contract    |               Function                | Visibility | Constant | Returns | Modifiers  | Static Analysis | Test Coverage | Functional Analysis |
|----------------|---------------------------------------|------------|----------|---------|------------|-----------------|---------------|---------------------|
| TestERC20Token | TestERC20Token(string,string,uint256) | public     | false    |         | ERC20Token | [√]             | [√]           | [√]                 |
'---------------------------------------------------------------------------------------------------------------------------------------------------------------'
```

[TestUtils.sol](/contracts/helpers/TestUtils.sol) 
```
.------------------------------------------------------------------------------------------------------------------------------------------------.
|                                     contracts/helpers/TestUtils.sol                                                                            |
|------------------------------------------------------------------------------------------------------------------------------------------------|
| Contract  |           Function           | Visibility | Constant | Returns | Modifiers | Static Analysis | Test Coverage | Functional Analysis |
|-----------|------------------------------|------------|----------|---------|-----------|-----------------|---------------|---------------------|
| TestUtils | TestUtils()                  | public     | false    |         |           | [√]             | [√]           | [√]                 |
| TestUtils | testSafeAdd(uint256,uint256) | public     | true     | uint256 |           | [√]             | [√]           | [√]                 |
| TestUtils | testSafeSub(uint256,uint256) | public     | true     | uint256 |           | [√]             | [√]           | [√]                 |
| TestUtils | testSafeMul(uint256,uint256) | public     | true     | uint256 |           | [√]             | [√]           | [√]                 |
'------------------------------------------------------------------------------------------------------------------------------------------------'
```
