const HelloWorld = artifacts.require("Flying") ;

contract("Flying" , () => {
	it("Hello World Testing" , async () => {
	const Flying = await Flying.deployed() ;
	await Flying.setUserInfo("v1","v2") ;
	const result = await Flying.getUserInfo() ;
	});
});
