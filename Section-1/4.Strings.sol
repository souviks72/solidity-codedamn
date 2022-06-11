// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract String {
    string public s1 = "Yes solidity is fun";
    function returnStateVariable()public view returns(string memory){
        return s1;
    }

    function returnLocalVariable()public view returns(string memory){
        string memory s2 = "Yes solidity is exciting";
        return s2;
    }
}