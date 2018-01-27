pragma solidity ^0.4.15;

/*
    Utilities & Common Modifiers
*/
contract Utils {event __CoverageUtils(string fileName, uint256 lineNumber);
event __FunctionCoverageUtils(string fileName, uint256 fnId);
event __StatementCoverageUtils(string fileName, uint256 statementId);
event __BranchCoverageUtils(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageUtils(string fileName, uint256 branchId);
event __AssertPostCoverageUtils(string fileName, uint256 branchId);

    /**
        constructor
    */
    function Utils() {__FunctionCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',1);

    }

    // verifies that an amount is greater than zero
    modifier greaterThanZero(uint256 _amount) {__FunctionCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',2);

__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',15);
        __AssertPreCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',1);
 __StatementCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',1);
require(_amount > 0);__AssertPostCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',1);

__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',16);
        _;
    }

    // validates an address - currently only checks that it isn't null
    modifier validAddress(address _address) {__FunctionCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',3);

__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',21);
        __AssertPreCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',2);
 __StatementCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',2);
require(_address != 0x0);__AssertPostCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',2);

__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',22);
        _;
    }

    // verifies that the address is different than this contract address
    modifier notThis(address _address) {__FunctionCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',4);

__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',27);
        __AssertPreCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',3);
 __StatementCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',3);
require(_address != address(this));__AssertPostCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',3);

__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',28);
        _;
    }

    // Overflow protected math functions

    /**
        @dev returns the sum of _x and _y, asserts if the calculation overflows

        @param _x   value 1
        @param _y   value 2

        @return sum
    */
    function safeAdd(uint256 _x, uint256 _y) internal returns (uint256) {__FunctionCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',5);

__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',42);
         __StatementCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',4);
uint256 z = _x + _y;
__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',43);
        __AssertPreCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',4);
 __StatementCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',5);
assert(z >= _x);__AssertPostCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',4);

__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',44);
         __StatementCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',6);
return z;
    }

    /**
        @dev returns the difference of _x minus _y, asserts if the subtraction results in a negative number

        @param _x   minuend
        @param _y   subtrahend

        @return difference
    */
    function safeSub(uint256 _x, uint256 _y) internal returns (uint256) {__FunctionCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',6);

__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',56);
        __AssertPreCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',5);
 __StatementCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',7);
assert(_x >= _y);__AssertPostCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',5);

__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',57);
         __StatementCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',8);
return _x - _y;
    }

    /**
        @dev returns the product of multiplying _x by _y, asserts if the calculation overflows

        @param _x   factor 1
        @param _y   factor 2

        @return product
    */
    function safeMul(uint256 _x, uint256 _y) internal returns (uint256) {__FunctionCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',7);

__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',69);
         __StatementCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',9);
uint256 z = _x * _y;
__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',70);
        __AssertPreCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',6);
 __StatementCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',10);
assert(_x == 0 || z / _x == _y);__AssertPostCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',6);

__CoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',71);
         __StatementCoverageUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/Utils.sol',11);
return z;
    }
}
