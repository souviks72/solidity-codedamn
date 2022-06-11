// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract demo{
    //fixed sized
    bytes1 public b1;
    bytes2 public b2;
    bytes3 public b3;

    //dynamic sized
    bytes public str = "abc";

    function setterFixedSize() public{
        b1 = "a";
        b2 = "ab";
        b3 = "abc";
    }

    //only dynamic sized array
    function pushElement() public {
        str.push("d");
    }
    //only dynamic sized array --> returns bytes1 as single element size is 1 byte
    function getSingleElement(uint indx) public view returns(bytes1){
        return str[indx];
    }
    //only dynamic sized array
    function getLength()public view returns(uint){
        return str.length;
    }
}