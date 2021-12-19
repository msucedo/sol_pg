// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.10;  // version to use

// contract generator
contract Hello_World {
    string hello_world = "Hello World";

    // 'public' so remix sees the function 
    // 'view' because this is a read-only functionality, nn spend gas
    // 'memory' because we are returning from within the memory and not storage(uses more gas)
    // blue btn: read-only
    function get_Hello_World() public view returns (string memory) {
        return hello_world;
    }

    // pass param, change state, orange btn: read-only + edit
    function set_hello_world(string memory new_hello) public {
        hello_world = new_hello;
    }

    // declare our contract can receive eth
    receive() external payable{}

    function send_money(address payable my_target) payable public {
        require(msg.value <= address(this).balance);
        my_target.transfer(msg.value);
    }
}

