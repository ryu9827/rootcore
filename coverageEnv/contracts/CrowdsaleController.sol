pragma solidity ^0.4.15;
import './SmartTokenController.sol';
import './Utils.sol';
import './Managed.sol';
import './Pausable.sol';
import './SmartToken.sol';
import './interfaces/ISmartToken.sol';


/*

    The CrowdsaleController allows contributing ether in exchange for Rootcoin tokens
    The price remains fixed for the entire duration of the crowdsale
    Presale contributes are allocated (manually) with additional 20% tokens from the beneficiary tokens.
    Presale contribute mst use pre-verified addresses. (KYC)
*/
contract CrowdsaleController is SmartTokenController, Managed, Pausable {event __CoverageCrowdsaleController(string fileName, uint256 lineNumber);
event __FunctionCoverageCrowdsaleController(string fileName, uint256 fnId);
event __StatementCoverageCrowdsaleController(string fileName, uint256 statementId);
event __BranchCoverageCrowdsaleController(string fileName, uint256 branchId, uint256 locationIdx);
event __AssertPreCoverageCrowdsaleController(string fileName, uint256 branchId);
event __AssertPostCoverageCrowdsaleController(string fileName, uint256 branchId);


    

    uint256 public constant DURATION = 14 days;                 // crowdsale duration  
    uint256 public constant TOKEN_PRICE_N = 1;                  // initial price in wei (numerator)
    uint256 public constant TOKEN_PRICE_D = 1000;               // initial price in wei (denominator) (1000 wei equals 1 token)
    uint256 public constant MAX_GAS_PRICE = 50000000000 wei;    // maximum gas price for contribution transactions
    uint256 public constant MAX_CONTRIBUTION = 40 ether;        // maximum ether allowed to contribute by an unauthorized single account
    uint256 public constant SOFTCAP_GRACE_DURATION = 10;//86400;     // crowdsale softcap reached grace duration in seconds (24 hours) (use 8 seconds for tests)
    uint256 public TOTAL_ETHER_CAP = 110000 ether;             // overall ether contribution cap. use 1100000 for test 
    uint256 public TOTAL_ETHER_SOFT_CAP = 100000 ether;         // overall ether contribution soft cap. use 1000000 for test 
    
    //Presale constants
    uint256 public constant PRESALE_DURATION = 14 days;               // pressale duration
    uint256 public constant PRESALE_MIN_CONTRIBUTION = 200 ether;     // pressale min contribution
    
    //Token constants
    string public constant TOKEN_NAME = "Rootcoin"; //Token name
    string public constant TOKEN_SYM = "RCT";       //Token symbol
    uint8 public constant TOKEN_DEC = 18;           //Token decimals
    
    
    //State variables
    uint256 public startTime = 0;                   // crowdsale start time (in seconds)
    uint256 public endTime = 0;                     // crowdsale end time (in seconds)
    uint256 public totalEtherContributed = 0;       // ether contributed so far
    address public beneficiary = 0x0;               // address to receive all ether contributions
    mapping(address => bool) public whiteList;  //whitelist of accounts that can participate in presale and also contribute more than MAX_CONTRIBUTION
    uint256 public numOfContributors = 0;                   // public contributors counter
     

    // triggered on each contribution
    event Contribution(address indexed _contributor, uint256 _amount, uint256 _return);

    /**
        @dev constructor
        @param _startTime      crowdsale start time
        @param _beneficiary    address to receive all ether contributions
    */
    function CrowdsaleController(uint256 _startTime, address _beneficiary)
        SmartTokenController(new SmartToken(TOKEN_NAME, TOKEN_SYM, TOKEN_DEC))
        validAddress(_beneficiary)
        earlierThan(_startTime)
    {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',1);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',62);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',1);
startTime = _startTime;
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',63);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',2);
endTime = startTime + DURATION;
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',64);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',3);
beneficiary = _beneficiary;
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',65);
        token.disableTransfers(true);
    }

    // verifies that the gas price is lower than 50 gwei
    modifier validGasPrice() {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',2);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',70);
        __AssertPreCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',1);
 __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',4);
assert(tx.gasprice <= MAX_GAS_PRICE);__AssertPostCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',1);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',71);
        _;
    }

    // ensures that it's earlier than the given time
    modifier earlierThan(uint256 _time) {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',3);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',76);
        __AssertPreCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',2);
 __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',5);
assert(now < _time);__AssertPostCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',2);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',77);
        _;
    }

    // ensures that the current time is between _startTime (inclusive) and _endTime (exclusive)
    modifier between(uint256 _startTime, uint256 _endTime) {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',4);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',82);
        __AssertPreCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',3);
 __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',6);
assert(now >= _startTime && now < _endTime);__AssertPostCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',3);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',83);
        _;
    }

    // ensures that we didn't reach the soft ether cap, and sets the end time time when we do. Must be placed before the etherCapNotReached.
    modifier etherSoftCapNotReached(uint256 _contribution) {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',5);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',88);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',7);
if (safeAdd(totalEtherContributed, _contribution) >= TOTAL_ETHER_SOFT_CAP) {__BranchCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',4,0);
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',89);
             __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',8);
endTime = now + SOFTCAP_GRACE_DURATION;
        }else { __BranchCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',4,1);}

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',91);
        _;
    }

    // ensures that we didn't reach the ether cap
    modifier etherCapNotReached(uint256 _contribution) {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',6);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',96);
        __AssertPreCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',5);
 __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',9);
assert(safeAdd(totalEtherContributed, _contribution) <= TOTAL_ETHER_CAP);__AssertPostCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',5);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',97);
        _;
    }

    // verifies that the presale contribution is more than presale minimum
    modifier validatePresaleMinPrice() {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',7);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',102);
        __AssertPreCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',6);
 __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',10);
