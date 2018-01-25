IERC20Token.sol
contract IERC20Token

  l.8 name()
  l.9 symbol()
  l.10 decimals()
  l.11 decimals() function shadows an existing declaration & state mutibility
  can be restricted to pure

  l.12 balanceOf()
  l.13 allowance() state mutibility can be restricted to pure

This is happening because you're declaring string a and string b at the start of your contract, then using those same variable names as arguments in your function. If your only purpose is to use them within that function, then you don't need to declare them outside of the function.

Your function doesn't need to read from storage, since the function is getting all its variables from its arguments. So you can set it as pure instead of view. (view would be used for, say, contract getters, where you need to access storage. pure is for utility methods that don't need to access storage, only its own function parameters).

IOwned.sol
contract IOwned
  l.8 owner() state mutibility can be restricted to pure

ISmartToken.sol
contract ISmartToken
  l.2 import './ITokenHolder.sol'
  l.3 import './IERC20Token.sol'  should use ""

ITokenHolder.sol
contract ITokenHolder
  l.2 import './IOwned.sol'
  l.3 import './IERC20Token.sol' should use ""
