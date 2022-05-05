var Migrations = artifacts.require("Migrations");
const CryptoToken = artifacts.require("CryptoToken");

module.exports = function(deployer) {
  // Deploy the Migrations contract as our only task
  deployer.deploy(Migrations);
  deployer.deploy(CryptoToken);
};