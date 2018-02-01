const Owned = artifacts.require('Owned.sol')
const utils = require('./helpers/Utils');
let contractObject;

contract('Owned', async (accounts) =>{
    beforeEach( async ()=>{
        contractObject = await Owned.new();
    })
    it('Verify vars after construction', async function(){
        let owner = await contractObject.owner.call();
        assert.equal(owner, accounts[0]);
    })

    it('Verify newOwner after transferOwnership', async ()=>{
        await contractObject.transferOwnership(accounts[2]);
        let newOwner = await contractObject.newOwner.call();
        assert.equal(newOwner, accounts[2]);
        await contractObject.acceptOwnership({from:accounts[2]});
        let owner = await contractObject.owner.call();
        newOwner = await contractObject.newOwner.call();
        assert.equal(newOwner, utils.zeroAddress);
        assert.equal(owner, accounts[2]);
    })

    it('Should throw when transferOwnership if it is not the owner doing it', async ()=>{
        try {
            await contractObject.transferOwnership(accounts[2], { from: accounts[1] });
            assert(false, 'did not throw');
        } catch (error) {
            return utils.ensureException(error);
        }
        let newOwner = await contractObject.newOwner.call();
        assert.equal(newOwner, utils.zeroAddress);  
    })

    it('should throw when acceptOwnership if it is not the new owner doing it', async ()=>{
        await contractObject.transferOwnership(accounts[2])
        try {
            await contractObject.acceptOwnership({from:accounts[1]})
            assert(false, 'did not throw')
        } catch (error) {
            return utils.ensureException(error)
        }
        let newOwner = await contractObject.newOwner.call()
        let owner = await contractObject.owner.call()
        assert.equal(newOwner,accounts[2]);
        assert.equal(owner, accounts[0])
    })
})