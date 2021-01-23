/// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.12 <0.8.0;
pragma experimental ABIEncoderV2;

interface SushiMaker {
    event LogBridgeSet(address indexed token, address indexed bridge);
    event LogConvert(
        address indexed server,
        address indexed token0,
        address indexed token1,
        uint256 amount0,
        uint256 amount1,
        uint256 amountSUSHI
    );
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    function bar() external view returns (address);

    function bridgeFor(address token) external view returns (address bridge);

    function claimOwnership() external;

    function convert(address token0, address token1) external;

    function convertMultiple(address[] memory token0, address[] memory token1)
        external;

    function factory() external view returns (address);

    function owner() external view returns (address);

    function pendingOwner() external view returns (address);

    function setBridge(address token, address bridge) external;

    function transferOwnership(
        address newOwner,
        bool direct,
        bool renounce
    ) external;
}

