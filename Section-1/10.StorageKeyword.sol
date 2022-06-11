// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract demo{
    string[] public vehicles = ["car","bus","bike"];

    //Whenever a new array is created IN MEMORY from an existing state variable array
    //it is a new array with no connection to the original. That is why "view" is used
    //and that is why vehivls won't be modified
    function mem() public view{
        string[] memory v1 = vehicles;
        v1[0] = "ship";
    }

    //"storage" is the same place where state variables are stoed. So v1 is just
    // a SHALLOW COPY and so vehicles will be modified
    function sto() public{
        string[] storage v1 = vehicles;
        v1[0] = "ship";
    }
}