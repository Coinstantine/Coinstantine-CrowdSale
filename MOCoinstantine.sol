pragma solidity ^0.5.0;
import 'NotTransferable.sol';

contract MOCoinstantine is NotTransferable {

    string constant public NAME = "MOCoinstantine";

    string constant public SYMBOL = "MOC";

    uint8 constant public DECIMALS = 0;

    uint256 public TOTALSUPPLY = 0;

    constructor(uint256 totalSupply) public {
        TOTALSUPPLY = totalSupply;
        balance[msg.sender] = totalSupply;
    }

    function totalSupply() public view returns (uint256 supply) {
        return TOTALSUPPLY;
    }
}