// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage {
    uint256 public favouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }


    function retrieve() public view returns (uint) {
        return favouriteNumber;
    }

    function set(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function get() public view returns (uint) {
        return favouriteNumber;
    }

    // uint256[] public person;

    struct person {
        uint256 favouriteNumber;
        string name;
    }

    person[] public listofPeople;

    //calldata, memory, storage  
    //calldata is a temporary varibles that cannot be modify
    //memory is temporary varibles that can be modify
    //Storage is a permanent variable that can be modify

    function addperson (string memory _name, uint256 _favouriteNumber) public {
        listofPeople.push(person(_favouriteNumber, _name));
    }


}



// Kindly set a value to expose it to public to other contract to acess it

contract SmartContract {
    uint public dataRoom;

    function set (uint256 x) public {
        dataRoom = x;
    }

    function get () public view returns (uint) {
        return dataRoom;
    }
}