let Managed = artifacts.require('Managed.sol');
const utils = require('./helpers/Utils'); 
let manager;
let newManager;

contract('Managed', function(accounts) {
    beforeEach( async () => {
        // let contract = await Managed.new({from: accounts[0]});
    });

    it("Test constructor", async () => {
        let contract = await Managed.new({from: accounts[0]});
        manager = await contract.manager.call()
        assert.equal(manager, accounts[0]);
    });

    it("transferManagement, new manager should be account[1]", async () => {
        let contract = await Managed.new();
        contract.transferManagement(accounts[1]);
        newManager = await contract.newManager.call();
        assert.equal(newManager, accounts[1]);

        contract.acceptManagement({from:accounts[1]});
        newManager = await contract.newManager.call();
        manager = await contract.manager.call();
        assert.equal(newManager,0x0);
        assert.equal(manager,accounts[1]);
    });

    it("transferManagement, msg.sender is not controller, should throw.", async () => {
        let contract = await Managed.new();
        try {
            await contract.transferManagement(accounts[1],{from: accounts[1]});
            assert(false, "didn't throw.")
        } catch (error) {
            return utils.ensureException(error);
        }
        newManager = await contract.newManager.call();
        assert.equal(newManager, 0x0);
    });

    it("acceptManagement, msg.sender is not new manager.should throw.", async () => {
        let contract = await Managed.new();
        contract.transferManagement(accounts[1]);
        try {
            contract.acceptManagement({from:accounts[8]});
            assert(false, "didn't throw.")
        } catch (error) {
            return utils.ensureException(error);
        }
        
        manager = await contract.manager.call();
        assert.equal(manager, accounts[0]);
        newManager = await contract.newManager.call();
        assert.equal(newManager,accounts[1]);
    });
    
})
