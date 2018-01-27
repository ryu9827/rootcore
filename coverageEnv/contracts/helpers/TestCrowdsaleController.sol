pragma solidity ^0.4.15;
import '../CrowdsaleController.sol';
/*
    Test crowdsale controller with start time < now < end time
*/
contract TestCrowdsaleController is CrowdsaleController {event __CoverageTestCrowdsaleController(string fileName, uint256 lineNumber);
event __FunctionCoverageTestCrowdsaleController(string fileName, uint256 fnId);
event __StatementCoverageTestCrowdsaleController(string fileName, uint256 statementId);
event __BranchCoverageTestCrowdsaleController(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageTestCrowdsaleController(string fileName, uint256 branchId);
event __AssertPostCoverageTestCrowdsaleController(string fileName, uint256 branchId);

    function TestCrowdsaleController(
        uint256 _startTime,
        address _beneficiary,
        uint256 _startTimeOverride)
        CrowdsaleController(_startTime, _beneficiary)
    {__FunctionCoverageTestCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestCrowdsaleController.sol',1);

__CoverageTestCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestCrowdsaleController.sol',13);
         __StatementCoverageTestCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestCrowdsaleController.sol',1);
startTime = _startTimeOverride;
__CoverageTestCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestCrowdsaleController.sol',14);
         __StatementCoverageTestCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/TestCrowdsaleController.sol',2);
endTime = startTime + DURATION;
    }
}
