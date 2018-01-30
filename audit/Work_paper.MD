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
| CrowdsaleController | CrowdsaleController(uint256,address) | public     | false    |         | SmartTokenController,validAddress,earlierThan                                | [x]        | [x]      | [x]      |
| CrowdsaleController | computeReturn(uint256)               | public     | true     | uint256 |                                                                              | [x]        | [x]      | [x]      |
| CrowdsaleController | upadateContributorsCount(uint256)    | private    | false    |         |                                                                              | [x]        | [x]      | [x]      |
| CrowdsaleController | addToWhitelist(address)              | public     | false    | added   | managerOnly                                                                  | [x]        | [x]      | [x]      |
| CrowdsaleController | removeFromWhitelist(address)         | public     | false    | added   | managerOnly                                                                  | [x]        | [x]      | [x]      |
| CrowdsaleController | contributeETH()                      | public     | false    | amount  | payable,between,whenNotPaused,maxAccountContributionNotReached               | [x]        | [x]      | [x]      |
| CrowdsaleController | contributePreSale()                  | public     | false    | amount  | payable,between,whenNotPaused,validatePresaleMinPrice,validatePresaleAddress | [x]        | [x]      | [x]      |
| CrowdsaleController | contributeFiat(address,uint256)      | public     | false    | amount  | payable,managerOnly,between,whenNotPaused                                    | [x]        | [x]      | [x]      |
| CrowdsaleController | processContribution()                | private    | false    | amount  | active,etherSoftCapNotReached,etherCapNotReached,validGasPrice               | [x]        | [x]      | [x]      |
| CrowdsaleController | ()                                   | public     | false    |         | payable                                                                      | [x]        | [x]      | [x]      |
'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
```

[ERC20Token.sol](/contracts/ERC20Token.sol)

```
.--------------------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                                      contracts/ERC20Token.sol                                                                                            |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  Contract  |               Function                | Visibility | Constant | Returns |         Modifiers         | Static Analysis | Test Coverage | Functional Analysis |
|------------|---------------------------------------|------------|----------|---------|---------------------------|-----------------|---------------|---------------------|
| ERC20Token | ERC20Token(string,string,uint8)       | public     | false    |         |                           | [x]             | [x]           | [x]                 |
| ERC20Token | transfer(address,uint256)             | public     | false    | success | validAddress              | [x]             | [x]           | [x]                 |
| ERC20Token | transferFrom(address,address,uint256) | public     | false    | success | validAddress,validAddress | [x]             | [x]           | [x]                 |
| ERC20Token | approve(address,uint256)              | public     | false    | success | validAddress              | [x]             | [x]           | [x]                 |
'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
```
[Managed.sol](/contracts/Managed.sol)
```
.------------------------------------------------------------------------------------------------------------------------------------------------.
|                                          contracts/Managed.sol                                                                                 |
|------------------------------------------------------------------------------------------------------------------------------------------------|
| Contract |          Function           | Visibility | Constant | Returns |  Modifiers  | Static Analysis | Test Coverage | Functional Analysis |
|----------|-----------------------------|------------|----------|---------|-------------|-----------------|---------------|---------------------|
| Managed  | Managed()                   | public     | false    |         |             | [x]             | [x]           | [x]                 |
| Managed  | transferManagement(address) | public     | false    |         | managerOnly | [x]             | [x]           | [x]                 |
| Managed  | acceptManagement()          | public     | false    |         |             | [x]             | [x]           | [x]                 |
'------------------------------------------------------------------------------------------------------------------------------------------------'

