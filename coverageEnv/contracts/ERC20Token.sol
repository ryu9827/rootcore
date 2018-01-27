pragma solidity ^0.4.15;
import './Utils.sol';
import './interfaces/IERC20Token.sol';

/**
    ERC20 Standard Token implementation
*/
contract ERC20Token is IERC20Token, Utils {event __CoverageERC20Token(string fileName, uint256 lineNumber);
event __FunctionCoverageERC20Token(string fileName, uint256 fnId);
event __StatementCoverageERC20Token(string fileName, uint256 statementId);
event __BranchCoverageERC20Token(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageERC20Token(string fileName, uint256 branchId);
event __AssertPostCoverageERC20Token(string fileName, uint256 branchId);

    string public standard = 'Token 0.1';
    string public name = '';
    string public symbol = '';
    uint8 public decimals = 0;
    uint256 public totalSupply = 0;
    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    /**
        @dev constructor

        @param _name        token name
        @param _symbol      token symbol
        @param _decimals    decimal points, for display purposes
    */
    function ERC20Token(string _name, string _symbol, uint8 _decimals) {__FunctionCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',1);

__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',28);
        __AssertPreCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',1);
 __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',1);
require(bytes(_name).length > 0 && bytes(_symbol).length > 0);__AssertPostCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',1);
 // validate input

__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',30);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',2);
name = _name;
__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',31);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',3);
symbol = _symbol;
__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',32);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',4);
decimals = _decimals;
    }

    /**
        @dev send coins
        throws on any error rather then return a false flag to minimize user errors

        @param _to      target address
        @param _value   transfer amount

        @return true if the transfer was successful, false if it wasn't
    */
    function transfer(address _to, uint256 _value)
        public
        validAddress(_to)
        returns (bool success)
    {__FunctionCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',2);

__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',49);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',5);
balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',50);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',6);
balanceOf[_to] = safeAdd(balanceOf[_to], _value);
__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',51);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',7);
Transfer(msg.sender, _to, _value);
__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',52);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',8);
return true;
    }

    /**
        @dev an account/contract attempts to get the coins
        throws on any error rather then return a false flag to minimize user errors

        @param _from    source address
        @param _to      target address
        @param _value   transfer amount

        @return true if the transfer was successful, false if it wasn't
    */
    function transferFrom(address _from, address _to, uint256 _value)
        public
        validAddress(_from)
        validAddress(_to)
        returns (bool success)
    {__FunctionCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',3);

__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',71);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',9);
allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',72);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',10);
balanceOf[_from] = safeSub(balanceOf[_from], _value);
__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',73);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',11);
balanceOf[_to] = safeAdd(balanceOf[_to], _value);
__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',74);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',12);
Transfer(_from, _to, _value);
__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',75);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',13);
return true;
    }

    /**
        @dev allow another account/contract to spend some tokens on your behalf
        throws on any error rather then return a false flag to minimize user errors

        also, to minimize the risk of the approve/transferFrom attack vector
        (see https://docs.google.com/document/d/1YLPtQxZu1UAvO9cZ1O2RPXBbT0mooh4DYKjA_jp-RLM/), approve has to be called twice
        in 2 separate transactions - once to change the allowance to 0 and secondly to change it to the new allowance value

        @param _spender approved address
        @param _value   allowance amount

        @return true if the approval was successful, false if it wasn't
    */
    function approve(address _spender, uint256 _value)
        public
        validAddress(_spender)
        returns (bool success)
    {__FunctionCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',4);

        // if the allowance isn't 0, it can only be updated to 0 to prevent an allowance change immediately after withdrawal
__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',97);
        __AssertPreCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',2);
 __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',14);
require(_value == 0 || allowance[msg.sender][_spender] == 0);__AssertPostCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',2);


__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',99);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',15);
allowance[msg.sender][_spender] = _value;
__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',100);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',16);
Approval(msg.sender, _spender, _value);
__CoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',101);
         __StatementCoverageERC20Token('D:/Blockchain-Solidity/rootcore-fork/contracts/ERC20Token.sol',17);
return true;
    }
}
