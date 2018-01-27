pragma solidity ^0.4.15;
import './interfaces/IOwned.sol';

/*
    Provides support and utilities for contract ownership
*/
contract Owned is IOwned {event __CoverageOwned(string fileName, uint256 lineNumber);
event __FunctionCoverageOwned(string fileName, uint256 fnId);
event __StatementCoverageOwned(string fileName, uint256 statementId);
event __BranchCoverageOwned(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageOwned(string fileName, uint256 branchId);
event __AssertPostCoverageOwned(string fileName, uint256 branchId);

    address public owner;
    address public newOwner;

    event OwnerUpdate(address _prevOwner, address _newOwner);

    /**
        @dev constructor
    */
    function Owned() {__FunctionCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',1);

__CoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',17);
         __StatementCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',1);
owner = msg.sender;
    }

    // allows execution by the owner only
    modifier ownerOnly {__FunctionCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',2);

__CoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',22);
        __AssertPreCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',1);
 __StatementCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',2);
assert(msg.sender == owner);__AssertPostCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',1);

__CoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',23);
        _;
    }

    /**
        @dev allows transferring the contract ownership
        the new owner still needs to accept the transfer
        can only be called by the contract owner

        @param _newOwner    new contract owner
    */
    function transferOwnership(address _newOwner) public ownerOnly {__FunctionCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',3);

__CoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',34);
        __AssertPreCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',2);
 __StatementCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',3);
require(_newOwner != owner);__AssertPostCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',2);

__CoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',35);
         __StatementCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',4);
newOwner = _newOwner;
    }

    /**
        @dev used by a new owner to accept an ownership transfer
    */
    function acceptOwnership() public {__FunctionCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',4);

__CoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',42);
        __AssertPreCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',3);
 __StatementCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',5);
require(msg.sender == newOwner);__AssertPostCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',3);

__CoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',43);
         __StatementCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',6);
OwnerUpdate(owner, newOwner);
__CoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',44);
         __StatementCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',7);
owner = newOwner;
__CoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',45);
         __StatementCoverageOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/Owned.sol',8);
newOwner = 0x0;
    }
}
