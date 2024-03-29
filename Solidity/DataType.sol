// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract DataType {

    uint256 favoriteNumber; // by default value initialized to 0
    bool favoriteBool = false;
    string favoriteString = "String";
    int256 favoriteInt = -2;
    address favoriteAddress = 0x5e028474244810f4e190e7D67460079b825D4cf7;
    bytes32 favoriteBytes = "dog";

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}



