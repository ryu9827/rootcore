module.exports = {
    networks: {
        development: {
    	    host: "localhost",
        	port: 8545,
	        network_id: "*", // Match any network id
        	gasPrice: 20e9
      	}
    },
  mocha: {
    reporter: 'eth-gas-reporter',
    reporterOptions : {
      currency: 'NZD',
      gasPrice: 21
    }
  }
};