```
[Owned.sol](/contracts/Owned.sol)
```
.---------------------------------------------------------------------------------------------------------------------------------------------.
|                                          contracts/Owned.sol                                                                                |
|---------------------------------------------------------------------------------------------------------------------------------------------|
| Contract |          Function          | Visibility | Constant | Returns | Modifiers | Static Analysis | Test Coverage | Functional Analysis |
|----------|----------------------------|------------|----------|---------|-----------|-----------------|---------------|---------------------|
| Owned    | Owned()                    | public     | false    |         |           | [x]             | [x]           | [x]                 |
| Owned    | transferOwnership(address) | public     | false    |         | ownerOnly | [x]             | [x]           | [x]                 |
| Owned    | acceptOwnership()          | public     | false    |         |           | [x]             | [x]           | [x]                 |
'---------------------------------------------------------------------------------------------------------------------------------------------'
```
[Pausable.sol](/contracts/Pausable.sol)
```
.--------------------------------------------------------------------------------------------------------------------------------------------.
|                                        contracts/Pausable.sol                                                                              |
|--------------------------------------------------------------------------------------------------------------------------------------------|
| Contract | Function  | Visibility | Constant | Returns |         Modifiers         | Static Analysis | Test Coverage | Functional Analysis |
|----------|-----------|------------|----------|---------|---------------------------|-----------------|---------------|---------------------|
| Pausable | pause()   | public     | false    | bool    | managerOnly,whenNotPaused | [x]             | [x]           | [x]                 |
| Pausable | unpause() | public     | false    | bool    | managerOnly,whenPaused    | [x]             | [x]           | [x]                 |
'--------------------------------------------------------------------------------------------------------------------------------------------'

```
[SmartToken.sol](/contracts/SmartToken.sol)
```
.-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                                        contracts/SmartToken.sol                                                                                               |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  Contract  |               Function                | Visibility | Constant | Returns |           Modifiers            | Static Analysis | Test Coverage | Functional Analysis |
|------------|---------------------------------------|------------|----------|---------|--------------------------------|-----------------|---------------|---------------------|
| SmartToken | SmartToken(string,string,uint8)       | public     | false    |         | ERC20Token                     | [x]             | [x]           | [x]                 |
| SmartToken | disableTransfers(bool)                | public     | false    |         | ownerOnly                      | [x]             | [x]           | [x]                 |
| SmartToken | issue(address,uint256)                | public     | false    |         | ownerOnly,validAddress,notThis | [x]             | [x]           | [x]                 |
| SmartToken | destroy(address,uint256)              | public     | false    |         |                                | [x]             | [x]           | [x]                 |
| SmartToken | transfer(address,uint256)             | public     | false    | success | transfersAllowed               | [x]             | [x]           | [x]                 |
| SmartToken | transferFrom(address,address,uint256) | public     | false    | success | transfersAllowed               | [x]             | [x]           | [x]                 |
'-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'

```
[SmartTokenController.sol](/contracts/SmartTokenController.sol)
```
.--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                                    contracts/SmartTokenController.sol                                                                                          |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|       Contract       |                    Function                    | Visibility | Constant | Returns |  Modifiers   | Static Analysis | Test Coverage | Functional Analysis |
|----------------------|------------------------------------------------|------------|----------|---------|--------------|-----------------|---------------|---------------------|
| SmartTokenController | SmartTokenController(ISmartToken)              | public     | false    |         | validAddress | [x]             | [x]           | [x]                 |
| SmartTokenController | transferTokenOwnership(address)                | public     | false    |         | ownerOnly    | [x]             | [x]           | [x]                 |
| SmartTokenController | acceptTokenOwnership()                         | public     | false    |         | ownerOnly    | [x]             | [x]           | [x]                 |
| SmartTokenController | disableTokenTransfers(bool)                    | public     | false    |         | ownerOnly    | [x]             | [x]           | [x]                 |
| SmartTokenController | withdrawFromToken(IERC20Token,address,uint256) | public     | false    |         | ownerOnly    | [x]             | [x]           | [x]                 |
'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'

