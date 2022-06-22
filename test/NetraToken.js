const { assert } = require("chai");

var NetraToken = artifacts.require("./NetraToken.sol");

contract('NetraToken',function(accounts){
    var tokenInstance;

    it("initializes the contract with the correct values",function(){
        return NetraToken.deployed().then(function(instance){
            tokenInstance =  instance;
            return tokenInstance.name();
        }).then(function(name){
            assert.equal(name,'NetraToken','it has the correct name');
            return tokenInstance.symbol();
        }).then(function(symbol){
            assert.equal(symbol,'NET','it has the correct symbol');
            return tokenInstance.standard();
        }).then(function(standard){
            assert.equal(standard,'Netra Token v1.0','it has the correct standard');
        });
    })

 
    it('sets the total supply upon deploymennt', function(){
        return NetraToken.deployed().then(function(instance){
            tokenInstance = instance;
            return tokenInstance.totalSupplyRewardToken();
        }).then(function(totalSupply){
           assert.equal(totalSupply.toNumber(),100000,'sets the total supply to 100000')
            return tokenInstance.rewardBalanceOfAccount(accounts[0]);
        }).then(function(adminBalance){
            assert.equal(adminBalance.toNumber(),100000,'it allocates the initial supply to the admin account');
        });
    });
})  