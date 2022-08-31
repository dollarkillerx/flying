// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Flying {
    address owner;

    struct UserInfo{
        string privateKey;
        string publicKey;
        bool disabled;
    }

    // 存储用户基础信息
    mapping (address => UserInfo) userInfoMapping;

    constructor() {
        owner = msg.sender;
    }

    // 设置基础信息
    function setUserInfo(string memory privateKey,string memory publicKey) public {
        UserInfo memory old = userInfoMapping[msg.sender];
        userInfoMapping[msg.sender] = UserInfo(privateKey,publicKey,old.disabled);
    }

    // 获取基础信息
    function getUserInfo(address addr) public view returns(UserInfo memory) {
        return userInfoMapping[addr];
    }

    // 禁用用户
    function disableUser(address addr) public {
        require(msg.sender == owner);

        UserInfo memory old = userInfoMapping[addr];
        userInfoMapping[msg.sender] = UserInfo(old.privateKey,old.publicKey,true);
    }
}
