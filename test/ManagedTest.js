let Managed = artifacts.require('Managed.sol');
const utils = require('./helpers/Utils'); 
let manager;
let newManager;
let contractObject;

contract('Managed', function(accounts) {
    beforeEach( async () => {
        contractObject = await Managed.new({from: accounts[0]});
    });

    it("Test constructor", async () => {
        manager = await contractObject.manager.call()
        assert.equal(manager, accounts[0]);
    });

    it("transferManagement, new manager should be account[1]", async () => {
        await contractObject.transferManagement(accounts[1]);
        newManager = await contractObject.newManager.call();
        assert.equal(newManager, accounts[1]);
        await contractObject.acceptManagement({from:accounts[1]});
        newManager = await contractObject.newManager.call();
        manager = await contractObject.manager.call();
        assert.equal(newManager,0x0);
        assert.equal(manager,accounts[1]);
    });

    it("transferManagement, msg.sender is not controller, should throw.", async () => {
        try {
            await contractObject.transferManagement(accounts[1],{from: accounts[1]});
            assert(false, "didn't throw.")
        } catch (error) {
            return utils.ensureException(error);
        }
        newManager = await contractObject.newManager.call();
        assert.equal(newManager, 0x0);
    });

    it("acceptManagement, msg.sender is not new manager.should throw.", async () => {
        contractObject.transferManagement(accounts[1]);
        try {
            await contractObject.acceptManagement({from:accounts[8]});
            assert(false, "didn't throw.")
        } catch (error) {
            return utils.ensureException(error);
        }
        manager = await contractObject.manager.call();
        assert.equal(manager, accounts[0]);
        newManager = await contractObject.newManager.call();
        assert.equal(newManager,accounts[1]);
    });
    
})
