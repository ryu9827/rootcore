pragma solidity ^0.4.15;

contract Migrations {event __CoverageMigrations(string fileName, uint256 lineNumber);
event __FunctionCoverageMigrations(string fileName, uint256 fnId);
event __StatementCoverageMigrations(string fileName, uint256 statementId);
event __BranchCoverageMigrations(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageMigrations(string fileName, uint256 branchId);
event __AssertPostCoverageMigrations(string fileName, uint256 branchId);

    address public owner;
    uint public last_completed_migration;

    modifier restricted() {__FunctionCoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',1);

__CoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',8);
         __StatementCoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',1);
if (msg.sender == owner) 
        {__BranchCoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',1,0);__CoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',9);
_;}else { __BranchCoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',1,1);}

    }

    function Migrations() {__FunctionCoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',2);

__CoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',13);
         __StatementCoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',2);
owner = msg.sender;
    }

    function setCompleted(uint completed) restricted {__FunctionCoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',3);

__CoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',17);
         __StatementCoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',3);
last_completed_migration = completed;
    }

    function upgrade(address new_address) restricted {__FunctionCoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',4);

__CoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',21);
         __StatementCoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',4);
Migrations upgraded = Migrations(new_address);
__CoverageMigrations('D:/Blockchain-Solidity/rootcore-fork/contracts/helpers/Migrations.sol',22);
        upgraded.setCompleted(last_completed_migration);
    }
}
