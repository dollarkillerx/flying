// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Flying {
    address owner;

    struct UserInfo{
        string privateKey;
        string publicKey;
    }

    // 存储用户基础信息
    mapping (address => UserInfo) userInfoMapping;

    constructor() {
        owner = msg.sender;
    }

    // 设置基础信息
    function setUserInfo(string memory privateKey,string memory publicKey) public {
        userInfoMapping[msg.sender] = UserInfo(privateKey,publicKey);
    }

    // 获取基础信息
    function getUserInfo(address addr) public view returns(UserInfo memory) {
        return userInfoMapping[addr];
    }

}