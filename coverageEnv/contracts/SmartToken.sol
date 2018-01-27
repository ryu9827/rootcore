pragma solidity ^0.4.15;
import './ERC20Token.sol';
import './TokenHolder.sol';
import './Owned.sol';
import './interfaces/ISmartToken.sol';

/*
    Smart Token v0.3

    'Owned' is specified here for readability reasons
*/
contract SmartToken is ISmartToken, Owned, ERC20Token, TokenHolder {event __CoverageSmartToken(string fileName, uint256 lineNumber);
event __FunctionCoverageSmartToken(string fileName, uint256 fnId);
event __StatementCoverageSmartToken(string fileName, uint256 statementId);
event __BranchCoverageSmartToken(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageSmartToken(string fileName, uint256 branchId);
event __AssertPostCoverageSmartToken(string fileName, uint256 branchId);

    string public version = '0.3';

    bool public transfersEnabled = true;    // true if transfer/transferFrom are enabled, false if not

    // triggered when a smart token is deployed - the _token address is defined for forward compatibility, in case we want to trigger the event from a factory
    event NewSmartToken(address _token);
    // triggered when the total supply is increased
    event Issuance(uint256 _amount);
    // triggered when the total supply is decreased
    event Destruction(uint256 _amount);

    /**
        @dev constructor

        @param _name       token name
        @param _symbol     token short symbol, minimum 1 character
        @param _decimals   for display purposes only
    */
    function SmartToken(string _name, string _symbol, uint8 _decimals)
        ERC20Token(_name, _symbol, _decimals)
    {__FunctionCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',1);

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',34);
         __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',1);
NewSmartToken(address(this));
    }

    // allows execution only when transfers aren't disabled
    modifier transfersAllowed {__FunctionCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',2);

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',39);
        __AssertPreCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',1);
 __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',2);
assert(transfersEnabled);__AssertPostCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',1);

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',40);
        _;
    }

    /**
        @dev disables/enables transfers
        can only be called by the contract owner

        @param _disable    true to disable transfers, false to enable them
    */
    function disableTransfers(bool _disable) public ownerOnly {__FunctionCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',3);

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',50);
         __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',3);
transfersEnabled = !_disable;
    }

    /**
        @dev increases the token supply and sends the new tokens to an account
        can only be called by the contract owner

        @param _to         account to receive the new amount
        @param _amount     amount to increase the supply by
    */
    function issue(address _to, uint256 _amount)
        public
        ownerOnly
        validAddress(_to)
        notThis(_to)
    {__FunctionCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',4);

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',66);
         __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',4);
totalSupply = safeAdd(totalSupply, _amount);
__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',67);
         __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',5);
balanceOf[_to] = safeAdd(balanceOf[_to], _amount);

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',69);
         __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',6);
Issuance(_amount);
__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',70);
         __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',7);
Transfer(this, _to, _amount);
    }

    /**
        @dev removes tokens from an account and decreases the token supply
        can be called by the contract owner to destroy tokens from any account or by any holder to destroy tokens from his/her own account

        @param _from       account to remove the amount from
        @param _amount     amount to decrease the supply by
    */
    function destroy(address _from, uint256 _amount) public {__FunctionCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',5);

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',81);
        __AssertPreCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',2);
 __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',8);
require(msg.sender == _from || msg.sender == owner);__AssertPostCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',2);
 // validate input

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',83);
         __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',9);
balanceOf[_from] = safeSub(balanceOf[_from], _amount);
__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',84);
         __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',10);
totalSupply = safeSub(totalSupply, _amount);

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',86);
         __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',11);
Transfer(_from, this, _amount);
__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',87);
         __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',12);
Destruction(_amount);
    }

    // ERC20 standard method overrides with some extra functionality

    /**
        @dev send coins
        throws on any error rather then return a false flag to minimize user errors
        in addition to the standard checks, the function throws if transfers are disabled

        @param _to      target address
        @param _value   transfer amount

        @return true if the transfer was successful, false if it wasn't
    */
    function transfer(address _to, uint256 _value) public transfersAllowed returns (bool success) {__FunctionCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',6);

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',103);
        __AssertPreCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',3);
 __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',13);
assert(super.transfer(_to, _value));__AssertPostCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',3);

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',104);
         __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',14);
return true;
    }

    /**
        @dev an account/contract attempts to get the coins
        throws on any error rather then return a false flag to minimize user errors
        in addition to the standard checks, the function throws if transfers are disabled

        @param _from    source address
        @param _to      target address
        @param _value   transfer amount

        @return true if the transfer was successful, false if it wasn't
    */
    function transferFrom(address _from, address _to, uint256 _value) public transfersAllowed returns (bool success) {__FunctionCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',7);

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',119);
        __AssertPreCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',4);
 __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',15);
assert(super.transferFrom(_from, _to, _value));__AssertPostCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',4);

__CoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',120);
         __StatementCoverageSmartToken('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartToken.sol',16);
return true;
    }
}
