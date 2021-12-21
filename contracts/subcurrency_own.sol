// SDPX-License-Identifier: GPL-3.0

pragma solidity 0.8.10;

contract Coin {
    address public minter;
    mapping (address => uint) public balances;// 'balances' will receive an 'address' and convert it to 'uint'

    event Sent(address from, address to, uint amount); // an eth app will be listening for this call

    constructor() {
        minter = msg.sender; // address of the person creating the contract
    }

    // send x newly coins to someone
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;
    }

    error Insufficient_balance(uint requested, uint available);

    function send(address receiver, uint amount) public {
        if (amount > balances[msg.sender])
            revert Insufficient_balance({
                requested: amount,
                available: balances[msg.sender]
            });
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}