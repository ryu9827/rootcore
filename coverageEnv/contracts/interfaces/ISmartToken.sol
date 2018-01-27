pragma solidity ^0.4.15;
import './ITokenHolder.sol';
import './IERC20Token.sol';

/*
    Smart Token interface
*/
contract ISmartToken is ITokenHolder, IERC20Token {event __CoverageISmartToken(string fileName, uint256 lineNumber);
event __FunctionCoverageISmartToken(string fileName, uint256 fnId);
event __StatementCoverageISmartToken(string fileName, uint256 statementId);
event __BranchCoverageISmartToken(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageISmartToken(string fileName, uint256 branchId);
event __AssertPostCoverageISmartToken(string fileName, uint256 branchId);

    function disableTransfers(bool _disable) public;
    function issue(address _to, uint256 _amount) public;
    function destroy(address _from, uint256 _amount) public;
}
