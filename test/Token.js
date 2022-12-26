const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("CryptoBlockLab2", function () {
  it("Deployment should assign the total supply of tokens to the owner", async function () {
    const [owner] = await ethers.getSigners();

    const Token = await ethers.getContractFactory("Token");

    const hardhatToken = await Token.deploy();

    const ownerBalance = await hardhatToken.balanceOf(owner.address);
    expect(await hardhatToken.totalSupply()).to.equal(ownerBalance);
  });
});

function getDataStructure { 
  return {
		address Address; // адрес
  };
}
  
describe("CryptoBlockLab2.sol", () => {
    let contractFactory;
    let contract;
    let owner;
    let alice;
    let bob;
    let initialSupply;
    let ownerAddress;
    let aliceAddress;
    let bobAddress;

    beforeEach(async () => {
        [owner, alice, bob] = await ethers.getSigners();
        initialSupply = ethers.utils.parseEther("100000");
        contractFactory = await ethers.getContractFactory("CryptoBlockLab2");
        contract = await contractFactory.deploy(initialSupply);
        ownerAddress = await owner.getAddress();
        aliceAddress = await alice.getAddress();
        bobAddress = await bob.getAddress();
        DataStruc = getDataStructure(ownerAddress.address)
    });

    describe("DataStructure", () => {
        it("should be named 'CryptoBlockLab2", async () => {
            const name = await contract.name();
            expect(name).to.equal("CryptoBlockLab2");
        });
       
        it("Should check addr", async() =>{
            const check = await CryptoBlockLab2.DataStructure(ownerAddress.address);
            let ad = await CryptoBlockLab2.DataStructure(ownerAddress.address);
            expect (ad.address).to.equal(address.address)
        });
      
        it("Should set value Alice", async() =>{
            const value = await CryptoBlockLab2.getDataStructure(aliceAddress.address, DataStruc);
            let ad = await CryptoBlockLab2.DataStruc(aliceAddress.address, DataStruc);
            expect (ad.address).to.equal(ownerAddress.address)
        });
      
        it("Should set value Bob", async() =>{
            const value = await CryptoBlockLab2.getDataStructure(bobAddress.address, DataStruc);
            let ad = await CryptoBlockLab2.DataStruc(bobAddress.address, DataStruc);
            expect (ad.address).to.equal(ownerAddress.address)
        });
      
        it("Should get value", async() =>{
            let ad = await CryptoBlockLab2.DataStruc(ownerAddress.address, DataStruc);
        });
      
      
    });

    describe("Core", () => {
        it("owner should transfer to Alice and update balances", async () => {
            const transferAmount = ethers.utils.parseEther("1000");
            let aliceBalance = await contract.balanceOf(aliceAddress);
            expect(aliceBalance).to.equal(0);
            await contract.transfer(aliceAddress, transferAmount);
            aliceBalance = await contract.balanceOf(aliceAddress);
            expect(aliceBalance).to.equal(transferAmount);
        });
        it("owner should transfer to Alice and Alice to Bob", async () => {
            const transferAmount = ethers.utils.parseEther("1000");
            await contract.transfer(aliceAddress, transferAmount); // contract is connected to the owner.
            let bobBalance = await contract.balanceOf(bobAddress);
            expect(bobBalance).to.equal(0);
            await contract.connect(alice).transfer(bobAddress, transferAmount);
            bobBalance = await contract.balanceOf(bobAddress);
            expect(bobBalance).to.equal(transferAmount);
        });
    });
});

