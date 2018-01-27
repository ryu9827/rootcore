pragma solidity ^0.4.15;

/*
    ERC20 Standard Token interface
*/
contract IERC20Token {event __CoverageIERC20Token(string fileName, uint256 lineNumber);
event __FunctionCoverageIERC20Token(string fileName, uint256 fnId);
event __StatementCoverageIERC20Token(string fileName, uint256 statementId);
event __BranchCoverageIERC20Token(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageIERC20Token(string fileName, uint256 branchId);
event __AssertPostCoverageIERC20Token(string fileName, uint256 branchId);

    // these functions aren't abstract since the compiler emits automatically generated getter functions as external
    function name() public returns (string name) {__FunctionCoverageIERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/interfaces/IERC20Token.sol',1);
 name; }
    function symbol() public returns (string symbol) {__FunctionCoverageIERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/interfaces/IERC20Token.sol',2);
 symbol; }
    function decimals() public returns (uint8 decimals) {__FunctionCoverageIERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/interfaces/IERC20Token.sol',3);
 decimals; }
    function totalSupply() public returns (uint256 totalSupply) {__FunctionCoverageIERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/interfaces/IERC20Token.sol',4);
 totalSupply; }
    function balanceOf(address _owner) public returns (uint256 balance) {__FunctionCoverageIERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/interfaces/IERC20Token.sol',5);
 _owner; balance; }
    function allowance(address _owner, address _spender) public returns (uint256 remaining) {__FunctionCoverageIERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/interfaces/IERC20Token.sol',6);
 _owner; _spender; remaining; }

    function transfer(address _to, uint256 _value) public returns (bool success);
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
    function approve(address _spender, uint256 _value) public returns (bool success);
}
