// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract demo{
    string public str;

    event register(address manager, string s);
    //event named register emitting two data points--> address of manager & a string value
    function setter(string memory _str) public{
        str = _str;
        emit register(msg.sender,str);
        //msg.sender for manager address and str for string s
    }
}