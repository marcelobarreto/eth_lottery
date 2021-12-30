module.exports = {
  projectID: process.env.PROJECT_ID,
  projectSecret: process.env.PROJECT_SECRET,
  networks: {
    mainnet: {
      https: 'https://rinkeby.infura.io/v3/46305fab350345ac956b014776eeeab5',
      ws: 'wss://rinkeby.infura.io/ws/v3/46305fab350345ac956b014776eeeab5'
    },
    rinkeby: {
      https: 'https://rinkeby.infura.io/v3/46305fab350345ac956b014776eeeab5',
      ws: 'wss://rinkeby.infura.io/ws/v3/46305fab350345ac956b014776eeeab5'
    },
    kovan: {
      https: 'https://kovan.infura.io/v3/46305fab350345ac956b014776eeeab5',
      ws: 'wss://kovan.infura.io/ws/v3/46305fab350345ac956b014776eeeab5'
    }
  },
};
