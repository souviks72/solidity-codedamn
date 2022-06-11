// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract demo {
    uint[3] public arr = [4,6,1];

    function insertAtIndex(uint indx, uint el) public{
        arr[indx] = el;
    }

    function len() public view returns(uint){
        return arr.length;
    }
}