/* global assert */

function isException(error) {
    let strError = error.toString();
    return strError.includes('invalid opcode')  
         ||strError.includes('invalid JUMP')  
         ||strError.includes('invalid address')  
        //  ||strError.includes('Invalid number')
           ;
}

function ensureException(error) {
    assert(isException(error), error.toString());
}

module.exports = {
    zeroAddress: '0x0000000000000000000000000000000000000000',
    isException: isException,
    ensureException: ensureException,
    contractAdr: '0x5e72914535f202659083db3a02c984188fa26e9f'
};
