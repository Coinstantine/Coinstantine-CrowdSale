pragma solidity ^0.5.0;
import 'CsnCrowdSaleBase.sol';
import 'SafeMath.sol';

contract TestCrowdSaleEnded is CsnCrowdSaleBase {
    using SafeMath for uint256;

    constructor() public {
        token = new MOCoinstantine(100000);
        startDate = 1525940887; // 10 May 2018
        endDate = 1539160087; // 10 Oct 2018
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

contract TestCrowdSaleStarted is CsnCrowdSaleBase {
    using SafeMath for uint256;

    constructor() public {
        token = new MOCoinstantine(100000);
        startDate = 1557377510; // 9 May 2019
        endDate = 1575158399; // 10 Oct 2019
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

contract TestCrowdSale is CsnCrowdSaleBase {
    using SafeMath for uint256;

    constructor() public {
        token = new MOCoinstantine(2600);
        startDate = 1557377510; // 9 May 2019
        endDate = 1575158399; // 10 Oct 2019
        minimumParticipationAmount = 100000000000000000 wei; //0.1 Ether
        minimumToRaise = 1000000000000000000; // 1 Ether
        baseRate = 1000;
        cap = 2000000000000000000 wei; //2 ether
        capBonus1 = 0; // 0 ether
        capBonus2 = 1000000000000000000; // 1 ether
        capBonus3 = 1500000000000000000; // 1.5 ether
        bonus1 = 300;
        bonus2 = 150;
        bonus3 = 50;
    }
}

contract TestCrowdSaleAboveSupply is CsnCrowdSaleBase {
    using SafeMath for uint256;

    constructor() public {
        token = new MOCoinstantine(500);
        startDate = 1557377510; // 9 May 2019
        endDate = 1575158399; // 10 Oct 2019
        minimumParticipationAmount = 100000000000000000 wei; //0.1 Ether
        minimumToRaise = 1000000000000000000; // 1 Ether
        baseRate = 1000;
        cap = 2000000000000000000 wei; //2 ether
        capBonus1 = 0; // 0 ether
        capBonus2 = 1000000000000000000; // 1 ether
        capBonus3 = 1500000000000000000; // 1.5 ether
        bonus1 = 300;
        bonus2 = 150;
        bonus3 = 50;
    }
}
