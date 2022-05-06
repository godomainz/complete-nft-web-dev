// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
// ^ the uptick arrow defines a range compile version after the non zero
// digit upwards to the next increment of the non zero number

contract CryptoToken {
    // Exercise:
    // 1. Create a var integer called totalSupply and set it to 7
    // 2. totalSupply should not be accessible outside of the smart contract
    // 3. create a var address called sender and set it so that it is publically accessible
    /* uint private totalSupply = 7;
    address public sender; */
    mapping(address => uint) public balances;
    address public minter;

    // constructor special type of dunction that get called immediately upon deployment
    constructor(){
        minter = msg.sender;
    }

    event Sent(address from, address to, uint amount);
    function mint(address receiver, uint amount) public {

    }
}
