// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract CryptoToken {
    mapping(address => uint) public balances;
    address public minter;

    constructor(){
        minter = msg.sender;
    }

    event Sent(address from, address to, uint amount);
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;
    }

    function send(address receiver, uint amount) public {
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}
