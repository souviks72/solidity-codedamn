// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

//structs can be defined outside contracts
struct student{
    uint roll;
    string name;
}

contract demo{
    mapping(uint=>student) public data;

    mapping(uint=>string) public primaryDataTypeMap;

    function letsMap(uint class,uint _roll, string memory _name) public{
        data[class] = student(_roll,_name);

        primaryDataTypeMap[100] = "Century";
    }
}