```
[TokenHolder.sol](/contracts/TokenHolder.sol)
```
.---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                                                  contracts/TokenHolder.sol                                                                                                        |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  Contract   |                  Function                   | Visibility | Constant | Returns |                  Modifiers                  | Static Analysis | Test Coverage | Functional Analysis |
|-------------|---------------------------------------------|------------|----------|---------|---------------------------------------------|-----------------|---------------|---------------------|
| TokenHolder | TokenHolder()                               | public     | false    |         |                                             | [x]             | [x]           | [x]                 |
| TokenHolder | withdrawTokens(IERC20Token,address,uint256) | public     | false    |         | ownerOnly,validAddress,validAddress,notThis | [x]             | [x]           | [x]                 |
'---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
```


[Utils.sol](/contracts/Utils.sol)
```
.-------------------------------------------------------------------------------------------------------------------------------------------.
|                                         contracts/Utils.sol                                                                               |
|-------------------------------------------------------------------------------------------------------------------------------------------|
| Contract |         Function         | Visibility | Constant | Returns | Modifiers | Static Analysis | Test Coverage | Functional Analysis |
|----------|--------------------------|------------|----------|---------|-----------|-----------------|---------------|---------------------|
| Utils    | Utils()                  | public     | false    |         |           | [x]             | [x]           | [x]                 |
| Utils    | safeAdd(uint256,uint256) | internal   | false    | uint256 |           | [x]             | [x]           | [x]                 |
| Utils    | safeSub(uint256,uint256) | internal   | false    | uint256 |           | [x]             | [x]           | [x]                 |
| Utils    | safeMul(uint256,uint256) | internal   | false    | uint256 |           | [x]             | [x]           | [x]                 |
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
| Migrations | Migrations()       | public     | false    |         |            | [x]             | [x]           | [x]                 |
| Migrations | setCompleted(uint) | public     | false    |         | restricted | [x]             | [x]           | [x]                 |
| Migrations | upgrade(address)   | public     | false    |         | restricted | [x]             | [x]           | [x]                 |
'----------------------------------------------------------------------------------------------------------------------------------------'
```

[TestCrowdsaleController.sol](/contracts/helpers/TestCrowdsaleController.sol) 
```
.--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                                    contracts/helpers/TestCrowdsaleController.sol                                                                                           |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|        Contract         |                     Function                     | Visibility | Constant | Returns |      Modifiers      | Static Analysis | Test Coverage | Functional Analysis |
|-------------------------|--------------------------------------------------|------------|----------|---------|---------------------|-----------------|---------------|---------------------|
| TestCrowdsaleController | TestCrowdsaleController(uint256,address,uint256) | public     | false    |         | CrowdsaleController | [x]             | [x]           | [x]                 |
'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
```

[TestERC20Token.sol](/contracts/helpers/TestERC20Token.sol) 
```
.---------------------------------------------------------------------------------------------------------------------------------------------------------------.
|                                          contracts/helpers/TestERC20Token.sol                                                                                 |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
|    Contract    |               Function                | Visibility | Constant | Returns | Modifiers  | Static Analysis | Test Coverage | Functional Analysis |
|----------------|---------------------------------------|------------|----------|---------|------------|-----------------|---------------|---------------------|
| TestERC20Token | TestERC20Token(string,string,uint256) | public     | false    |         | ERC20Token | [x]             | [x]           | [x]                 |
'---------------------------------------------------------------------------------------------------------------------------------------------------------------'
```

[TestUtils.sol](/contracts/helpers/TestUtils.sol) 
```
.------------------------------------------------------------------------------------------------------------------------------------------------.
|                                     contracts/helpers/TestUtils.sol                                                                            |
|------------------------------------------------------------------------------------------------------------------------------------------------|
| Contract  |           Function           | Visibility | Constant | Returns | Modifiers | Static Analysis | Test Coverage | Functional Analysis |
|-----------|------------------------------|------------|----------|---------|-----------|-----------------|---------------|---------------------|
| TestUtils | TestUtils()                  | public     | false    |         |           | [x]             | [x]           | [x]                 |
| TestUtils | testSafeAdd(uint256,uint256) | public     | true     | uint256 |           | [x]             | [x]           | [x]                 |
| TestUtils | testSafeSub(uint256,uint256) | public     | true     | uint256 |           | [x]             | [x]           | [x]                 |
| TestUtils | testSafeMul(uint256,uint256) | public     | true     | uint256 |           | [x]             | [x]           | [x]                 |
'------------------------------------------------------------------------------------------------------------------------------------------------'
```
