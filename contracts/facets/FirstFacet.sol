// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { LibDiamondV2 } from "../libraries/LibDiamondV2.sol";
import { IFirst } from "../interfaces/IFirst.sol";

contract FirstFacet is IFirst {
    function changeValue1(uint256 _value) external override {
        LibDiamondV2.setValue1First(_value);
    }

    function changeValue2(uint256 _value) external override {
        LibDiamondV2.setValue2First(_value);
    }

    function getValue1() view external override returns(uint256) {
        LibDiamondV2.DiamondStorage storage ds = LibDiamondV2.diamondStorage();
        return ds.value1First;
    }

    function getValue2() view external override returns(uint256) {
        LibDiamondV2.DiamondStorage storage ds = LibDiamondV2.diamondStorage();
        return ds.value2First;
    }
}