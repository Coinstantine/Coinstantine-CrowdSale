pragma solidity ^0.5.0;
import 'Ownable.sol';
import 'SafeMath.sol';

contract CsnCrowdConfigurableSale is Ownable {
    using SafeMath for uint256;

    // start and end date where investments are allowed (both inclusive)
    uint256 public startDate; 
    uint256 public endDate;

    // Minimum amount to participate
    uint256 public minimumParticipationAmount;

    uint256 public minimumToRaise;

    // address where funds are collected
    address payable public wallet ;

    // how many token units a buyer gets per ether
    uint256 public baseRate;
    //cap for the sale
    uint256 public cap; 

    uint256 capBonus1; 
    uint256 capBonus2;
    uint256 capBonus3;

    uint256 bonus1;
    uint256 bonus2;
    uint256 bonus3;
    // amount of raised money in wei
    uint256 public weiRaised;

    //flag for final of crowdsale
    bool public isFinalized = false;
    bool public isCanceled = false;

    
    function getRate() public view returns (uint256) {
        uint256 bonus = 0;
        if(weiRaised >= capBonus3)
        {
            // 5% bonus
            bonus = bonus3;
        }
        else if (weiRaised >= capBonus2)
        {
            // 15% bonus
            bonus = bonus2;
        }
        else if (weiRaised >= capBonus1)
        {
            // 30 % bonus
            bonus = bonus1;
        }
        return baseRate.safeAdd(bonus);
    }
    
    function isStarted() public view returns (bool) {
        return startDate <= block.timestamp;
    }

    function changeStartDate(uint256 _startDate) public onlyAdmin {
        startDate = _startDate;
    }

    function changeEndDate(uint256 _endDate) public onlyAdmin {
        endDate = _endDate;
    }
}
