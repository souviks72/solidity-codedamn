// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

interface Parent{
    function setter(string memory _str) external;
}

contract Child is Parent{
    function setter(string memory _str) public override{}
}

//incase Child contract does not implement the function
abstract contract Child2 is Parent{}