require(msg.value >= PRESALE_MIN_CONTRIBUTION);__AssertPostCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',6);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',103);
        _;
    }

    // verifies that the presale contribution is from predefined address - TBD (not in use unless we decide to make a whitelist.)
    modifier validatePresaleAddress() {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',8);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',108);
         __AssertPreCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',7);
 __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',11);
require(whiteList[msg.sender] == true);__AssertPostCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',7);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',109);
        _;
    }

    // verifies that the total contributions from contributing account do not reach max alloewed unless it is on the whitelist.
    modifier maxAccountContributionNotReached() {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',9);
   
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',114);
        __AssertPreCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',8);
 __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',12);
assert(safeAdd(msg.value, safeMul(token.balanceOf(msg.sender), TOKEN_PRICE_N) / TOKEN_PRICE_D) <= MAX_CONTRIBUTION || whiteList[msg.sender]==true);__AssertPostCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',8);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',115);
        _;
    }

    /**
        @dev computes the number of tokens that should be issued for a given contribution

        @param _contribution    contribution amount

        @return computed number of tokens
    */
    function computeReturn(uint256 _contribution) public returns (uint256) {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',10);

        // return safeMul(_contribution, TOKEN_PRICE_D) / TOKEN_PRICE_N;
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',127);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',13);
return safeMul(_contribution, TOKEN_PRICE_D) / TOKEN_PRICE_N;
    }

    /**
        @dev updates the number of contributors
    */
    function upadateContributorsCount(uint256 _tokenAmount) private {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',11);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',134);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',14);
if (token.balanceOf(msg.sender) == _tokenAmount ) 
            {__BranchCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',9,0);__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',135);
numOfContributors++;}else { __BranchCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',9,1);}

    }

    /**
        @dev adds a whitelist address for which there is no max contribution and is alloewed to participate in the presale.

        @param _address    verified contributor address

        @return true
    */
    function addToWhitelist(address _address)
    public
    managerOnly
    returns (bool added)
    {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',12);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',150);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',15);
whiteList[_address] = true;
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',151);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',16);
return true;
    }

    /**
        @dev disables an existing whitelist address from participating presale.

        @param _address    verified contributor address to be removed

        @return true
    */
    function removeFromWhitelist(address _address)
    public
    managerOnly
    returns (bool added)
    {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',13);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',166);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',17);
whiteList[_address] = false;
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',167);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',18);
return true;
    }

    /**
        @dev ETH contribution
        can only be called during the crowdsale

        @return tokens issued in return
    */
    function contributeETH()
        public
        payable
        between(startTime, endTime)
        whenNotPaused
        maxAccountContributionNotReached
        returns (uint256 amount)
    {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',14);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',184);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',19);
return processContribution();
    }

     /**
        @dev handles contribution during presale (min 200 ether)
        can only be called 14 days before the crowdsale start date

        @return tokens issued in return
    */
    function contributePreSale()
        public
        payable
        between(safeSub(startTime,PRESALE_DURATION), startTime)
        whenNotPaused
        validatePresaleMinPrice
        validatePresaleAddress
        returns (uint256 amount)
    {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',15);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',202);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',20);
return processContribution();
    }

     /**
        @dev handles contribution with Fiat - for 
        can only be called by manager 

        @return tokens issued in return
    */
    function contributeFiat(address _contributor, uint256 _amount)
        public
        payable
        managerOnly
        between(safeSub(startTime,PRESALE_DURATION), safeAdd(startTime, DURATION))
        whenNotPaused
        returns (uint256 amount)
    {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',16);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',219);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',21);
uint256 tokenAmount = computeReturn(_amount);
    
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',221);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',22);
totalEtherContributed = safeAdd(totalEtherContributed, _amount); // update the total contribution amount
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',222);
        token.issue(_contributor, tokenAmount); // issue new funds to the contributor's address, provided by the manager, in the smart token
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',223);
        token.issue(beneficiary, tokenAmount); // issue tokens to the beneficiary

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',225);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',23);
Contribution(_contributor, msg.value, tokenAmount);
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',226);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',24);
return tokenAmount;
    }

    /**
        @dev handles contribution logic
        note that the Contribution event is triggered using the sender as the contributor, regardless of the actual contributor

        @return tokens issued in return
    */
    function processContribution() private
        active
        etherSoftCapNotReached(msg.value)
        etherCapNotReached(msg.value)
        validGasPrice
        returns (uint256 amount)
    {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',17);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',242);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',25);
uint256 tokenAmount = computeReturn(msg.value);
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',243);
        __AssertPreCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',10);
 __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',26);
assert(beneficiary.send(msg.value));__AssertPostCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',10);
 // transfer the ether to the beneficiary account
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',244);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',27);
totalEtherContributed = safeAdd(totalEtherContributed, msg.value); // update the total contribution amount
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',245);
        token.issue(msg.sender, tokenAmount); // issue new funds to the contributor in the smart token
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',246);
        token.issue(beneficiary, tokenAmount); // issue tokens to the beneficiary
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',247);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',28);
upadateContributorsCount(tokenAmount);
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',248);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',29);
Contribution(msg.sender, msg.value, tokenAmount);
__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',249);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',30);
return tokenAmount;
    }

    // fallback
    function() payable {__FunctionCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',18);

__CoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',254);
         __StatementCoverageCrowdsaleController('D:/Blockchain-Solidity/rootcore-fork/contracts/CrowdsaleController.sol',31);
contributeETH();
    }
}
