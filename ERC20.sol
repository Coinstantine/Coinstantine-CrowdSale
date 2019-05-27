pragma solidity ^0.5.0;
import 'Token.sol';
import 'SafeMath.sol';

contract ERC20 is Token {
    using SafeMath for uint256;
    
    mapping (address => uint256) public balance;

    mapping (address => mapping (address => uint256)) public allowed;

    event Transfer(address indexed from, address indexed to, uint256 value);

    event TransferFrom(address indexed spender, address indexed from, address indexed to, uint256 _value);

    event Approval(address indexed owner, address indexed spender, uint256 value);

    uint256 constant private MAX_UINT256 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Can't send to null");

        balance[msg.sender] = balance[msg.sender].safeSub(_value);
        balance[_to] = balance[_to].safeAdd(_value);
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Can't send to null");
        require(_to != address(this), "Can't send to contract");
        
        uint256 allowance = allowed[_from][msg.sender];
        require(_value <= allowance || _from == msg.sender, "Not allowed to send that much");

        balance[_to] = balance[_to].safeAdd(_value);
        balance[_from] = balance[_from].safeSub(_value);

        if (allowed[_from][msg.sender] != MAX_UINT256 && _from != msg.sender) {
            allowed[_from][msg.sender] = allowed[_from][msg.sender].safeSub(_value);
        }
        emit Transfer(_from, _to, _value);
        return true;
    }

    /**
    * @notice `msg.sender` approves `_spender` to spend `_value` tokens
    *
    * @param _spender The address of the account able to transfer the tokens
    * @param _value The amount of tokens to be approved for transfer
    * @return Whether the approval was successful or not
    */
    function approve(address _spender, uint256 _value) public returns (bool success) {
        require(_spender != address(0), "spender can't be null");

        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
        remaining = allowed[_owner][_spender];
    } 

    function totalSupply() public view returns (uint256 supply) {
        return 0;
    }

    function balanceOf(address _owner) public view returns (uint256 ownerBalance) {
        return balance[_owner];
    }
}