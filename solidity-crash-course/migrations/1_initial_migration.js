var Migrations = artifacts.require("Migrations");
const Coin = artifacts.require("Coin");

module.exports = function(deployer) {
  // Deploy the Migrations contract as our only task
  deployer.deploy(Migrations);
  deployer.deploy(Coin);
};