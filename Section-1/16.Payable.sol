// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract demo{
    //we can also have payable addresses
    address payable user=payable("some_address");

    //the payable keyword allows a function to pay ETH to a SMART CONTRACT
    function payEther() public payable{}

    function check_balance() public view returns(uint){
        return address(this).balance;
    }

    //function to pay to a payable address
    function payEtherToAccount() public{
        user.transfer(10 ether);//this 10ether will be deducted from contract balance
    }
    //Solidity will execute the fallback() when someone is trying to call a function
    //in our contract that doesn't eist or is trying to send money directly to our
    //contract address without using the payable function(in which case ETH will be lost, none gets it)
    //Solidity is smart enough to understand that something has gone wrong and will execute allback()
    //This fallback() simply returns ETH sent by user back to him, but we can put any logic here
    fallback() external payable{
        payable(msg.sender).transfer(msg.value);
    }
}