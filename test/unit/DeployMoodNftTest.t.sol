//SPDX-Licence-Identifier: MIT

pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";
import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";

contract DeployMoodNftTest is Test {
    DeployMoodNft deployer;

    function setUp() public {
        deployer = new DeployMoodNft();
    }

    function testConvertSvgToUri() public view {
        string memory expectedUri =
            "data:image/svg+xml;base64,PHN2ZyB4bG1ucz0iaHR0cHM6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNTAwIiBoZWlnaHQ9IjUwMCI+PHRleHQgeD0iMCIgeT0iMTUiIGZpbGw9ImdyZWVuIj4gSGVsbG8hIFNob3RhPzwvdGV4dD48L3N2Zz4=";
        string memory svg =
            '<svg xlmns="https://www.w3.org/2000/svg" width="500" height="500"><text x="0" y="15" fill="green"> Hello! Shota?</text></svg>';
        string memory actualUri = deployer.svgToImageURI(svg);
        assert(keccak256(abi.encodePacked(actualUri)) == keccak256(abi.encodePacked(expectedUri)));
    }
}
