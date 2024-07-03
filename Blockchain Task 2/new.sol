// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Counter{
    uint count=0;
    event Increment(uint value);
    event Decrement(uint value);
    function getCount() view public returns(uint){
        return count;
    }
    function increment() public {
        count = count + 1;
        emit Increment(count);
    }
    function degrement() public {
        count=count-1;
        emit Decrement(count);
    }
}