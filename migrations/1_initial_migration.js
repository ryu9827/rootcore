const Migrations = artifacts.require('Migrations')

console.log("Мигрируем...");

module.exports = function(deployer) {
    deployer.deploy(Migrations)
}
