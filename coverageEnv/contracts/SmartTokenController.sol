pragma solidity ^0.4.15;
import './TokenHolder.sol';
import './interfaces/ISmartToken.sol';

/*
    The smart token controller is an upgradable part of the smart token that allows
    more functionality as well as fixes for bugs/exploits.
    Once it accepts ownership of the token, it becomes the token's sole controller
    that can execute any of its functions.

    To upgrade the controller, ownership must be transferred to a new controller, along with
    any relevant data.

    The smart token must be set on construction and cannot be changed afterwards.
    Wrappers are provided (as opposed to a single 'execute' function) for each of the token's functions, for easier access.

    Note that the controller can transfer token ownership to a new controller that
    doesn't allow executing any function on the token, for a trustless solution.
    Doing that will also remove the owner's ability to upgrade the controller.
*/
contract SmartTokenController is TokenHolder {event __CoverageSmartTokenController(string fileName, uint256 lineNumber);
event __FunctionCoverageSmartTokenController(string fileName, uint256 fnId);
event __StatementCoverageSmartTokenController(string fileName, uint256 statementId);
event __BranchCoverageSmartTokenController(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageSmartTokenController(string fileName, uint256 branchId);
event __AssertPostCoverageSmartTokenController(string fileName, uint256 branchId);

    ISmartToken public token;   // smart token

    /**
        @dev constructor
    */
    function SmartTokenController(ISmartToken _token)
        validAddress(_token)
    {__FunctionCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',1);

__CoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',30);
         __StatementCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',1);
token = _token;
    }

    // ensures that the controller is the token's owner
    modifier active() {__FunctionCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',2);

__CoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',35);
        __AssertPreCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',1);
 __StatementCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',2);
assert(token.owner() == address(this));__AssertPostCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',1);

__CoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',36);
        _;
    }

    // ensures that the controller is not the token's owner
    modifier inactive() {__FunctionCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',3);

__CoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',41);
        __AssertPreCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',2);
 __StatementCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',3);
assert(token.owner() != address(this));__AssertPostCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',2);

__CoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',42);
        _;
    }

    /**
        @dev allows transferring the token ownership
        the new owner still need to accept the transfer
        can only be called by the contract owner

        @param _newOwner    new token owner
    */
    function transferTokenOwnership(address _newOwner) public ownerOnly {__FunctionCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',4);

__CoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',53);
        token.transferOwnership(_newOwner);
    }

    /**
        @dev used by a new owner to accept a token ownership transfer
        can only be called by the contract owner
    */
    function acceptTokenOwnership() public ownerOnly {__FunctionCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',5);

__CoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',61);
        token.acceptOwnership();
    }

    /**
        @dev disables/enables token transfers
        can only be called by the contract owner

        @param _disable    true to disable transfers, false to enable them
    */
    function disableTokenTransfers(bool _disable) public ownerOnly {__FunctionCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',6);

__CoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',71);
        token.disableTransfers(_disable);
    }

    /**
        @dev withdraws tokens held by the token and sends them to an account
        can only be called by the owner

        @param _token   ERC20 token contract address
        @param _to      account to receive the new amount
        @param _amount  amount to withdraw
    */
    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {__FunctionCoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',7);

__CoverageSmartTokenController('D:/Blockchain-Solidity/rootcore-fork/contracts/SmartTokenController.sol',83);
        token.withdrawTokens(_token, _to, _amount);
    }
}
