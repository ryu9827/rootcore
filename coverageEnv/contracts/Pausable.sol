pragma solidity ^0.4.15;
import './Managed.sol';

/**
 * @title Pausable
 * @dev Base contract which allows children to implement an emergency stop mechanism.
 */
contract Pausable is Managed {event __CoveragePausable(string fileName, uint256 lineNumber);
event __FunctionCoveragePausable(string fileName, uint256 fnId);
event __StatementCoveragePausable(string fileName, uint256 statementId);
event __BranchCoveragePausable(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoveragePausable(string fileName, uint256 branchId);
event __AssertPostCoveragePausable(string fileName, uint256 branchId);

  event Pause();
  event Unpause();

  bool public paused = false;


  /**
   * @dev modifier to allow actions only when the contract IS paused
   */
  modifier whenNotPaused() {__FunctionCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',1);

__CoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',19);
    __AssertPreCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',1);
 __StatementCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',1);
require(!paused);__AssertPostCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',1);

__CoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',20);
    _;
  }

  /**
   * @dev modifier to allow actions only when the contract IS NOT paused
   */
  modifier whenPaused {__FunctionCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',2);

__CoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',27);
    __AssertPreCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',2);
 __StatementCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',2);
require(paused);__AssertPostCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',2);

__CoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',28);
    _;
  }

  /**
   * @dev called by the Manager to pause, triggers stopped state
   */
  function pause() managerOnly whenNotPaused returns (bool) {__FunctionCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',3);

__CoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',35);
     __StatementCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',3);
paused = true;
__CoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',36);
     __StatementCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',4);
Pause();
__CoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',37);
     __StatementCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',5);
return true;
  }

  /**
   * @dev called by the Manager to unpause, returns to normal state
   */
  function unpause() managerOnly whenPaused returns (bool) {__FunctionCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',4);

__CoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',44);
     __StatementCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',6);
paused = false;
__CoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',45);
     __StatementCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',7);
Unpause();
__CoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',46);
     __StatementCoveragePausable('D:/Blockchain-Solidity/rootcore-fork/contracts/Pausable.sol',8);
return true;
  }
}
