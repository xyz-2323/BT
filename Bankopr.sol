// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Bankopr{

    uint private bal=3000;

    function deposit(uint x) public {
        bal+=x;
    }

    function withdraw(uint x)public {
    require(bal>x , "Insufficient balance");
    bal-=x;
    }

    function showbal() public view returns(uint) {
        return bal;
    }
}
