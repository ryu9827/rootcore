const SmartToken = artifacts.require('SmartToken.sol');
const utils = require('./helpers/Utils');
let contractObj;

contract('SmartToken', async (accounts) =>{
    beforeEach( async ()=>{
        contractObj = await SmartToken.new('name', 'symbol', 5);
    })

    it('verify variables after construction', async ()=>{
        let nameStr = await contractObj.name.call();
        let symbolStr = await contractObj.symbol.call();
        let decimalsNum = await contractObj.decimals.call();
        assert.equal(nameStr, 'name');
        assert.equal(symbolStr, 'symbol');
        assert.equal(decimalsNum, 5);
    })

    it('should throw if create the contract with no name', async ()=>{
        try {
            contractObj = await SmartToken.new('', 'symbol', 5);
            assert(false, 'did not throw')
        } catch (error) {
            return utils.ensureException(error);
        }
    })

    it('verify transfersEnabled after disableTransfer function', async ()=>{
        let transfersEnabled = await contractObj.transfersEnabled.call();
        assert.equal(transfersEnabled, true);
        await contractObj.disableTransfers(false);
        transfersEnabled = await contractObj.transfersEnabled.call();
        try {
            await contractObj.disableTransfers(true, { from: accounts[1] });
            assert(true, 'did not throw')
        } catch (error) {
            return utils.ensureException(error);
        }
    })

    it('verify target accounts balance after issuance', async ()=>{
        contractObj.issue(accounts[1], 100);
        contractObj.issue(accounts[2], 100);
        let balance = await contractObj.balanceOf.call(accounts[1]);
        assert.equal(balance, 100);
        let totalSupply = await contractObj.totalSupply.call();
        assert.equal(totalSupply, 200);
    })

    it('verify only owner can issue tokens', async ()=>{
        try {
            await contractObj.issue(accounts[1], 100, { from: accounts[8] });
            assert(false, 'did not throw');
        } catch (error) {
            return utils.ensureException(error);
        }
    })

    it('verify not allow to issue token to zero address', async ()=>{
        try {
            await contractObj.issue(utils.zeroAddress, 100);
            assert(false, 'did not throw')
        } catch (error) {
            return utils.ensureException(error);
        }
    })

    it('verify not allow to issue token to current contract address', async ()=>{
        try {
            await contractObj.issue(contractObj.address, 100);
            assert(false, 'did not throw')
        } catch (error) {
            return utils.ensureException(error);
        }
    })

    it('verify variables after destroy', async ()=>{
        await contractObj.issue(accounts[1], 100);
        let balance = await contractObj.balanceOf.call(accounts[1]);
        assert.equal(balance, 100);
        await contractObj.destroy(accounts[1],50); //owner destroy tokens
        await contractObj.destroy(accounts[1],25, {from: accounts[1]}); //msg.sender destroy tokens
        balance = await contractObj.balanceOf.call(accounts[1]);
        let totalSupply = await contractObj.totalSupply.call();
        assert.equal(totalSupply, 25);
        assert.equal(balance, 25);
    })
    
    it('verify only msg.sender and owner can destroy tokens',async ()=>{
        await contractObj.issue(accounts[1], 100);
        try {
            await contractObj.destroy(accounts[1], 50, {from: accounts[2]});
            assert(false, 'did not throw')
        } catch (error) {
            return utils.ensureException(error);
        }
        let balance = await contractObj.balanceOf.call(accounts[1]);
        let totalSupply = await contractObj.totalSupply.call();
        assert.equal(balance,100);
        assert.equal(totalSupply,100);
    })

    // it.only('verify o')
})
