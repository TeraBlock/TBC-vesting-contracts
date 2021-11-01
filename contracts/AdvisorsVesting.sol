// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12;

// TeraBlock $TBC Advisors Tokens Vesting
// 12 months cliff | 12 months vesting
// Learn More - https://github.com/TeraBlock/TBC-vesting-contracts

import "./utils/TokenVestingBase.sol";

contract AdvisorsVesting  is TokenVestingBase {
    IERC20 internal TOKEN_ = IERC20(0x9798dF2f5d213a872c787bD03b2b91F54D0D04A1);
    address internal constant BENEFICIARY_ = 0x45cFA35E6353A3cc6e9bF29f879f9724d2F16EB7;
    uint256[] internal RELEASETIMESTAMPS_ = [1654041600,1656633600,1659312000,1661990400,1664582400,1667260800,1669852800,1672531200,1675209600,1677628800,1680307200,1682899200];
    uint256[] internal RELEASEAMOUNTS_ = [666667e18,666667e18,666667e18,666667e18,666667e18,666667e18,666667e18,666667e18,666667e18,666667e18,666667e18,666667e18];

    constructor () public  TokenVestingBase (
        TOKEN_,
        BENEFICIARY_,
        RELEASETIMESTAMPS_,
        RELEASEAMOUNTS_
    )  { }
}
