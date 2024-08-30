//SPDX-Licence-Identifier: MIT

pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";
import {DeployMoodNft} from "../script/DeployMoodNft.sol";

contract DeployMoodNftTest is Test {
    DeployMoodNft deployer;
    
    
    function setUp() public {
        deployer = new DeployMoodNft();
    }

    function testConvertSvgToUri() public {
        
    }
}
