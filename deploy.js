const HDWalletProvider = require("@truffle/hdwallet-provider");
const Web3 = require("web3");
require('dotenv').config()

const { interface, bytecode } = require("./compile");
const { WALLET_MNM, WALLET_PROVIDER_URL } = process.env;
const provider = new HDWalletProvider(WALLET_MNM, WALLET_PROVIDER_URL);

const web3 = new Web3(provider);

const deploy = async () => {
    const accounts = await web3.eth.getAccounts();
    console.log("Attempting to deploy from account ", accounts[0]);

    // Below lines will take few seconds to deploy
    const result = await new web3.eth.Contract(JSON.parse(interface))
        .deploy({ data: bytecode })
        .send({ from: accounts[0], gas: "1000000" });

    console.log("Contract ABI ", interface);
    console.log("Contract deployed to ", result.options.address, " This is our Contract Address");
    provider.engine.stop();
}

deploy();