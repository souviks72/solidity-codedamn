//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;

contract Ecommerce{

    struct Product{
        string title;
        string desc;
        address payable seller;
        uint productId;
        uint price;
        address buyer;
        bool delivered;
    }

    uint counter = 1;
    Product[] public products;
    address payable manager;

    bool destroyed=false;
    //to make sure no one calls the contract after it's destroyed
    modifier isNotDestroyed{
        require(!destroyed,"Contract does not exist");
        _;
    }

    event registered(string title, uint productId, address seller);
    event bought(uint productId, address buyer);
    event delivered(uint productId);

    constructor(){
        manager=payable(msg.sender);
    }

    function registerProduct(string memory _title, string memory _desc, uint _price) public isNotDestroyed{
        require(_price > 0);
        Product memory product;

        product.title = _title;
        product.desc = _desc;
        product.price = _price * 10**18;//convert to gwei
        product.seller = payable(msg.sender);
        product.productId = counter;

        products.push(product);
        counter++;
        emit registered(_title, product.productId, msg.sender);
    }

    function buy(uint _productId) payable public isNotDestroyed{
        require(products[_productId-1].price==msg.value,"Pay exact price plx");
        require(products[_productId-1].seller!=msg.sender,"Seller cannot be buyer");
        products[_productId-1].buyer=msg.sender;
        emit bought(_productId, msg.sender);
    }

    function delivery(uint _productId) public isNotDestroyed{
        require(products[_productId-1].buyer==msg.sender,"Only buyer can confirm");
        products[_productId-1].delivered=true;
        products[_productId-1].seller.transfer(products[_productId-1].price);
        emit delivered(_productId);
    }

    //to destroy the smart contract, soidity provides a destry() function
    function destroyContract() public isNotDestroyed{
        require(msg.sender==manager, "Only manager can call tihs function");
        destroyed=true;//to make sure no one calls the contract after it's destroyed
        selfdestruct(manager);//upon self destruction all ETH in the SC will be sent to manager account
        //because manager creates this contract(see constructor)
    }

    //when soeone sends ETH to this contract after it is destroyed
    fallback() payable external{
        payable(msg.sender).transfer(msg.value);
    }
}