// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract tech4dev {
    address payable public owner;

    constructor(){
        owner = payable(msg.sender); 
    }
//create fallback function
    receive() external payable{}

    //create get function
function getBalance()public view returns(uint){
    return address(this).balance;
}

function withdraw(uint _amount)public {
require(msg.sender == owner, "OLE!!!");
//method to transfer(address of the owner stored in the constructor
payable(msg.sender).transfer(_amount);
}

//function that allows anybody can withraw
function anybody(uint _amount, address payable _to) public{
    _to.transfer(_amount);

    }
}
// create a contract that can receive ether with the get and withdraw function.
contract classwork{
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }
        //fallback function
        receive() external payable{}

        //create get function
        function gettheBalance() public view returns(uint){
            return address(this).balance;
        }
        //create withdraw function
        function withdrawcash(uint _amount)public{
            require(msg.sender == owner, "OLE!");
            //METHOD OF TRANSFER
            payable(msg.sender).transfer(_amount);
        }
    }