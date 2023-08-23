//SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    function store(uint256 _favouriteNumber) public override {
        FavouriteNumber = _favouriteNumber + 5;
    }
}