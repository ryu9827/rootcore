CrowdsaleController.sol
contract CrowdsaleController
  l.2 - l.7 import './SmartTokenController.sol' should use ""
  l.57 CrowdsaleController() visibility is not specified default to public
  l.58 SmartTokenController() explicitly mark visibility in function
  l.76 now  
  l.82 now  
  l.89 now  avoid time based decisions in b.logic (not-rely-on-time)
  l.145 addToWhitelist()
  l.161 removeFromWhitelist()
  l.176 contributeETH()
  l.193 contributePreSale() function order is incorrect, public function cannot
    go after private function
  l.196 (startTime,PRESALE_DURATION) comma must be separated from next element
    by space
  l.211 contributeFiat() function order is incorrect, public function cannot
    go after private function
  l.243 send   check result of send
  l.244 totalEtherContributed  possible reentrancy vulnerabilities avoid state changes after  transfer (l.221)
  l.253 function() fallback function cannot go after private function
        payable  explicitly mark visibility in function

  Do not rely on “block.blockhash”. Miners can influence its value. now

ERC20Token.sol
contract ERC20Token
  l.2, l.3 imports should use ""
  l.9 - l.11 should use ""
  l.27 ERC20Token() visibility is not specified default to public
  l.44 transfer() event and function names must be different (l.17)

Managed.sol
contract Managed
  l.15 Managed() visibility is not specified default to public

Owned.sol  
contract Owned
  l.2 import should use ""
  l.16 Owned() visibility is not specified default to public

Pausable.sol
contract Pausable
  l.2 import should use ""
  l.34 pause()
  l.43 unpause()  event and function names must be different
                  explicitly mark visibility in function  

SmartToken.sol
contract SmartToken   
  l.2 - l.5  imports should use ""
  l.13  string should use ""
  l.31 SmartToken() visibility is not specified default to public
  l.32 ERC20Token explicitly mark visibility in function

SmartTokenController.sol
contract SmartTokenController
  l.2, l.3 imports should use ""
  l.27 SmartTokenController() visibility is not specified default to public
  l.28 validAddress explicitly mark visibility in function

TokenHolder.sol
contract TokenHolder
  l.2 - l.5 imports should use ""
  l.18 TokenHolder() visibility is not specified default to public

Utils
contract Utils
  l.10 Utils() visibility is not specified default to public
  l.55 safeSub()
  l.68 safeMul() state mutibility can be restricted to pure
