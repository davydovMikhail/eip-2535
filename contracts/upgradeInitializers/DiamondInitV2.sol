// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import {LibDiamond} from "../libraries/LibDiamond.sol";
import { IFirst } from "../interfaces/IFirst.sol";



contract DiamondInitV2 {    

    
    function init() external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();
        ds.supportedInterfaces[type(IFirst).interfaceId] = true;
    }
}