Migrations.sol
contract Migrations
  l.5 last_completed_migration   var should be in mixedCase (style)
  l.12 Migrations() visibility is not specified default to public  
  l.16 setCompleted() restricted explicitly mark visibility in function
  l.20 upgrade() new_address var should be in mixedCase (style)

TestCrowdsaleController.sol
contract TestCrowdsaleController
  l.2 import '../CrowdsaleController.sol' should use ""
  l.11 CrowdsaleController() explicitly mark visibility in function

TestERC20Token.sol
contract TestERC20Token
l.9 TestERC20Token() explicitly mark visibility in function

TestUtils.sol
contract TestUtils
  l.2 import '../Utils.sol' should use ""
