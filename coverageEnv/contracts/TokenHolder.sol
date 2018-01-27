pragma solidity ^0.4.15;
import './Owned.sol';
import './Utils.sol';
import './interfaces/IERC20Token.sol';
import './interfaces/ITokenHolder.sol';

/*
    We consider every contract to be a 'token holder' since it's currently not possible
    for a contract to deny receiving tokens.

    The TokenHolder's contract sole purpose is to provide a safety mechanism that allows
    the owner to send tokens that were sent to the contract by mistake back to their sender.
*/
contract TokenHolder is ITokenHolder, Owned, Utils {event __CoverageTokenHolder(string fileName, uint256 lineNumber);
event __FunctionCoverageTokenHolder(string fileName, uint256 fnId);
event __StatementCoverageTokenHolder(string fileName, uint256 statementId);
event __BranchCoverageTokenHolder(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageTokenHolder(string fileName, uint256 branchId);
event __AssertPostCoverageTokenHolder(string fileName, uint256 branchId);

    /**
        @dev constructor
    */
    function TokenHolder() {__FunctionCoverageTokenHolder('D:/Blockchain-Solidity/rootcore-fork/contracts/TokenHolder.sol',1);

    }

    /**
        @dev withdraws tokens held by the contract and sends them to an account
        can only be called by the owner

        @param _token   ERC20 token contract address
        @param _to      account to receive the new amount
        @param _amount  amount to withdraw
    */
    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
        public
        ownerOnly
        validAddress(_token)
        validAddress(_to)
        notThis(_to)
    {__FunctionCoverageTokenHolder('D:/Blockchain-Solidity/rootcore-fork/contracts/TokenHolder.sol',2);

__CoverageTokenHolder('D:/Blockchain-Solidity/rootcore-fork/contracts/TokenHolder.sol',36);
        __AssertPreCoverageTokenHolder('D:/Blockchain-Solidity/rootcore-fork/contracts/TokenHolder.sol',1);
 __StatementCoverageTokenHolder('D:/Blockchain-Solidity/rootcore-fork/contracts/TokenHolder.sol',1);
assert(_token.transfer(_to, _amount));__AssertPostCoverageTokenHolder('D:/Blockchain-Solidity/rootcore-fork/contracts/TokenHolder.sol',1);

    }
}
