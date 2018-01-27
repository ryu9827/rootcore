pragma solidity ^0.4.15;
import '../ERC20Token.sol';

/*
    Test token with predefined supply
*/
contract TestERC20Token is ERC20Token {event __CoverageTestERC20Token(string fileName, uint256 lineNumber);
event __FunctionCoverageTestERC20Token(string fileName, uint256 fnId);
event __StatementCoverageTestERC20Token(string fileName, uint256 statementId);
event __BranchCoverageTestERC20Token(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageTestERC20Token(string fileName, uint256 branchId);
event __AssertPostCoverageTestERC20Token(string fileName, uint256 branchId);

    function TestERC20Token(string _name, string _symbol, uint256 _supply)
        ERC20Token(_name, _symbol, 0)
    {__FunctionCoverageTestERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestERC20Token.sol',1);

__CoverageTestERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestERC20Token.sol',11);
         __StatementCoverageTestERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestERC20Token.sol',1);
totalSupply = _supply;
__CoverageTestERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestERC20Token.sol',12);
         __StatementCoverageTestERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestERC20Token.sol',2);
balanceOf[msg.sender] = _supply;
    }
}
