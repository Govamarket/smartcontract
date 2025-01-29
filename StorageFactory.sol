// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {SimpleStorage} from "./SimpleStorage.sol";
//deploying a contract from a contract

contract StorageFactory {
    SimpleStorage public simpleStorage;

    function createSimpleStorageContract () public {
        
        simpleStorage = new SimpleStorage();
    }
}