const DappToken = artifacts.require("./DappToken.sol");

module.exports = async function(deployer) {
    const name = "Santorini Token";
    const symbol = "Santo";
    const decimals = 18;
    await deployer.deploy(DappToken, name, symbol, decimals);
};