// SPDX-Licence-Identifier: MIT

pragma solidity ^0.8.19;

import {MoodNft} from "../src/MoodNft.sol";
import {Script} from "forge-std/Script.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";

contract DeployMoodNft is Script {
    MoodNft moodNft;

    function run() external returns (MoodNft) {
        // vm.startBroadcast();
        // moodNft = new MoodNft(Base64.encode("img/sad.svg"), Base64.encode("img/happy.svg"));
        // vm.stopBroadcast();
        // return moodNft;
    }

    function svgToImageURI(string memory svg) public pure returns (string memory) {
        string memory _baseURL = "data:image/svg+xml;base64,";
        string memory svgBase64Encoded = Base64.encode(bytes(string(abi.encodePacked(svg))));

        return string(abi.encodePacked(_baseURL, svgBase64Encoded));
    }
}
