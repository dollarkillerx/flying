# flying

Open source encrypted communication software based on Polygon chain

#### The account system is implemented using smart contracts to ensure its security

``` 
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Flying {
    address owner;

    struct UserInfo{
        string privateKey;
        string publicKey;
    }

    mapping (address => UserInfo) userInfoMapping;
    
    constructor() {
        owner = msg.sender;
    }

    function setUserInfo(string memory privateKey,string memory publicKey) public {
        userInfoMapping[msg.sender] = UserInfo(privateKey,publicKey);
    }

    function getUserInfo(address addr) public view returns(UserInfo memory) {
        return userInfoMapping[addr];
    }

}
```