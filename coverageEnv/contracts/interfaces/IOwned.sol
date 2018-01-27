pragma solidity ^0.4.15;

/*
    Owned contract interface
*/
contract IOwned {event __CoverageIOwned(string fileName, uint256 lineNumber);
event __FunctionCoverageIOwned(string fileName, uint256 fnId);
event __StatementCoverageIOwned(string fileName, uint256 statementId);
event __BranchCoverageIOwned(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageIOwned(string fileName, uint256 branchId);
event __AssertPostCoverageIOwned(string fileName, uint256 branchId);

    // this function isn't abstract since the compiler emits automatically generated getter functions as external
    function owner() public returns (address owner) {__FunctionCoverageIOwned('D:/Blockchain-Solidity/rootcore-fork/contracts/interfaces/IOwned.sol',1);
 owner; }

    function transferOwnership(address _newOwner) public;
    function acceptOwnership() public;
}
