// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 public FavouriteNumber;

    struct People {
        uint256 FavouriteNumber;
        string Name;
    }

    People[] public people;

    mapping(string => uint256) public Name_FavouriteNumber;

    function store(uint256 _favouriteNumber) public virtual{
        FavouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256){
        return FavouriteNumber;
    }

    function addPeople (string memory _name, uint256 _favouriteNumber) public {
        people.push(People(_favouriteNumber, _name));
        Name_FavouriteNumber[_name] = _favouriteNumber;
    }
}