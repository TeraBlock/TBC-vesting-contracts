// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12;

// TeraBlock $TBC Partnerships Tokens Vesting
// 12 months cliff | 18 months vesting
// Learn More - https://github.com/TeraBlock/TBC-vesting-contracts

import "./TokenVestingBase.sol";

contract PartnershipsVesting is TokenMultiTimeLock {
    IBEP20 internal TOKEN_ = IBEP20(0x00eaf7d8395cce52daef138d39a1cefa51b97c15ae);
    address internal BENEFICIARY_ = 0x74a1E0CE001A9eeF26a9818bD10ca569F8b141F7;
    uint256[] internal RELEASETIMESTAMPS_ = [1654041600,1656633600,1659312000,1661990400,1664582400,1667260800,1669852800,1672531200,1675209600,1677628800,1680307200,1682899200,1685577600,1688169600,1690848000,1693526400,1696118400,1698796800];
    uint256[] internal RELEASEAMOUNTS_ = [444444e18,444444e18,444444e18,444444e18,444444e18,444444e18,444444e18,444444e18,444444e18,444444e18,444444e18,444444e18,444444e18,444444e18,444444e18,444444e18,444444e18,444444e18];

    constructor () public  TokenMultiTimeLock (
        TOKEN_,
        BENEFICIARY_,
        RELEASETIMESTAMPS_,
        RELEASEAMOUNTS_
    )  { }
}
