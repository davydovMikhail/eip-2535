// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IFirst {
    function changeValue1(uint256 _value) external;

    function changeValue2(uint256 _value) external;

    function getValue1() view external returns(uint256);

    function getValue2() view external returns(uint256);
}