pragma solidity ^0.4.15;
import '../Utils.sol';

/*
    Utils test helper that exposes the safe math functions
*/
contract TestUtils is Utils {event __CoverageTestUtils(string fileName, uint256 lineNumber);
event __FunctionCoverageTestUtils(string fileName, uint256 fnId);
event __StatementCoverageTestUtils(string fileName, uint256 statementId);
event __BranchCoverageTestUtils(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageTestUtils(string fileName, uint256 branchId);
event __AssertPostCoverageTestUtils(string fileName, uint256 branchId);

    function TestUtils() {__FunctionCoverageTestUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestUtils.sol',1);

    }

    function testSafeAdd(uint256 _x, uint256 _y) public returns (uint256) {__FunctionCoverageTestUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestUtils.sol',2);

__CoverageTestUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestUtils.sol',12);
         __StatementCoverageTestUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestUtils.sol',1);
return super.safeAdd(_x, _y);
    }

    function testSafeSub(uint256 _x, uint256 _y) public returns (uint256) {__FunctionCoverageTestUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestUtils.sol',3);

__CoverageTestUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestUtils.sol',16);
         __StatementCoverageTestUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestUtils.sol',2);
return super.safeSub(_x, _y);
    }

    function testSafeMul(uint256 _x, uint256 _y) public returns (uint256) {__FunctionCoverageTestUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestUtils.sol',4);

__CoverageTestUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestUtils.sol',20);
         __StatementCoverageTestUtils('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestUtils.sol',3);
return super.safeMul(_x, _y);
    }
}
