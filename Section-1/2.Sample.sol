//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;//range of compiler versions

//everything is inside a contract
contract demo{
    int number;
    constructor(){
        number = 5;
    }

    //need to mention access modifier(public view) and return type
    function getter() public view returns(int){
        return number;
    }

    function increment() public {
        number++;
    }
}