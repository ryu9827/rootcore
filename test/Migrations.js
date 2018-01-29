const Migrations = artifacts.require('Migrations');
const utils = require('./helpers/Utils');

contract('Migrations', function(accounts) {

    let owner;
    let last_completed_migration;
    it('Verify the owner after construction', async function(){
        let contract = await Migrations.new(); 
        owner = await contract.owner.call();
        assert.equal(owner, accounts[0]);
    })

    it('Verify the last completed migration after setComplete', async function(){
        let contract = await Migrations.new();
        await contract.setCompleted(5);
        let last_completed_migration = await contract.last_completed_migration.call();
        // await contract.upgrade(utils.contractAdr);
        assert.equal(last_completed_migration, 5);
    })

})