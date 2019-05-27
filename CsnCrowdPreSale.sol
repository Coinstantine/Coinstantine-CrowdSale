pragma solidity ^0.5.0;
import 'CsnCrowdSaleBase.sol';
import 'SafeMath.sol';

contract CsnCrowdPreSale is CsnCrowdSaleBase {
    using SafeMath for uint256;

    constructor() public {
        token = new MOCoinstantine(6000000);
        startDate = 1561968000; //Mon, 1 Jul 2019 08:00:00 +00:00
        endDate = 1565827199; //Wed, 14 Aug 2019 23:59:59 +00:00
        minimumParticipationAmount = 100000000000000000 wei; //0.1 Ether
        minimumToRaise = 400000000000000000000; // 400 Ether
        baseRate = 1000;
        cap = 4000000000000000000000 wei; //4000 ether
        capBonus1 = 0; // 0 ether
        capBonus2 = 1000000000000000000000; // 1000 ether
        capBonus3 = 3000000000000000000000; // 3000 ether
        bonus1 = 300;
        bonus2 = 150;
        bonus3 = 50;
    }
}