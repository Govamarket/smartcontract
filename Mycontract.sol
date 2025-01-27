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
}

