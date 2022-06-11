// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

abstract contract Parent{
    string public str;

    constructor(){
        str="Hello World";
    }
    function setter(string memory _str) public virtual;
}

contract Child is Parent{
    uint public x;
    //implement abstract contract's incomplete function with the override keyword
    function setter(string memory _str) public override{
        str=_str;
    }
}