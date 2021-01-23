/// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.12 <0.8.0;
pragma experimental ABIEncoderV2;

interface SushiBar {
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
    event Transfer(address indexed from, address indexed to, uint256 value);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function balanceOf(address account) external view returns (uint256);

    function decimals() external view returns (uint8);

    function decreaseAllowance(address spender, uint256 subtractedValue)
        external
        returns (bool);

    function enter(uint256 _amount) external;

    function increaseAllowance(address spender, uint256 addedValue)
        external
        returns (bool);

    function leave(uint256 _share) external;

    function name() external view returns (string memory);

    function sushi() external view returns (address);

    function symbol() external view returns (string memory);

    function totalSupply() external view returns (uint256);

    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);
}
