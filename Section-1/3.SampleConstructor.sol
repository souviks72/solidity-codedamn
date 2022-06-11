//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;//range of compiler versions

contract SampleConstructor{
    int public age;
    constructor(int newAge){
        age = newAge;
    }

    function setAge(int newAge) public{
        age = newAge;
    }

    function getAge()public view returns(int){
        return age;
    }
}
//We can create only one constructor in a contract
//The constructor is called by the compiler
//Constructors are optional, if we dnt create one, the compiler will create a default one