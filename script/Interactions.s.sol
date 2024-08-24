// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "foundry-devops/src/DevOpsTools.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract Interactions is Script {
    string public constant PUG = "https://d7sk5v06qfk79.cloudfront.net/jrnyers-metadata/762";

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("BasicNft", block.chainid);
        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAddress) internal {
        vm.startBroadcast();
        BasicNft(contractAddress).mintNft(PUG);
        vm.stopBroadcast();
    }
}
