pragma solidity ^0.4.15;
import './IOwned.sol';
import './IERC20Token.sol';

/*
    Token Holder interface
*/
contract ITokenHolder is IOwned {event __CoverageITokenHolder(string fileName, uint256 lineNumber);
event __FunctionCoverageITokenHolder(string fileName, uint256 fnId);
event __StatementCoverageITokenHolder(string fileName, uint256 statementId);
event __BranchCoverageITokenHolder(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageITokenHolder(string fileName, uint256 branchId);
event __AssertPostCoverageITokenHolder(string fileName, uint256 branchId);

    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount) public;
}
