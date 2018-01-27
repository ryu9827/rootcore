pragma solidity ^0.4.15;

/*
    Provides support and utilities for contract management
*/
contract Managed {event __CoverageManaged(string fileName, uint256 lineNumber);
event __FunctionCoverageManaged(string fileName, uint256 fnId);
event __StatementCoverageManaged(string fileName, uint256 statementId);
event __BranchCoverageManaged(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageManaged(string fileName, uint256 branchId);
event __AssertPostCoverageManaged(string fileName, uint256 branchId);

    address public manager;
    address public newManager;

    event ManagerUpdate(address _prevManager, address _newManager);

    /**
        @dev constructor
    */
    function Managed() {__FunctionCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',1);

__CoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',16);
         __StatementCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',1);
manager = msg.sender;
    }

    // allows execution by the manager only
    modifier managerOnly {__FunctionCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',2);

__CoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',21);
        __AssertPreCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',1);
 __StatementCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',2);
assert(msg.sender == manager);__AssertPostCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',1);

__CoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',22);
        _;
    }

    /**
        @dev allows transferring the contract management
        the new manager still needs to accept the transfer
        can only be called by the contract manager

        @param _newManager    new contract manager
    */
    function transferManagement(address _newManager) public managerOnly {__FunctionCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',3);

__CoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',33);
        __AssertPreCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',2);
 __StatementCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',3);
require(_newManager != manager);__AssertPostCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',2);

__CoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',34);
         __StatementCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',4);
newManager = _newManager;
    }

    /**
        @dev used by a new manager to accept a management transfer
    */
    function acceptManagement() public {__FunctionCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',4);

__CoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',41);
        __AssertPreCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',3);
 __StatementCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',5);
require(msg.sender == newManager);__AssertPostCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',3);

__CoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',42);
         __StatementCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',6);
ManagerUpdate(manager, newManager);
__CoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',43);
         __StatementCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',7);
manager = newManager;
__CoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',44);
         __StatementCoverageManaged('D:/Blockchain-Solidity/rootcore-fork/contracts/Managed.sol',8);
newManager = 0x0;
    }
}
