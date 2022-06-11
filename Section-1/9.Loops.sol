// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract demo{
    uint[5] public arr=[1,2,3,4,5];
    uint public sum;

    function getTripleSum()public {
        uint i;
        while(i<arr.length){
            sum += arr[i++];
        }

        for(i=0;i<arr.length;i++){
            sum += arr[i];
        }
        
        do{
            sum += arr[i-1];
            i--;
        }while(i>0);
    }
}