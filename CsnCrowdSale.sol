pragma solidity ^0.5.0;
import 'CsnCrowdSaleBase.sol';
import 'SafeMath.sol';

contract CsnCrowdSale is CsnCrowdSaleBase {
    using SafeMath for uint256;

    constructor() public {
        token = new MOCoinstantine(50000000);
        startDate = 1569916800; //Tue, 1 Oct 2019 08:00:00 +00:00
        endDate = 1575158399; //Sun, 30 Nov 2019 23:59:59 +00:00
        minimumParticipationAmount = 100000000000000000 wei; // 0.1 Ether
        minimumToRaise = 4000000000000000000000; // 4.000 Ether
        baseRate = 500;
        cap = 100000000000000000000000 wei; //100.000 ether
        // No bonus
        capBonus1 = 0; // 0 ether
        capBonus2 = 0; // 0 ether
        capBonus3 = 0; // 0 ether
        bonus1 = 0;
        bonus2 = 0;
        bonus3 = 0;
    }
}