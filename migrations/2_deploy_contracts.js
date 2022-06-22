const NetraToken = artifacts.require("./NetraToken.sol");

module.exports = function (deployer) {
  deployer.deploy(NetraToken,100000);
};
