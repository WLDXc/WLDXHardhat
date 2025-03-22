const { ethers } = require("hardhat");

async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contracts with the account:", deployer.address);

    const WorldX = await ethers.getContractFactory("WorldX");
    const worldx = await WorldX.deploy(deployer.address); // <-- Masukkan owner address

    console.log("WorldX deployed to:", worldx.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
