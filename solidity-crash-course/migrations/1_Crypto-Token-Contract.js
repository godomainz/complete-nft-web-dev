const SimpleStorage = artifacts.require("Coin");

module.exports = function (deployer) {
  deployer.deploy(SimpleStorage);
};