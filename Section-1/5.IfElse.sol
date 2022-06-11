// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract demo{
    function check(int num)public pure returns(string memory){
        string memory str;

        if(num>0){
            str="num > 0";
        }else if(num==0){
            str="num==0";
        }else{
            str="num>0";
        }
    }
}