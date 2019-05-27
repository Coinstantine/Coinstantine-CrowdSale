pragma solidity ^0.5.0;
import 'Ownable.sol';
import 'ERC20.sol';

contract NotTransferable is ERC20, Ownable {
    /// @notice Enables token holders to transfer their tokens freely if true
   /// @param _enabledTransfer True if transfers are allowed in the clone
    bool public enabledTransfer = false;

    function enableTransfers(bool _enabledTransfer) public onlyAdmin {
        enabledTransfer = _enabledTransfer;
    }

    function transferFromContract(address _to, uint256 _value) public onlyAdmin returns (bool success) {
        return super.transfer(_to, _value);
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(enabledTransfer, "Transfers are not allowed yet");
        return super.transfer(_to, _value);
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(enabledTransfer, "Transfers are not allowed yet");
        return super.transferFrom(_from, _to, _value);
    }

    function approve(address _spender, uint256 _value) public returns (bool) {
        require(enabledTransfer, "Transfers are not allowed yet");
        return super.approve(_spender, _value);
    }
}
